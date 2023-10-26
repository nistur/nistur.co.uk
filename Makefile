.phony: site site-local run publish
site:
	rm -rf output
	emacs --script publish.el
	ln -s ../static output/static

site-local:
	rm -rf output
	CONFIG=local emacs --script publish.el
	ln -s ../static output/static

run: site-local
	mongoose-server -d output

publish: site
	./upload.sh
