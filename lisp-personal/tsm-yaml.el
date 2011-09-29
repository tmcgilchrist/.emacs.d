;; YAML MODE
;(add-to-list 'load-path "~/.emacs.d/vendor/yaml-mode/")

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
     '(lambda ()
        (define-key yaml-mode-map (kbd "RET") 'newline-and-indent)))

(provide 'tsm-yaml)
