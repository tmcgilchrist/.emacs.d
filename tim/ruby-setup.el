(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'ruby-mode-hook 'ruby-electric-mode)
;; (add-hook 'ruby-mode-hook 'rvm-activate-corresponding-ruby)
(add-hook 'ruby-mode-hook 'paredit-mode)
(add-hook 'ruby-mode-hook 'rinari-minor-mode)
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

(add-hook 'after-init-hook 'inf-ruby-switch-setup)

(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

(setq rspec-use-rake-when-possible t)
(setq rspec-use-rake-flag nil)
(setq rspec-use-bundler-when-possible t)
(setq rspec-use-opts-file-when-available t)

(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))
(ad-activate 'rspec-compile)

;; (add-hook 'cucumber-mode-hook
;;           (lambda ()
;;             (setq feature-use-rvm t)))

(defadvice feature-run-cucumber (around feature-run-cucumber-around)
  "Use BASH shell for running the specs because of ZSH "
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))
(ad-activate 'feature-run-cucumber)

(defun blake-rgrep (&optional arg)
  "Based on rinari..."
  (interactive "P")
  (grep-compute-defaults)
  (if arg (call-interactively 'rgrep)
    (let ((query))
      (if mark-active
          (setq query (buffer-substring-no-properties (point) (mark)))
        (setq query (thing-at-point 'ruby-word)))
      (funcall 'rgrep
               (read-from-minibuffer "search for: " query)
               "*.rb *.haml *.rhtml *.erb *.coffee *.rake *.sass *.scss Gemfile Gemfile.lock *.emblem *.yml"
               "~/Blake"))))

(require 'yasnippet)
(yas-global-mode 1)

;; Completing point by some yasnippet key
(defun yas-ido-expand ()
  "Lets you select (and expand) a yasnippet key"
  (interactive)
    (let ((original-point (point)))
      (while (and
              (not (= (point) (point-min) ))
              (not
               (string-match "[[:space:]\n]" (char-to-string (char-before)))))
        (backward-word 1))
    (let* ((init-word (point))
           (word (buffer-substring init-word original-point))
           (list (yas-active-keys)))
      (goto-char original-point)
      (let ((key (remove-if-not
                  (lambda (s) (string-match (concat "^" word) s)) list)))
        (if (= (length key) 1)
            (setq key (pop key))
          (setq key (ido-completing-read "key: " list nil nil word)))
        (delete-char (- init-word original-point))
        (insert key)
        (yas-expand)))))

(define-key yas-minor-mode-map (kbd "<C-tab>")     'yas-ido-expand)

(global-set-key (kbd "C-c , b") 'blake-rgrep)
(global-set-key (kbd "C-c ' b") 'blake-rgrep)

;; FIXME: it should be available in next versions of ruby-mode.el
(defun ruby-insert-end ()
  (interactive)
  (insert "end")
  (ruby-indent-line t)
  (end-of-line))
