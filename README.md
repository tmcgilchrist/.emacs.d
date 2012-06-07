## Tim's Emacs Configuration ##

The basic structure of the directories is:

* elpa: is the [Emacs Lisp Package Archive](http://tromey.com/elpa/)
* lisp-personal: are my personal configuration files. Roughly one per mode.
* init.el: loads all my customisations
* tim.el: miscellaneous customisation options

## Usage ##

Grab a git clone of this repository

    git clone git://github.com/tmcgilchrist/.emacs.d.git

A few paths to executables may depend on MacPorts/Homebrew but that's it.

## TODO ##

Things to try out or fix in no particular order.

* enable coffee-script mode with flymake, currently flymake is locking up emacs.
* enable javascript mode inside mumamo-mode so i get syntax highlighting within
  templates.
* customise javascript mode so I get flymake, js-lint and fix the electric
  brackets support.
* add snippets for jasmine tests.
* customise where backup files are placed.
* refactor init.el so I have more configuration files in a directory called
  "tim"
* re-enable slime-mode for common-lisp
* re-enable haskell-mode
* c-mode, is this even required? Probably at some point.
* learn all my damn keybindings
* enable RI mode for rinari so I can lookup the documentation for Ruby/Rails
  code.
* [el-get for Emacs](https://github.com/dimitri/el-get)
* Git integration with Emacs
* Snippet support using something like yasnippet
* Switch to rinari mode when opening a rails project root.
* enable TRAMP mode
* etags support for searching on methods/classes
* enabled Ruby documentation lookup using ri
* enable [distel](https://github.com/massemanet/distel) for Erlang


## Resources ##

* [Emacs Starter Kit](https://github.com/technomancy/emacs-starter-kit)
* [Emacs Code Browser](https://github.com/emacsmirror/ecb)
* [Markdown-mode](http://jblevins.org/projects/markdown-mode/)
* [Yaml-mode](https://github.com/yoshiki/yaml-mode)
* [Emacs-rails-reloaded](http://github.com/dima-exe/emacs-rails-reloaded)
* [Flymake-ruby](https://github.com/purcell/flymake-ruby)

