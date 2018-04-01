(use-package flycheck
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-flycheck-mode)
  :config
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

(use-package flycheck-pos-tip
  :ensure t
  :config
  (flycheck-pos-tip-mode))

;;  (custom-set-variables
;;   '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))



