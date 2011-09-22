;----------------------------------------------------------------
; Groovy customisation 
;
; Added Tue May 25 23:29:09 EST 2010
;----------------------------------------------------------------
(setq load-path (cons "/Users/tim/.emacs.d/lisp/groovy-mode.el" load-path))
(setq load-path (cons "/Users/tim/.emacs.d/lisp/groovy-eval.el" load-path))

;;; turn on syntax hilighting
(global-font-lock-mode 1)

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Groovy editing mode." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

(autoload 'groovy-eval "groovy-eval" "Groovy Evaluation" t)
(add-hook 'groovy-mode-hook 'groovy-eval)

(provide 'tsm-groovy)