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
  (setq coffee-command "/usr/local/bin/coffee"))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

;; emacs-starter-kit version in ELPA defines this hook but it doesn't appear to
;; work, so lets get rid of it
(remove-hook 'ruby-mode-hook 'esk-run-coding-hook)

(setq rinari-tags-file-name "TAGS")

(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))
