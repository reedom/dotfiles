(use-package plantuml-mode
  :ensure t
  :mode (("\\.uml$" . plantuml-mode))
  :defer t
  :init
  (setq plantuml-jar-path "/usr/local/Cellar/plantuml/8046/plantuml.8046.jar")
  :config
  (add-hook 'plantuml-mode-hook
            (lambda ()
              (setq tab-width 4)
              (setq indent-tabs-mode nil))))
