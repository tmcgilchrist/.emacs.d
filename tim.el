;;; Generic emacs settings

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviours to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; Display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Emacs gurus don't need no stinking scroll bars, tools bar or menus
(toggle-scroll-bar -1)
(tool-bar-mode 0)

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

(setq rinari-tags-file-name "TAGS")

;; Setup Erlang mode
;(setq load-path (cons  "/opt/local/lib/erlang/lib/tools-2.6.6.4/emacs"
;					   load-path))
;(setq erlang-root-dir "/opt/local/lib/erlang")
;(setq exec-path (cons "/opt/local/lib/erlang/bin" exec-path))
;(require 'erlang-start)

;; Some Erlang customizations
;(add-hook 'erlang-mode-hook
;	  (lambda ()
;; 	    ;; when starting an Erlang shell in Emacs, default in the node name
;; 	    (setq inferior-erlang-machine-options '("-sname" "emacs"))
;; 	    ;; add Erlang functions to an imenu menu
;; 	    (imenu-add-to-menubar "imenu")))
;; (require 'erlang-flymake)
