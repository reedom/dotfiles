(use-package css-mode
  :mode (("\\.scss$" . css-mode))
  :defer t
  :config
  (add-hook 'css-mode-hook
            (lambda ()
              (set (make-variable-buffer-local 'css-indent-offset) 2))))
