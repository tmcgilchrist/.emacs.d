;; See http://www.emacswiki.org/emacs-en/AbbrevMode

(setq abbrev-file-name             ;; tell emacs where to read abbrev
        "~/.emacs.d/abbrev_defs")    ;; definitions from...
(setq save-abbrevs t) 

;;; new macro declare-abbrevs -- similar to define-abbrev-table
;;; (require 'cl)
;;; (defvar my-abbrev-tables nil)
;;; (defun my-abbrev-hook ()
;;;   (let ((def (assoc (symbol-name last-abbrev) my-abbrev-tables)))
;;;     (when def
;;;       (execute-kbd-macro (cdr def)))
;;;     t))
;;; (put 'my-abbrev-hook 'no-self-insert t)
;;; (defmacro declare-abbrevs (table abbrevs)
;;;   (if (consp table)
;;;       `(progn ,@(loop for tab in table
;;; 		      collect `(declare-abbrevs ,tab ,abbrevs)))
;;;     `(progn
;;;        ,@(loop for abbr in abbrevs
;;; 	       do (when (third abbr)
;;; 		    (push (cons (first abbr) (read-kbd-macro (third abbr)))
;;; 			  my-abbrev-tables))
;;; 	       collect `(define-abbrev ,table
;;; 			  ,(first abbr) ,(second abbr) ,(and (third abbr)
;;; 							     ''my-abbrev-hook))))))
;;; (put 'declare-abbrevs 'lisp-indent-function 2)

;;; sample abbrev definitions
;;; (eval-after-load "cc-mode"
;;;   '(declare-abbrevs (c-mode-abbrev-table c++-mode-abbrev-table)
;;; 		    (("#s"    "#include <>" "C-b")
;;; 		     ("#i"    "#include \"\"" "C-b")
;;; 		     ("#ifn"  "#ifndef")
;;; 		     ("#e"    "#endif /* */" "C-3 C-b")
;;; 		     ("#ifd"  "#ifdef")
;;; 		     ("imain" "int\nmain (int ac, char **av[])\n{\n\n}" "C-p TAB")
;;; 		     ("if"    "if () {\n}\n" "C-M-b C-M-q C-- C-M-d")
;;; 		     ("else"  "else {\n}\n"  "C-M-b C-M-q C-M-d RET")
;;; 		     ("while" "while () {\n}\n" "C-M-b C-M-q C-- C-M-d")
;;; 		     ("for"   "for (;;) {\n}\n" "C-M-b C-M-q C-M-b C-M-d")
;;; 		     ("pr"    "printf (\"\")" "C-2 C-b"))))
					   
;;; (define-abbrev-table 'python-mode-abbrev-table  '(
;;;   ("sout" ["System.out.println(\"\")" 2 () nil] expand-abbrev-hook 0)
;;;   ))

;(add-hook 'cc-mode-hook (lambda () (setq default-abbrev-mode t)))
;(add-hook 'python-mode-hook (lambda () (setq default-abbrev-mode t)))

;(dolist (hook '(c-mode))
;  (add-hook hook (lambda () (setq default-abbrev-mode t))))

(quietly-read-abbrev-file)

(provide 'tsm-abbrev)
