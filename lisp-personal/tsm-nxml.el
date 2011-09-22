;;; nXML mode customisation

(load-file (expand-file-name "~/.emacs.d/lisp/nxml-mode-20041004/rng-auto.el"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/nxml-mode-20041004/"))

(setq auto-mode-alist
        (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\|xsd\\)\\'" . nxml-mode)
          auto-mode-alist))

(provide 'tsm-nxml)