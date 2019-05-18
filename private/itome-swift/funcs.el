;;; funcs.el --- swift Layer functions File for Spacemacs
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Takeshi Tsukamoto <itometeam@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun spacemacs//swift-setup-backend ()
  (spacemacs//swift-setup-lsp))

(defun spacemacs//swift-setup-lsp ()
  "Setup lsp backend"
  (if (configuration-layer/layer-used-p 'lsp)
      (lsp)
    (message "`lsp' layer is not installed, please add `lsp' layer to your dotfile.")))

(defun spacemacs//swift-setup-company ()
  "Conditionally setup company based on backend."
  (spacemacs//swift-setup-lsp-company))

(defun spacemacs//swift-setup-lsp-company ()
  "Setup lsp auto-completion."
  (if (configuration-layer/layer-used-p 'lsp)
      (progn
        (spacemacs|add-company-backends
          :backends company-lsp
          :modes swift-mode))
    (message "`lsp' layer is not installed, please add `lsp' layer to your dotfile.")))
