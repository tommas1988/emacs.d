;;; init-go.el --- Support for working with GO -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; https://github.com/golang/tools/blob/master/gopls/doc/emacs.md
(when (maybe-require-package 'go-mode)

  (when (maybe-require-package 'lsp-mode)
    ;; (add-hook 'go-mode-hook #'lsp)
    (add-hook
     'go-mode-hook
     (lambda ()
       (add-hook 'before-save-hook #'lsp-format-buffer t t)
       (add-hook 'before-save-hook #'lsp-organize-imports t t)
       ))
    )

  (maybe-require-package 'company-go)
  ;; autocomplete setup
  ;; gocode
  ;; (when (maybe-require-package `go-autocomplete)
  ;;   (when (maybe-require-package `maybe-require-package)
  ;;     (ac-config-default)))
  ;; or use gocode with gocomplete https://github.com/vibhavp/go-complete
  (when (maybe-require-package 'go-complete)
    (add-hook 'completion-at-point-functions 'go-complete-at-point))
  )

;; disable flycheck
(setq flycheck-global-modes '(not go-mode))

(provide 'init-go)

;;; init-go.el ends here
