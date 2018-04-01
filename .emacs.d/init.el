;; package manager

(require 'package)

(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "http://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(package-install-selected-packages)

(require 'use-package)

;; init loader

(require 'cl)
(use-package init-loader
  :ensure t)
(setq init-loader-byte-compile t)
(init-loader-load (expand-file-name "conf" user-emacs-directory))

