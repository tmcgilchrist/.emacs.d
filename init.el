;; Tim's Emacs Customisation
;;
(require 'package)

(setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize)

(setq debug-on-error t)
(setq stack-trace-on-error t)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages
  '(ecb_snap
    ;; Grab emacs starter kit goodies
    starter-kit starter-kit-ruby starter-kit-lisp
    starter-kit-eshell starter-kit-bindings
    color-theme color-theme-railscasts
    auto-complete

    ;; Ruby/Rails modes
    ruby-mode rinari inf-ruby findr jump mode-compile
    ruby-compilation rvm ruby-electric ruby-end handlebars-mode
    rspec-mode coffee-mode feature-mode haml-mode markdown-mode yaml-mode sass-mode
    flymake-ruby flymake-coffee flymake-sass

    ;; JavaScript modes
    js2-mode flymake-jslint
    ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(setq flyspell-issue-welcome-flag nil)
(setq-default ispell-program-name "/usr/local/bin/ispell")

(require 'color-theme-railscasts)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'auto-complete-config nil t)
(setq ac-comphist-file  "~/.emacs.d/ac-comphist.dat")
(ac-config-default)

;; Set the path for eshell, apparently it doesn't read .profile or .bash
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))


(require 'real-auto-save)

(add-hook 'text-mode-hook 'turn-on-real-auto-save)
(add-hook 'muse-mode-hook 'turn-on-real-auto-save)
(add-hook 'ruby-mode-hook 'turn-on-real-auto-save)
(add-hook 'erlang-mode-hook 'turn-on-real-auto-save)

;; use shift + arrow keys to switch between visible buffers
(require 'windmove)
(windmove-default-keybindings 'super)

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
