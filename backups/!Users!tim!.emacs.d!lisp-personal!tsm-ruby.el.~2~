;----------------------------------------------------------------
; Ruby customisation 
;
; Based on http://www.rubygarden.org/Ruby/page/show/InstallingEmacsExtensions  
; and http://blog.modp.com/2007/09/ruby-mode-for-emacs.html 
; Added Wed Oct  3 11:11:46 EST 2007
;----------------------------------------------------------------
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/ruby")

(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files")
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml$" . html-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
	  '(lambda ()
	     (inf-ruby-keys)))
;; If you have Emacs 19.2x or older, use rubydb2x                              
(autoload 'rubydb "rubydb3x" "Ruby debugger" t)
;; uncomment the next line if you want syntax highlighting                     
(add-hook 'ruby-mode-hook 'turn-on-font-lock)

(provide 'tsm-ruby)
