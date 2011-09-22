;----------------------------------------------------------------
; Haskell mode customisation from http://haskell.org/haskell-mode/
; added Mon Feb 21 22:18:00 EST 2004
;----------------------------------------------------------------
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/haskell-mode-2.3")
(setq auto-mode-alist
      (append auto-mode-alist
	      '(("\\.[hg]s$"  . haskell-mode)
		("\\.hi$"   . haskell-mode)
		("\\.l[hg]s$"   . literate-haskell-mode))))
(autoload 'haskell-mode "haskell-mode"
  "Major mode for editing Haskell scripts." t)
(autoload 'literate-haskell-mode "haskell-mode"
  "Major mode for editing literate Haskell scripts." t)
(setq haskell-ghci-program-name "/opt/local/bin/ghci")
(setq haskell-ghci-program-args '("-fglasgow-exts"
				  "-fallow-undecidable-instances"))
(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'turn-on-haskell-ghci)

(setq haskell-mode-hook
      '(lambda () 
		 (local-set-key "\C-c\C-c" 'comment-region)
		 )
	  )

(provide 'tsm-haskell)
