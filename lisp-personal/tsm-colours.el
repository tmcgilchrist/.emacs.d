;(set-face-background 'default "white") 
;(set-face-foreground 'default "black") 

;(set-cursor-color "red")


(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/lisp/color-theme-orico-black.el")
(color-theme-orico-black)

(provide 'tsm-colours)
