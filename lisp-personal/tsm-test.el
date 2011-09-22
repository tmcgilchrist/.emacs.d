(global-set-key "\M-/" 'hippie-expand)

(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(quietly-read-abbrev-file)

(define-abbrev-table 'python-mode-abbrev-table  
  '(("sout" ["System.out.println(\"\")" 2 () nil] expand-abbrev-hook 0))
  '(("pdb" "import pdb; pbd.set_trace()" nil 0))
)

(add-hook 'python-mode-hook (lambda () (setq default-abbrev-mode t)))

(provide 'tsm-test)
