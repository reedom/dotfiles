(use-package coffee-mode
  :ensure t
  :defer t
  :bind (:map coffee-mode-map
              ("M-p" . 'quickrun))
  :init
  (add-to-list 'quickrun--language-alist
               '("coffee" . ((:command . "coffee")
                             (:description . "Run coffee-script"))))
  :config
  (add-hook 'coffee-mode-hook
            (lambda ()
              (setq indent-tabs-mode nil)
              (set (make-local-variable 'tab-width) 2)
              (set (make-local-variable 'coffee-tab-width) 2))))

