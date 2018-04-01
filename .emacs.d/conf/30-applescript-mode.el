(use-package applescript-mode
  :ensure t
  :mode (("\\.applescript$" . applescript-mode))
  :bind (:map as-mode-map
              ("M-p" . 'quickrun))
  :defer t
  :config
  (add-to-list 'quickrun--language-alist
               '("applescript" . ((:command . "osascript")
                                  (:description . "Run AppleScript"))))
  (add-hook 'applescript-mode-hook
            (lambda nil
              (setq quickrun-option-cmdkey "applescript"))))

