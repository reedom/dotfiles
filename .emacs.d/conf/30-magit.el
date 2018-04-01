(use-package magit
  :ensure t
  :bind (("\C-c v" . magit-status))
  :defer t
  :config
  (progn
    (require 'magit-gitflow)
    (setq magit-auto-revert-mode t)
    (add-hook 'magit-mode-hook 'turn-on-magit-gitflow)))

(use-package magit-gitflow
  :ensure t
  :defer t
  :bind (:map magit-gitflow-mode-map
              ("C-f" . 'forward-char )
              ("C-c C-f" . 'magit-gitflow-popup)))
