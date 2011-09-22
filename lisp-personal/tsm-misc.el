;;; Various useful functions

;; reload .emacs file (useful for editing .emacs itself :)
(defun reload-dotemacs () 
  "Reload .emacs" 
  (interactive)
  (load-file "~/.emacs"))  
(global-set-key "\M-e" 'reload-dotemacs)

; This section programs a date function (useful for logging times 
; in job notes, etc). The date function is attached to <C-x><C-d>.
(defun current-date-and-time ()
  "Insert the current date and time (as given by UNIX date) at dot."
  (interactive)
  (call-process "date" nil t nil))
(global-set-key "\C-x\C-d" 'current-date-and-time)

; Get rid of the infernal windoze chars
(defun turn-to-unix ()
  (interactive)
  (set-buffer-file-coding-system 'iso-8859-1-unix))
(global-set-key "\C-x\C-u" 'turn-to-unix)


(set-frame-parameter (selected-frame) 'alpha '(85 50))
 (add-to-list 'default-frame-alist '(alpha 85 50))

(defun toggle-transparency ()
  (interactive)
    (if (/=
        (cadr (frame-parameter nil 'alpha))
        100)
       (set-frame-parameter nil 'alpha '(100 100))
     (set-frame-parameter nil 'alpha '(85 50))))

(global-set-key (kbd "C-c t") 'toggle-transparency)

(provide 'tsm-misc)
