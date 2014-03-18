default: run

deps:
	bundle install --path .bundle/vendor

run:
	bundle exec jekyll serve --watch

clean:
	rm -rf _site
