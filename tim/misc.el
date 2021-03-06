;;; Generic emacs settings

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviours to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; Display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Line wrapping
(set-default 'fill-column 80)

;; Prevent the annoying beep errors
(setq visible-bell t)

;; No startup messages
(setq inhibit-startup-message t)

;; only use spaces for indentation, damn it!
(setq-default indent-tabs-mode nil)

;;; Various useful functions

;; reload .emacs file (useful for editing .emacs itself :)
(defun reload-dotemacs ()
  "Reload .emacs"
  (interactive)
  (load-file "~/.emacs.d/init.el"))
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

(require 'hl-line)                      ; highlight current line
(global-hl-line-mode t)
(set-face-background 'hl-line "#330")

(defun toggle-frame-split ()
  "If the frame is split vertically, split it horizontally or vice versa.
Assumes that the frame is only split into two."
  (interactive)
  (unless (= (length (window-list)) 2) (error "Can only toggle a frame split in two"))
  (let ((split-vertically-p (window-combined-p)))
    (delete-window) ; closes current window
    (if split-vertically-p
        (split-window-horizontally)
      (split-window-vertically)) ; gives us a split with the other window twice
    (switch-to-buffer nil))) ; restore the original window in this part of the frame

;; I don't use the default binding of 'C-x 5', so use toggle-frame-split instead
(global-set-key (kbd "C-x 5") 'toggle-frame-split)


(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Originally from stevey, adapted to support moving to a new directory.
(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive
   (progn
     (if (not (buffer-file-name))
         (error "Buffer '%s' is not visiting a file!" (buffer-name)))
     (list (read-file-name (format "Rename %s to: " (file-name-nondirectory
                                                     (buffer-file-name)))))))
  (if (equal new-name "")
      (error "Aborted rename"))
  (setq new-name (if (file-directory-p new-name)
                     (expand-file-name (file-name-nondirectory
                                        (buffer-file-name))
                                       new-name)
                   (expand-file-name new-name)))
  ;; If the file isn't saved yet, skip the file rename, but still update the
  ;; buffer name and visited file.
  (if (file-exists-p (buffer-file-name))
      (rename-file (buffer-file-name) new-name 1))
  (let ((was-modified (buffer-modified-p)))
    ;; This also renames the buffer, and works with uniquify
    (set-visited-file-name new-name)
    (if was-modified
        (save-buffer)
      ;; Clear buffer-modified flag caused by set-visited-file-name
      (set-buffer-modified-p nil))
  (message "Renamed to %s." new-name)))


(custom-set-variables
 '(haskell-mode-hook '(turn-on-haskell-simple-indent)))

(setq tramp-default-method "ssh")
(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
