(add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/markdown"))

(autoload 'markdown-mode 
  "~/.emacs.d/vendor/markdown-mode/markdown-mode.el" 
  "Major mode for editing Markdown files" t)

(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

(provide 'tsm-markdown)
