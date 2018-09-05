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

(setq vue-packages
      '(
        company
        flycheck
        web-mode
        prettier-js
        smartparens
        lsp-mode
        (lsp-vue :requires lsp-mode)
        ))

(defun vue/post-init-company ()
  "backend specific"
  (spacemacs|add-company-backends
    :backends (company-files company-capf)
    :modes vue-mode
    :variables
    company-minimum-prefix-length 1)
  (company-mode))

(defun vue/init-lsp-vue ()
  (use-package lsp-vue
    :config
    (progn
      (add-hook 'vue-mode-hook #'lsp-vue-enable)
      (spacemacs/declare-prefix-for-mode 'vue-mode "mg" "goto")
      (spacemacs/set-leader-keys-for-major-mode 'vue-mode
        "gg" 'lsp-ui-peek-find-definitions
        "gr" 'lsp-ui-peek-find-references))))

(defun vue/pre-init-prettier-js ()
  (add-to-list 'spacemacs--prettier-modes 'vue-mode))

(defun vue/post-init-smartparens ()
  (add-hook 'vue-mode-hook (lambda () (smartparens-mode))))

(defun vue/post-init-lsp-mode ()
  (add-hook 'vue-mode-hook #'spacemacs//vue-setup-lsp-mode))

(defun vue/post-init-web-mode ()
  (define-derived-mode vue-mode web-mode "vue")
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
  (add-hook 'vue-mode-hook #'spacemacs//vue-setup-web-mode))

(defun vue/post-init-flycheck ()
  (spacemacs/enable-flycheck 'vue-mode))
