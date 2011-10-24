## Tim's Emacs Configuration ##

The basic structure of the directories is:

* elpa: is the [Emacs Lisp Package Archive](http://tromey.com/elpa/)
* vendor: includes git submodules for things not available in ELPA
* lisp-personal: are my personal configuration files. Roughly one per mode.
* init.el: loads all my customisations

* * * * *

## Usage ##

Grab a git clone of this repository

    git clone git://github.com/tmcgilchrist/.emacs.d.git


* * * * *

## TODO ##

* enable coffee-script mode with flymake, currently flymake is locking up emacs.
* enable javascript mode inside mumamo-mode so i get syntax highlighting within
  templates.
* customise javascript mode so I get flymake, js-lint and fix the electric
  brackets support.
* add snippets for jasmine tests.
* go through and enable more of my old customisations for other languages.
* enable el-get so I can checkout ELPA packages automatically
* learn all my damn keybindings

* * * * *

## Resources ##
* [Emacs Starter Kit](https://github.com/technomancy/emacs-starter-kit)
* [Emacs Code Browser](https://github.com/emacsmirror/ecb)
* [Markdown-mode](http://jblevins.org/projects/markdown-mode/)
* [Yaml-mode](https://github.com/yoshiki/yaml-mode)
* [Emacs-rails-reloaded](http://github.com/dima-exe/emacs-rails-reloaded)
* [Flymake-ruby](https://github.com/purcell/flymake-ruby)

Things to try:

* [Emacs Rails Reloaded](https://github.com/r0man/emacs-rails-reloaded)
* [el-get for Emacs](https://github.com/dimitri/el-get)
* Git integration with Emacs
* Add modes for erb/html syntax highlighting
* Snippet support using something like yasnippet
* Rinari integration with RVM, currently cannot use rinari-web-server
* Switch to rinari mode when opening a rails project root.
* enable TRAMP mode
* etags support for searching on methods/classes
* enabled Ruby documentation lookup using ri
* enable [distel](https://github.com/massemanet/distel) for Erlang
