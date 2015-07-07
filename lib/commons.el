(defun recentf-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

(defun save-all ()
  "Same unsaved buffers"
  (interactive)
  (save-some-buffers t))

(defun open-in-chrome ()
  (interactive)
  (when buffer-file-name
    (shell-command (concat
		    "open -a \"Google Chrome\""
                    " "
                    (shell-quote-argument buffer-file-name)))))

(provide 'commons)

