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
    starter-kit starter-kit-ruby starter-kit-lisp starter-kit-js
    starter-kit-eshell starter-kit-bindings
    color-theme color-theme-railscasts
    auto-complete

    ;; Ruby/Rails modes
    ruby-mode rinari inf-ruby findr jump mode-compile
    ruby-compilation rvm ruby-electric ruby-end
    rspec-mode coffee-mode feature-mode haml-mode markdown-mode yaml-mode
    flymake-ruby flymake-coffee))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

(require 'el-get)

(setq my-packages
      (append
       '(el-get nxhtml)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)
(el-get 'wait)

;; My Customisations

(load "~/.emacs.d/el-get/nxhtml/autostart.el")
(setq nxhtml-global-minor-mode t
      mumamo-chunk-coloring 'submode-colored
      nxhtml-skip-welcome t
      indent-region-mode t
      rng-nxml-auto-validate-flag nil
      nxml-degraded t)
(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))

(setq flyspell-issue-welcome-flag nil)
(setq-default ispell-program-name "/usr/local/bin/ispell")

(require 'color-theme-railscasts)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;(ecb-activate)

(require 'auto-complete-config nil t)
(setq ac-comphist-file  "~/.emacs.d/ac-comphist.dat")
(ac-config-default)

;; Set the path for eshell, apparently it doesn't read .profile or .bash
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))
