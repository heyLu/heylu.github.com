#!/usr/bin/env ruby

require 'fileutils'

articles = Dir["*.md"].map { |f| { written: File.ctime(f), file: f } }
articles = articles.sort { |a, b| a[:written] <=> b[:written] }.reverse

FileUtils.mkdir_p ".out"
articles.each do |a|
  a[:html] = `pandoc -f markdown -t html5 #{a[:file]}`
  a[:title] = File.read(a[:file]).lines.first.strip
  a[:title] = "# #{a[:title]}" if not a[:title].start_with? '# '
end

hdr = File.read 'header.html'
ftr = File.read 'footer.html'

first_article = <<EOH
<article>
  #{articles.first[:html]}
  <footer class="article-meta">
    This post was written by <a href="me">lu</a> on
      <time datetime="#{articles.first[:written]}">#{articles.first[:written]}</time>
  </footer>
</article>
EOH

other_articles = '<section><h1>Other ramblings of mine...</h1><ul>'
articles[1..-1].each do |a|
  ht = `echo '#{a[:title]}' | pandoc -f markdown -t html5 -`.strip.gsub 'h1', 'h2'
  other_articles += "\n  <li><time>#{a[:written].strftime('%Y-%m-%d')}:</time> <a href='#'>#{ht}</a></li>"
end
other_articles += "\n</ul></section>"
index = hdr + '<section id="rambling">' + first_article + '</section>' +
        '<footer>' + other_articles + '</footer>' + ftr

File.write '.out/index.html', index
