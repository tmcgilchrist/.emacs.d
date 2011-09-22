;;;; Tim McGilchrist's emacs initialisation 

;; Enable a backtrace when problems occur
(setq debug-on-error t)

;; Load paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp-personal"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/color-theme-6.6.0"))

;; Personal customisations
(require 'tsm-generic)
(require 'tsm-backup)
(require 'tsm-haskell)
(require 'tsm-cmode)
(require 'tsm-prolog)
(require 'tsm-erlang)
;(require 'tsm-ruby)
(require 'tsm-python)
(require 'tsm-slime)
;(require 'tsm-abbrev) ; not finished
(require 'tsm-ecb)
(require 'tsm-misc)
;(require 'tsm-test)
(require 'tsm-colours)
(require 'tsm-yasnippet)
(require 'tsm-ido)
(require 'tsm-nxml)
(require 'tsm-groovy)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-name "left14")
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.32")
 '(ecb-tip-of-the-day nil)
 '(ecb-tree-buffer-style (quote ascii-guides))
 '(ecb-wget-setup (quote cons)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((((class color) (min-colors 88) (background light)) (:foreground "#808080"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background light)) (:foreground "#68228B"))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background light)) (:foreground "#0000CD"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background light)) (:foreground "red"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background light)) (:foreground "#3888B0")))))


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
(put 'downcase-region 'disabled nil)
