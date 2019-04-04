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
        ))

(defun vue/post-init-company ()
  "backend specific"
  (spacemacs|add-company-backends
    :backends company-lsp
    :modes vue-mode
    :variables company-minimum-prefix-length 2)
  (company-mode))

(defun vue/pre-init-prettier-js ()
  (add-to-list 'spacemacs--prettier-modes 'vue-mode))

(defun vue/post-init-smartparens ()
  (add-hook 'vue-mode-hook (lambda () (smartparens-mode))))

(defun vue/post-init-lsp-mode ()
  (add-hook 'vue-mode-hook #'spacemacs//vue-setup-lsp-mode))

(defun vue/post-init-web-mode ()
  (define-derived-mode vue-mode web-mode "vue")
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
  (add-hook 'vue-mode-hook #'spacemacs//vue-setup-web-mode)
  (spacemacs/declare-prefix-for-mode 'vue-mode "mg" "goto"))

(defun vue/post-init-flycheck ()
  (spacemacs/enable-flycheck 'vue-mode))
