;; Setup Erlang mode
;; (setq load-path (cons "/usr/local/otp/lib/tools-<ToolsVer>/emacs"
;;       load-path))
;;       (setq erlang-root-dir "/usr/local/otp")
;;       (setq exec-path (cons "/usr/local/otp/bin" exec-path))
;;       (require 'erlang-start)

;;(setq load-path (car (file-expand-wildcards "/usr/local/lib/erlang/lib/tools-*/emacs")))
;; (setq load-path (cons "/usr/local/lib/erlang/lib/tools-2.7>/emacs"
;;        load-path))
;; (setq load-path (cons "/usr/local/lib/erlang/lib/tools-2.7/emacs" load-path))
;; (setq erlang-root-dir "/usr/local/lib/erlang")
;; (setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
;; (require 'erlang-start)
;; (require 'erlang-flymake)
;; (defvar inferior-erlang-prompt-timeout t)

;; ;; Some Erlang customizations
;; (add-hook 'erlang-mode-hook
;; 	  (lambda ()
;; 	    ;; when starting an Erlang shell in Emacs, default in the node name
;; 	    (setq inferior-erlang-machine-options '("-sname" "emacs"))
;; 	    ;; add Erlang functions to an imenu menu
;; 	    (imenu-add-to-menubar "imenu")))

;; (setq load-path (cons "/usr/local/lib/erlang/lib/tools-2.7.1/emacs"
;;       load-path))
;;       (setq erlang-root-dir "/usr/local/otp")
;;       (setq exec-path (cons "/usr/local/otp/bin" exec-path))
;;       (require 'erlang-start)
