;;; init-el.el --- Support for working with Elasticsearch -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'es-mode)
  (add-to-list 'auto-mode-alist '("\\.es$" . es-mode)))

(provide 'init-es)
;;; init-es.el ends here
