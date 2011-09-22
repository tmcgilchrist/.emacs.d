(defun my-c-setup ()
  (setq compilation-window-height 8)
  (setq default-tab-width 4)
  (setq c-default-style "bsd")
  (setq c-basic-offset 4)
  (setq c-label-indent 2)

  (setq compilation-finish-function
	(lambda (buf str)
	  (if (string-match "exited abnormally" str)
	      ;;there were errors
	      (message "compilation errors, press C-x ` to visit")
			
	    ;;no errors, make the compilation window go away in 0.5 seconds
	    (run-at-time 0.5 nil 'delete-windows-on buf)
	    (message "NO COMPILATION ERRORS!"))))
  )

(add-hook 'c-mode-common-hook 'my-c-setup)
(add-hook 'c-mode-hook 'my-c-setup)

(provide 'tsm-cmode)