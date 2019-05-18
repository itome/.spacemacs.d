;;; packages.el --- swift Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Uri Sharf <uri.sharf@me.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq itome-swift-packages
    '(
      company
      swift-mode
      lsp-sourcekit
      ))

(defun itome-swift/init-swift-mode ()
  (use-package swift-mode
    :mode ("\\.swift\\'" . swift-mode)
    :defer t
    :init
    (spacemacs/add-to-hook 'swift-mode-hook '(spacemacs//swift-setup-backend))))

(defun itome-swift/init-lsp-sourcekit ()
  (use-package lsp-sourcekit
    :after lsp-mode
    :config
    (setenv "SOURCEKIT_TOOLCHAIN_PATH" swift-sourcekit-toolchain-path)
    (setq lsp-sourcekit-executable (expand-file-name swift-sourcekit-lsp-executable))))

(defun itome-swift/post-init-company ()
  (spacemacs//swift-setup-company))

;;; packages.el ends here
