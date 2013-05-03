(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'ruby-mode-hook 'ruby-electric-mode)
(add-hook 'ruby-mode-hook 'rvm-activate-corresponding-ruby)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.haml$" . haml-mode))
(add-hook 'haml-mode-hook 'rinari-minor-mode)

(add-hook 'coffee-mode-hook
          (lambda()
            (set (make-local-variable 'tab-width) 2)
            (setq coffee-command "/usr/local/bin/coffee")))

(add-hook 'coffee-mode-hook 'flymake-coffee-load)

(add-hook 'ruby-mode-hook
          (lambda()
            (define-key ruby-mode-map "\C-c\C-c"
                              'comment-or-uncomment-region)))

(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))
(ad-activate 'rspec-compile)

(add-hook 'cucumber-mode-hook
          (lambda ()
            (setq feature-use-rvm t)))

(defadvice feature-run-cucumber (around feature-run-cucumber-around)
  "Use BASH shell for running the specs because of ZSH "
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))
(ad-activate 'feature-run-cucumber)
