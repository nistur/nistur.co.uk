.phony: site site-local run publish
site:
	emacs --script publish.el

site-local:
	CONFIG=local emacs --script publish.el

run: site-local
	mongoose-server -d output

publish: site
	./upload.sh
