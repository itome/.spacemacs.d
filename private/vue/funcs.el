;;; funcs.el --- vue Layer functions File for Spacemacs
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Takeshi Tsukamoto <itometeam@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun spacemacs//vue-setup-web-mode ()
  "Setup web mode indent offset"
  (setq web-mode-script-padding 0
        web-mode-style-padding 0
        web-mode-block-padding 0
        web-mode-enable-auto-pairing t))

(defun spacemacs//vue-setup-lsp-mode ()
  "Setup lsp mode"
  (if (configuration-layer/layer-used-p 'lsp)
      (lsp)
    (message "`lsp' layer is not installed, please add `lsp' layer to your dotfile.")))
