;; Tim's Emacs Customisation
;;
(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(setq debug-on-error t)
(setq stack-trace-on-error t)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages
  '(
    ;; Grab emacs starter kit goodies
    starter-kit starter-kit-ruby starter-kit-lisp
    starter-kit-eshell starter-kit-bindings
    color-theme
    auto-complete yasnippet magit-gh-pulls

    ;; Ruby/Rails modes
    ruby-mode rinari inf-ruby findr jump mode-compile
    ruby-compilation rvm ruby-electric ruby-end handlebars-mode
    rspec-mode coffee-mode feature-mode haml-mode markdown-mode yaml-mode sass-mode
    flymake-ruby flymake-coffee flymake-sass chruby

    ;; JavaScript modes
    js2-mode flymake-jslint

    ;; Clojure modes
    clojure-mode cider paredit

    ;; Haskell modes
    haskell-mode
    ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(setq flyspell-issue-welcome-flag nil)
(setq-default ispell-program-name "/usr/local/bin/ispell")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'auto-complete-config nil t)
(setq ac-comphist-file  "~/.emacs.d/ac-comphist.dat")
(ac-config-default)

;; Set the path for eshell, apparently it doesn't read .profile or .bash
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; use shift + arrow keys to switch between visible buffers
(require 'windmove)
(windmove-default-keybindings 'super)

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setenv "ESHELL" (expand-file-name "~/bin/eshell"))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)
(put 'downcase-region 'disabled nil)

(require 'magit-gh-pulls)
(add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)

(global-set-key (kbd "C-x g") 'magit-status)
