(defun align-comma (start end c)
  "Repeat alignment with a character padded with spaces for
comma-separated columns."
  (interactive "r\nsAlign character: ")
  (align-regexp start end
                (concat c "\\(\\s-*\\)") 1 1 t))
