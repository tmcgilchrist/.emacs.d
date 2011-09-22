;----------------------------------------------------------------
; python customisation
; Added Tue Jul 22 07:33:54 EST 2008
;----------------------------------------------------------------
;(defun my-python-compile()
;  "Use compile to run python programs"
;  (interactive)
;  (compile (concat "/opt/local/bin/python " (buffer-name))))

(setq compilation-scroll-output t)
(setq python-command "/opt/local/bin/python")
(setq python-mode-hook
      '(lambda () 
		 (local-set-key "\C-c\C-c" 'comment-region)
		 )
	  )

(provide 'tsm-python)