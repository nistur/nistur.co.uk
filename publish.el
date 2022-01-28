(require 'package)
(package-initialize)

(require 'weblorg)

(weblorg-site
 :name "Philipp Geyer"
 :base-url "https://nistur.com"
 :theme Default
 :author "Philipp Geyer")

;; landing page
(weblorg-route
 :name "index"
 :input-pattern "pages/intro.org"
 :template "page.html"
 :output "output/index.html"
 :url "/"
 :site (weblorg-site
	:base-url "https://nistur.com"))

;; route for rendering each post
(weblorg-route
 :name "posts"
 :input-pattern "posts/*.org"
 :template "post.html"
 :output "output/posts/{{ slug }}.html"
 :url "/posts/{{ slug }}.html"
 :site (weblorg-site
	:base-url "https://nistur.com"))

;; route for rendering the index page of the blog
(weblorg-route
 :name "blog"
 :input-pattern "posts/*.org"
 :input-aggregate #'weblorg-input-aggregate-all-desc
 :template "blog.html"
 :output "output/blog.html"
 :url "/blog.html"
 :site (weblorg-site
	:base-url "https://nistur.com"))

;; route for rendering each page
(weblorg-route
 :name "pages"
 :input-pattern "pages/*.org"
 :template "page.html"
 :output "output/{{ slug }}.html"
 :url "/{{ slug }}.html"
 :site (weblorg-site
	:base-url "https://nistur.com"))

;; route for rendering the index page of articles
(weblorg-route
 :name "articles"
 :input-pattern "pages/*.org"
 :input-aggregate #'weblorg-input-aggregate-all-desc
 :template "articles.html"
 :output "output/articles.html"
 :url "/articles.html"
 :site (weblorg-site
	:base-url "https://nistur.com"))

;; route for static assets that also copies files to output directory
(weblorg-copy-static
 :output "static/{{ file }}"
 :url "/static/{{ file }}"
 :site (weblorg-site
	:base-url "https://nistur.com"))

(setq debug-on-error t)

(weblorg-export)
