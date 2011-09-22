;;; Backup Emacs temp files in a central location
(setq backup-directory-alist `(("." . "~/.emacs.d/backups"))) ; don't litter my fs tree

(setq backup-by-copying t)      ; don't clobber symlinks

(setq delete-old-versions t    
      kept-new-versions 6
      kept-old-versions 2
      version-control t)       

(setq auto-save-default t)    ; Yes auto save good
(setq auto-save-interval 100) ; Number of input chars between auto-saves
(setq auto-save-timeout 300)  ; Number of seconds idle time before auto-save

(provide 'tsm-backup)
