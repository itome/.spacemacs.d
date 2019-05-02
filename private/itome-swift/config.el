;;; config.el --- swift Layer configuration File for Spacemacs
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Takeshi Tsukamoto <itometeam@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; Variables

(spacemacs|define-jump-handlers swift-mode)

(defvar swift-sourcekit-toolchain-path ""
  "The source kit toolchain path")

(defvar swift-sourcekit-lsp-executable ""
  "The sourcekit-lsp executable path")
