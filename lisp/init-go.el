;;; init-go.el --- Support for working with GO -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'go-mode)
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

(with-eval-after-load 'go-mode
  (add-hook
   'go-mode-hook
   (lambda ()
     ;; add or delete import
     (setq gofmt-command "goimports")
     ;; call gofmt before save
     (add-hook 'before-save-hook 'gofmt-before-save)
     ;; (if (not (string-match "go" compile-command)) ;M-x compile
     ;;     (set (make-local-variable 'compile-command)
     ;;          "go build -v && go test -v && go vet"))
     ;; ;; guru settings
     ;; (go-guru-hl-identifier-mode)
     ;; Godef jump
     (local-set-key (kbd "M-,") 'pop-tag-mark) ;jumb-back after godef-jump
     (local-set-key (kbd "M-.") 'godef-jump)
     ;; (setq tab-width 2)
     ;; (setq indent-tabs-mode 2)

     ;; auto complete for go
     (setq auto-complete-mode 1)
     )
   )
  )

;; disable flycheck
(setq flycheck-global-modes '(not go-mode))

(provide 'init-go)

;;; init-go.el ends here
