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

The you need to checkout the git submodules:

    git submodule init
    git submodule update

* * * * *

## TODO ##

* go through and enable more of my old customisations for other languages.
* enable el-get so I can checkout ELPA packages automatically
* learn all my damn keybindings

* * * * *

## Resources ##
* [Emacs Starter Kit](https://github.com/technomancy/emacs-starter-kit)
* [Emacs Code Browser](https://github.com/emacsmirror/ecb)
* [Markdown-mode](http://jblevins.org/projects/markdown-mode/)
* [Yaml-mode](https://github.com/yoshiki/yaml-mode)
    
Things to try

* [Emacs Rails Reloaded](https://github.com/r0man/emacs-rails-reloaded)
* [el-get for Emacs](https://github.com/dimitri/el-get)
* Git integration with Emacs
* Add modes for erb/html syntax highlighting
* Snippet support using something like yasnippet
* 
