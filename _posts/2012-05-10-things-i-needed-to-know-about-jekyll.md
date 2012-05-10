---
layout: post
title: Things I needed to know about Jekyll.
---

**tl;dr:** Go read about [template data][jekyll-template] availlable in
jekyll.

While [jekyll](http://jekyllrb.com) is quite cool, what I needed to know
about it was in a few different places.

## Structure

Jekyll uses a specific folder structure, which you need to (more or
less) follow to have it generate your site:

    $ tree .
    ├── _includes                          # for use around your site
    │   ├── footer.html
    │   ├── navigation.html
    │   └── style.html
    ├── index.html                         # you may know this
    ├── kisses.css
    ├── _layouts                           # layouts
    │   ├── default.html
    │   └── post.html
    ├── _posts                             # your posts, using markdown or textile
    │   ├── 2012-05-03-anfangen.md
    │   └── 2012-05-10-things-i-needed-to-know-about-jekyll.md
    └── _site                              # the generated site

If you need to know more than this, read either the author's [original
blogpost about Jekyll][twp-jekyll] or [the wiki][wiki].

## Markup

Each file that begins with a [YAML front matter][] is considered a
liquid template by jekyll. Here's an example from my `_layouts/post.html`:

    <article id="rambling">
        <h1>{{ page.title }}</h1>
        {{ content }}
        <footer class="article-meta">
            <p><a href="/p/me">lu</a> has written this sometime around
            <time date="now">{{ page.date | date: "%h %Y" }}</time>.</p>
        </footer>
    </article>

There are better places to read more about liquid [in
general][lq-intro], some [filters][lq-filters] such as `| date: "%h %Y"`
used above or [jekyll's liquid extensions][jekyll-liquid].

### Template data

I was already familar with templating languages such as liquid or
mustache, but I didn't know which data was availlable in jekyll's
templates.

The ones you need to know are listed [in here][jekyll-template].

So, the site your viewing is [open-source][], as are [many other
sites][sites].

Oh, jekyll is a text-based, static and possibly [extensible][jekyllhub]
site-generator (aka. blogging engine).

[jekyll-template]: https://github.com/mojombo/jekyll/wiki/Template-Data
[twp-jekyll]: http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html
[wiki]: https://github.com/mojombo/jekyll/wiki
[YAML front matter]: https://github.com/mojombo/jekyll/wiki/YAML-Front-Matter
[lq-intro]: http://liquidmarkup.org/
[lq-filters]: https://github.com/shopify/liquid/wiki/liquid-for-designers
[jekyll-liquid]: https://github.com/mojombo/jekyll/wiki/Liquid-Extensions
[open-source]: https://github.com/heyLu/heyLu.github.com
[sites]: https://github.com/mojombo/jekyll/wiki/Sites
[jekyllhub]: https://github.com/mojombo/jekyll
