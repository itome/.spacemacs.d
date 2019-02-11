;;; packages.el --- vue Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Takeshi Tsukamoto <itometeam@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(defconst dart-packages
  '(
    dart-mode
    flycheck
    company
    ))

(defun dart/post-init-company ()
  (spacemacs//dart-setup-lsp-company))

(defun dart/init-dart-mode ()
  (use-package dart-mode
    :defer t
    :mode "\\.dart\\'"
    :init
    (progn
      (spacemacs/add-to-hook 'dart-mode-hook '(spacemacs//dart-setup-lsp))
      (spacemacs/set-leader-keys-for-major-mode 'dart-mode
        "=" 'dart-format))
    ))

(defun dart/post-init-flycheck ()
  (spacemacs/enable-flycheck 'dart-mode))

;;; packages.el ends here
