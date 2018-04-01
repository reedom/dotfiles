;;; do `chmod +x' after saving script file.
(add-hook 'after-save-hook 'make-file-executable)
(defun make-file-executable ()
  "Make the file of this buffer executable, when it is a script source."
  (save-restriction
    (widen)
    (if (string= "#!" (buffer-substring-no-properties 1 (min 3 (point-max))))
	(let ((name (buffer-file-name)))
	  (or (equal ?. (string-to-char (file-name-nondirectory name)))
	      (let ((mode (file-modes name)))
		(when mode
		  (set-file-modes name (logior mode (logand (/ mode 4) 73)))
		  (message (concat "Wrote " name " (+x)")))))))))
