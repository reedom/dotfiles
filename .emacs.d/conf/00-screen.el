;; relates screen/window

;; font
(set-frame-font "Consolas 14")

;; toolbar
(tool-bar-mode -1) ;; Toolbars were only cool with XEmacs

;; scroll bar
(when (fboundp 'horizontal-scroll-bar-mode)
  (horizontal-scroll-bar-mode -1))
(scroll-bar-mode -1) ;; Scrollbars are waste screen estate

;; scroll
(setq scroll-conservatively 10000
      scroll-preserve-screen-position t)

;; window size
(when window-system
  (add-to-list 'initial-frame-alist (cons 'width 207))
  (add-to-list 'initial-frame-alist (cons 'height 62)))

;; mouse
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; one line at a time
(setq mouse-wheel-progressive-speed nil) ; don't accelerate scrolling
(setq mouse-wheel-follow-mouse t)        ; scroll window under mouse

;; do not blink cursor
(blink-cursor-mode -1)

;; visual bell
(setq visible-bell t)

;; show prefix key in echo area quicker
(setq echo-keystrokes 0.1)

;; transient-mark-mode
(transient-mark-mode t)
(set-face-background 'region "LightYellow2")
(delete-selection-mode 1)

;; show parens without delay
(defvar show-paren-delay)
(setq show-paren-delay 0.0)
(show-paren-mode 1)

;; (setq line-number-display-limit-width 5) ; line number in mode line

(use-package ace-window
  :ensure t
  :bind (("M-o" . 'ace-window))
  :init
    (setq aw-keys '(?a ?s ?d ?f ?j ?k ?l ?o))
  :diminish ace-window-mode)

(defun maximize-frame ()
  "Maximize the current frame size to occupy the current monitor."
  (interactive)
  (let* ((geo (assoc 'geometry (frame-monitor-attributes)))
         (px (nth 3 geo))
         (py (nth 4 geo))
         (fx (frame-char-width))
         (fy (frame-char-height)))
    (modify-frame-parameters nil (list (cons 'width (- (/ px fx) 3))
                                       (cons 'height (- (/ py fy) 3))))))
