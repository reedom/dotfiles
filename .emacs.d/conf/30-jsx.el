(use-package web-mode
  :mode (("\\.jsx$" . web-mode))
  :defer t
  :init
  (defadvice web-mode-highlight-part (around tweak-jsx activate)
    (if (equal web-mode-content-type "jsx")
        (let ((web-mode-enable-part-face nil))
          ad-do-it)
      ad-do-it)))
