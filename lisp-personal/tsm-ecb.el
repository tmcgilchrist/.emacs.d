;;; ECB customisation

(load-file (expand-file-name "~/.emacs.d/lisp/cedet-1.0pre4/common/cedet.el"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/ecb-2.32"))
(require 'ecb)

;; Set list of directories containing files to browse 
(setq ecb-source-path (quote ("/Users/tim/code/ruby/rails/pico")))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-layout-name "left14")
 '(ecb-layout-window-sizes (quote (("left14" (0.2564102564102564 . 0.6949152542372882) (0.2564102564102564 . 0.23728813559322035)))))
 '(ecb-options-version "2.40")

 '(ecb-tip-of-the-day nil)
 '(ecb-tree-buffer-style (quote ascii-guides)))

(provide 'tsm-ecb)
