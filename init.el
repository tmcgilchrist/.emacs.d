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

(add-to-list 'load-path "~/.emacs.d/lisp-personal")

(custom-set-variables
        ;; custom-set-variables was added by Custom.
        ;; If you edit it by hand, you could mess it up, so be careful.
        ;; Your init file should contain only one such instance.
        ;; If there is more than one, they won't work right.
        '(ecb-layout-name "left14")
        '(ecb-auto-activate nil)
        '(ecb-options-version "2.40")
        '(ecb-tip-of-the-day nil))

(add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/ecb"))

(require 'ecb)

(require 'tsm-generic)
