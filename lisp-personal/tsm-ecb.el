;;; ECB customisation

;; Set list of directories containing files to browse 
(setq ecb-source-path (quote ("/Users/tim/code/ruby/rails/pico")))

(custom-set-variables
        ;; custom-set-variables was added by Custom.
        ;; If you edit it by hand, you could mess it up, so be careful.
        ;; Your init file should contain only one such instance.
        ;; If there is more than one, they won't work right.
        '(ecb-layout-name "left14")
        '(ecb-auto-activate nil)
        '(ecb-options-version "2.40")
        '(ecb-tip-of-the-day nil))

;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/ecb"))

(require 'ecb)

(provide 'tsm-ecb)
