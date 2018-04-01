(use-package whitespace
  :bind ("C-c T w" . whitespace-mode)
  :init
  (setq whitespace-action '(auto-cleanup)
        whitespace-line-column nil
        whitespace-display-mappings '((space-mark 32 [183] [46])
                                      (newline-mark 10 [9166 10])
                                      (tab-mark 9 [9654 9] [92 9])))
  :config
  (set-face-attribute 'whitespace-space       nil :foreground "#cccccc" :background nil)
  (set-face-attribute 'whitespace-newline     nil :foreground "#cccccc" :background nil)
  (set-face-attribute 'whitespace-indentation nil :foreground "#cccccc" :background nil)
  :diminish whitespace-mode)
