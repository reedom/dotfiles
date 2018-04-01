(use-package markdown-mode
  :ensure t
  :defer t
  :commands (org-table-begin org-table-end orgtbl-mode)
  :config
  (progn
    (require 'org-table)
    (defun advice:org-table-align:markdown ()
      "Replace \"+\" sign with \"|\" in org-table."
      (save-excursion
        (save-restriction
          (narrow-to-region (org-table-begin) (org-table-end))
          (goto-char (point-min))
          (while (search-forward "-+-" nil t)
            (replace-match "-|-")))))

    (add-hook 'markdown-mode-hook
              (lambda ()
                (defvar whitespace-action)
                (defvar markdown-indent-on-enter)
                (set (make-local-variable 'whitespace-action) nil)
                (setq indent-tabs-mode nil)
                (setq markdown-indent-on-enter nil)
                (orgtbl-mode)
                (advice-add 'org-table-align :after 'advice:org-table-align:markdown)))))

