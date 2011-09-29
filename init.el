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
(defvar my-packages '(ecb_snap rinari color-theme color-theme-railscasts rspec-mode findr 
                               inf-ruby jump mode-compile ruby-compilation ruby-mode rvm 
                               markdown-mode yaml-mode)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


(add-to-list 'load-path "~/.emacs.d/lisp-personal/")

(require 'tsm-generic)
(require 'tsm-ecb)
(require 'tsm-color)
(require 'tsm-ido)
(require 'tsm-misc)
(require 'tsm-markdown)
(require 'tsm-yaml)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-auto-activate nil)
 '(ecb-layout-name "left14")
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote ("/Users/tim/")))
 '(ecb-tip-of-the-day nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-default-highlight-face ((t (:background "dark olive green")))))
