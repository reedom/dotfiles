(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(editorconfig-mode 1)
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(grep-find-command
   (quote
    ("find . -name '*~' -prune -o -name '.git' -prune -o -name '.svn' -prune -o -type f -exec grep -nH -e  {} +" . 101)))
 '(icomplete-mode t)
 '(large-file-warning-threshold nil)
 '(package-selected-packages
   (quote
    (markdown-mode expand-region ace-window fancy-narrow undo-tree which-key plantuml-mode exec-path-from-shell magit-gitflow magit elm-mode auto-complete-config go-autocomplete auto-complete go-guru go-mode flycheck-pos-tip flycheck-pos-tip-mode flymake-go geben applescript-mode coffee-mode quickrun flycheck php-mode editorconfig init-loader f s dash use-package)))
 '(safe-local-variable-values (quote ((Encoding . utf-8))))
 '(show-paren-mode t)
 '(split-height-threshold nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
