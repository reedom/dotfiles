(use-package exec-path-from-shell
  :ensure t
  :init
  (progn
    (exec-path-from-shell-initialize)
    (exec-path-from-shell-copy-envs
     '("PATH"))))
