(defface hi-orange-b
  '((((min-colors 88)) (:weight bold :foreground "orange1"))
    (t (:weight bold :foreground "orange")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)

(defun ha/highlite-logs ()
  "Highlight certain lines in specific files.  Currently, only log files are supported."
  (interactive)
  (when (equal "log" (file-name-extension (buffer-file-name)))
        (hi-lock-mode 1)
        (highlight-lines-matching-regexp "ERROR:" 'hi-red-b)
        (highlight-lines-matching-regexp "WARN:" 'hi-orange-b)
        (highlight-lines-matching-regexp "WARNING:" 'hi-orange-b)
        (highlight-lines-matching-regexp "NOTE:" 'hi-blue-b)))

(add-hook 'find-file-hook 'ha/highlite-logs)
