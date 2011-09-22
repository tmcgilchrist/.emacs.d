;----------------------------------------------------------------
; SLIME customisation from
;	http://common-lisp.net/project/slime/doc/html/slime.html
; Added Sat Jan  7 15:53:19 EST 2006
;----------------------------------------------------------------
(setq inferior-lisp-program "/opt/local/bin/sbcl")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/slime-current")
(require 'slime)
(slime-setup)

(provide 'tsm-slime)
