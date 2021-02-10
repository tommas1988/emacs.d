;;; init-es-mode.el --- Support for working with Elaticsearch -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; https://github.com/dakrone/es-mode
(when (maybe-require-package 'es-mode)
  (add-to-list 'auto-mode-alist '("\\.es$" . es-mode))
  )

(provide 'init-es-mode)

;;; init-es-mode.el ends here
