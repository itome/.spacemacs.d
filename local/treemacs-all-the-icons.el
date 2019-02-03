(require 'all-the-icons)
(require 'treemacs)
(require 'ht)

(defun treemacs-all-the-icons-setup ()
  (setq treemacs-icon-root-png (all-the-icons-octicon "repo" :height 1.5)
        treemacs-icon-open-png   (all-the-icons-octicon "file-directory")
        treemacs-icon-closed-png (all-the-icons-octicon "file-directory"))
  (treemacs-all-the-icons--replace)
  (treemacs-define-custom-icon (all-the-icons-faicon "file-o" :height 0.8) "*"))


(defun treemacs-all-the-icons--replace ()
  (dolist (item all-the-icons-icon-alist)
    (let* ((extension (car item))
           (icon (apply (cdr item))))
      (ht-set! treemacs-icons-hash
               (s-replace-all '(("\\" . "") ("$" . "") ("." . "")) extension)
               (concat icon " ")))))

(provide 'treemacs-all-the-icons)

