;----------------------------------------------------------------
; Prolog mode customisation from http://turing.ubishops.ca/home/\
;	bruda/emacs-prolog/
; Added Wed Mar 30 20:20:24 EST 2005
; Updated Sun Feb 25 12:34:02 EST 2007
;----------------------------------------------------------------
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/prolog-mode-1.14")
(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)
(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)
(setq prolog-program-name "/opt/local/bin/swipl")
(setq prolog-mode-hook
      '(lambda ()
	 (define-key prolog-mode-map "\C-c\C-c" 'comment-region)
	 ))
(require `prolog)

(provide 'tsm-prolog)