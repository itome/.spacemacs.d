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
    (lsp-dart :requires lsp-mode)
    ))

(defun dart/show-buffer ()
  "Shows information at point on a new buffer"
  (interactive)
  (dart-show-hover 't))

(defun dart/init-lsp-dart ()
  (use-package lsp-dart
    :config
    (progn
      (add-to-list 'exec-path "~/.pub-cache/bin")
      (add-hook 'dart-mode-hook #'lsp-dart-enable))))

(defun dart/post-init-company ()
  (add-hook 'dart-mode-hook #'spacemacs//dart-setup-lsp-company)
  (spacemacs|add-company-backends
    :backends (company-files)
    :modes dart-mode
    :variables company-minimum-prefix-length 1)
  )

(defun dart/init-dart-mode ()
  (use-package dart-mode
    :defer t
    :mode "\\.dart\\'"
    :init
    (progn
      (spacemacs/declare-prefix-for-mode 'dart-mode "mf" "find")
      (spacemacs/declare-prefix-for-mode 'dart-mode "mh" "help")
      (spacemacs/set-leader-keys-for-major-mode 'dart-mode
        "=" 'dart-format
        "gg" 'dart-goto
        "hh" 'dart-show-hover
        "hb" 'dart/show-buffer
        "gu" 'dart-find-refs
        "ge" 'dart-find-member-decls
        "gr" 'dart-find-member-refs
        "gd" 'dart-find-top-level-decls)

      (add-to-list 'spacemacs-jump-handlers-dart-mode '(dart-goto :async t))

      (evil-define-key 'insert dart-mode-map
        (kbd "<tab>") 'dart-expand
        (kbd "C-<tab>") 'dart-expand-parameters)

      (evil-set-initial-state 'dart-popup-mode 'motion)
      (evil-define-key 'motion dart-popup-mode-map
        (kbd "gr") 'dart-do-it-again))))

(defun dart/post-init-flycheck ()
  (spacemacs/enable-flycheck 'dart-mode))

;;; packages.el ends here
