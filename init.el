;; Tim's Emacs Customisation
;;
(require 'package)

;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("elpa" . "http://tromey.com/elpa/"))
;; Add the user-contributed repository
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(setq debug-on-error t)
(setq stack-trace-on-error t)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(ecb_snap
                      ;; Grab emacs starter kit goodies
                      starter-kit starter-kit-ruby starter-kit-lisp starter-kit-js
                      starter-kit-eshell starter-kit-bindings
                      color-theme color-theme-railscasts
                      auto-complete

                      ;; Ruby/Rails modes
                      rinari rspec-mode findr inf-ruby jump mode-compile
                      ruby-compilation ruby-mode rvm markdown-mode yaml-mode flymake-ruby
                      ruby-electric ruby-end

                      ;; Everything else
                      haskell-mode prolog
                      )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; My Customisations
(setq flyspell-issue-welcome-flag nil)
(setq-default ispell-program-name "/opt/local/bin/ispell")

(require 'color-theme-railscasts)

(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

(require 'ruby-electric)
(add-hook 'ruby-mode-hook 'ruby-electric-mode)

(require 'rvm)
(add-hook 'ruby-mode-hook 'rvm-activate-corresponding-ruby)

;; emacs-starter-kit version in ELPA defines this hook but it doesn't appear to
;; work, so lets get rid of it
(remove-hook 'ruby-mode-hook 'esk-run-coding-hook)

(setq rinari-tags-file-name "TAGS")

(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-auto-activate t)
 '(ecb-layout-name "left15")
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote ("/Users/tim/" ("/Users/tim/.emacs.d" ".emacs.d") ("/Users/tim/code/erlang/otp_rebar_sample" "otp_rebar_sample") ("/Users/tim/code/ruby/rails/pico" "pico") ("/Users/tim/code/tmcgilchrist.github.com" "blog") ("/Users/tim/code/ruby/rails/blog" "blog"))))
 '(ecb-tip-of-the-day nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-default-highlight-face ((t (:background "dark olive green")))))

(ecb-activate)

(require 'auto-complete-config nil t)
(setq ac-comphist-file  "~/.emacs.d/ac-comphist.dat")
(ac-config-default)

