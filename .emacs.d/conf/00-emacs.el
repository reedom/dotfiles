;; relates to emacs system

;; less frequent garbage collection
(setq gc-cons-threshold 50000000)
(setq gnutls-min-prime-bits 4096)

;; backup files
(setq backup-directory-alist '(("." . "~/.saves"))
      backup-by-copying t
      delete-old-versions t
      kept-new-versions 10
      kept-old-versions 2
      version-control t)

;; auto revert if file changes on disk
(global-auto-revert-mode)

(use-package dash
  :ensure t
  :config (eval-after-load "dash" '(dash-enable-font-lock)))

(use-package s
  :ensure t)

(use-package f
  :ensure t)

(fset 'yes-or-no-p 'y-or-n-p)

(if (eq system-type 'darwin)
    (setq process-environment
          (mapcar (lambda (entry)
                    (if (string-match "^PATH=" entry)
                        (replace-regexp-in-string "^PATH=" "PATH=/usr/local/bin:" entry t)
                      entry)
                    )
                  process-environment))
  (add-to-list 'exec-path "/usr/local/bin"))

;(setq disabled-command-function nil) ???
