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
    rinari rspec-mode findr inf-ruby jump mode-compile
    ruby-compilation ruby-mode rvm markdown-mode yaml-mode flymake-ruby
    ruby-electric ruby-end coffee-mode feature-mode haml-mode
    flymake-coffee

    ;; Everything else
    haskell-mode prolog
    )
  "A list of packages to ensure are installed at launch.")

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

(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

(require 'ruby-electric)
(add-hook 'ruby-mode-hook 'ruby-electric-mode)

(require 'rvm)
(add-hook 'ruby-mode-hook 'rvm-activate-corresponding-ruby)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.haml$" . haml-mode))
(add-hook 'haml-mode-hook 'rinari-minor-mode)

(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2)
  (setq coffee-command "/usr/local/bin/coffee")
  )

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

;; emacs-starter-kit version in ELPA defines this hook but it doesn't appear to
;; work, so lets get rid of it
(remove-hook 'ruby-mode-hook 'esk-run-coding-hook)

(setq rinari-tags-file-name "TAGS")

(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(ecb-activate)

(require 'auto-complete-config nil t)
(setq ac-comphist-file  "~/.emacs.d/ac-comphist.dat")
(ac-config-default)

;; Set the path for eshell, apparently it doesn't read .profile or .bash
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))
