;; init ggtags

(maybe-require-package 'ggtags)

(with-eval-after-load 'ggtags-mode
  (add-hook
   'ggtags-mode-hook
   (lambda ()
     (local-set-key (kbd "M-*") 'pop-tag-mark)
     (local-set-key (kbd "\C-c\C-p") `ggtags-prev-mark)
     (local-set-key (kbd "\C-c\C-n") `ggtags-next-mark))
   )
  )
