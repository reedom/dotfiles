(use-package geben
  :ensure t
  :defer t
  :commands (geben-set-breakpoint-line)
  :config  
  (add-hook 'change-log-mode-hook
            (lambda ()
              (when (string-match "\\bgeben\\b" (buffer-file-name (current-buffer)))
                (set (make-local-variable 'add-log-full-name) "reedom")
                (set (make-local-variable 'user-mail-address) "hanai.tohru@gmail.com")))))
