(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

(add-hook 'haskell-mode-hook
          (lambda()
            (define-key haskell-mode-map "\C-c\C-c"
                              'comment-or-uncomment-region)))

(custom-set-variables
  '(haskell-tags-on-save t))

(eval-after-load "haskell-mode"
  ;; Replace the haskell-mode version with this version,
  ;; this will line up all imports as if they're all qualified
  ;; eg this
  ;;
  ;; import Data.Monoid
  ;; import Data.Text
  ;;
  ;; becomes
  ;;
  ;; import           Data.Monoid
  ;; import           Data.Text
  ;;
  '(defun haskell-align-imports-fill (padding line)
    "Fill an import line using the padding worked out from all statements."
    (if (eq (car padding) 6)
      (setcar padding (+ 6 10)) )
    (mapconcat #'identity
               (cl-mapcar (lambda (pad part)
                            (if (> (length part) 0)
                                (concat part (make-string (- pad (length part)) ? ))
                              (make-string pad ? )))
                          padding
                          line)
               " ")))

(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)
(define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)
