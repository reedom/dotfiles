(use-package ruby-mode
  :bind (:map ruby-mode-map
              ("C-m" . 'newline-and-indent)
              ("M-p" . 'quickrun))
  :defer t
  :config
  (progn
    (add-hook 'ruby-mode-hook
              '(lambda nil
                 (and (require 'ruby-electric nil t)
                      (ruby-electric-mode 0))
                 (setq quickrun-option-cmdkey "ruby/ruby")))))


