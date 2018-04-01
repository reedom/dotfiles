(bind-key "\r" 'newline-and-indent)
(bind-key "C-j" 'newline-and-indent)
(bind-key "M-r" 'replace-regexp)
(bind-key "C-x C-b" 'ibuffer)
;;(bind-key "M-g" 'goto-line)
;; (bind-key "M-%" 'vr/query-replace)
(bind-key "\C-xk" (lambda ()
			  (interactive)
			  (kill-buffer (current-buffer))))
(bind-key (kbd "<s-return>") 'toggle-frame-fullscreen)



