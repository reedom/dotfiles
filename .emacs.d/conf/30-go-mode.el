(use-package go-mode
  :ensure t
  :defer t
  :bind (:map go-mode-map
              ("M-p" . quickrun)
              ("M-." . godef-jump)
              ("M-R" . go-rename))
  :config
  (use-package go-guru :ensure t)
  (use-package auto-complete :ensure t)
  (use-package go-autocomplete :ensure t)
  (use-package auto-complete-config :ensure t)
  (use-package flymake-go :ensure t)
  (add-hook 'go-mode-hook
            (lambda nil
              (setq tab-width 4)
              (setq indent-tabs-mode t)
              (setq quickrun-option-cmdkey "go/go")
              (set (make-local-variable 'whitespace-style)
                   '(trailing lines space-before-tab empty space-after-tab))
              (add-hook 'before-save-hook 'gofmt-before-save)
              (flymake-mode 1)
              (flycheck-mode 1)
              (auto-complete-mode 1)
              (when (fboundp 'go-guru-hl-identifier-mode)
                (go-guru-hl-identifier-mode))
              ;; skips 'vendor' directories and sets GO15VENDOREXPERIMENT=1
              (setq flycheck-gometalinter-vendor t)
              ;; only run fast linters
              (setq flycheck-gometalinter-fast t)
              ;; use in tests files
              (setq flycheck-gometalinter-tets t)
              ;; disable linters
              (setq flycheck-gometalinter-disable-linters '("gotype" "gocyclo"))
              ;; Only enable selected linters
              (setq flycheck-gometalinter-disable-all t)
              (setq flycheck-gometalinter-enable-linters '("golint"))
              ;; Set different deadline (default: 5s)
              (setq flycheck-gometalinter-deadline "10s"))))

  

;; (use-package flycheck-gometalinter
;;   :ensure t
;;   :config
;;   (progn
;; 	    (flycheck-gometalinter-setup)))

