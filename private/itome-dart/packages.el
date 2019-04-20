;;; packages.el --- dart layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Bruno Tavares <connect+spacemacs@bltavares.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

;; TODO: offer lsp integration
(defconst itome-dart-packages
  '(
    company
    dart-mode
    ))

(defun itome-dart/init-dart-mode ()
  (use-package dart-mode
    :defer t
    :mode "\\.dart\\'"
    :init
    (progn
      (spacemacs/add-to-hook 'dart-mode-hook '(spacemacs//dart-setup-backend))
      (spacemacs/set-leader-keys-for-major-mode 'dart-mode
        "==" 'dart-format)

      (evil-define-key 'insert dart-mode-map
        (kbd "<tab>") 'dart-expand
        (kbd "C-<tab>") 'dart-expand-parameters))))

(defun itome-dart/post-init-company ()
  (spacemacs//dart-setup-company))

;;; packages.el ends here
