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

(require 'tsm-generic)
(require 'tsm-ecb)
(require 'tsm-color)
