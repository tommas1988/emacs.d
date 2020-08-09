;;; init-go.el --- Support for working with GO -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'go-mode)
  ;; (maybe-require-package 'smarty-mode)

  (maybe-require-package 'company-go)

  ;; (when (maybe-require-package 'company-go)
  ;;   (with-eval-after-load 'company
  ;;     (add-to-list 'company-backends 'company-ac-php-backend)))
  )

(provide 'init-go)

;;; init-go.el ends here
