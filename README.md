## Tim's Emacs Configuration ##

I use Emacs for most of my text editing needs, on my various Mac or Linux
systems. Mostly I'm coding something in either Haskell, OCaml, Erlang, JavaScript,
CoffeeScript or Ruby.

The basic structure of the directories is:

* elpa: is the [Emacs Lisp Package Archive](http://tromey.com/elpa/)
* init.el: loads all my customisations
* tim: miscellaneous customisation files
* custom.el: output of Custom.
* lisp-personal: are my old configuration files, one per mode. Unused.

## Usage ##

Grab a git clone of this repository

    git clone git://github.com/tmcgilchrist/.emacs.d.git

A few paths to executables may depend on MacPorts/Homebrew but that's it.

## TODO ##

Things to try out or fix in no particular order.

* enable TRAMP mode
* customise where backup files are placed.
* re-enable slime-mode for common-lisp
* c-mode, is this even required? Probably at some point.
* enable RI mode for rinari so I can lookup the documentation for Ruby/Rails
  code.
* [el-get for Emacs](https://github.com/dimitri/el-get)
* Git integration with Emacs
* Snippet support using something like yasnippet
* etags support for searching on methods/classes
* enable [distel](https://github.com/massemanet/distel) for Erlang
* enable javascript mode inside mumamo-mode so i get syntax highlighting within
  templates.
* customise javascript mode so I get flymake, js-lint and fix the electric
  brackets support.
* add snippets for jasmine tests.


## Resources ##

* [Emacs Starter Kit](https://github.com/technomancy/emacs-starter-kit)
* [Emacs Code Browser](https://github.com/emacsmirror/ecb)
* [Markdown-mode](http://jblevins.org/projects/markdown-mode/)
* [Yaml-mode](https://github.com/yoshiki/yaml-mode)
* [Emacs-rails-reloaded](http://github.com/dima-exe/emacs-rails-reloaded)
* [Flymake-ruby](https://github.com/purcell/flymake-ruby)
