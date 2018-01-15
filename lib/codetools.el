;; Kudos to http://stackoverflow.com/questions/88399/how-do-i-duplicate-a-whole-line-in-emacs
(defun duplicate-line (arg)
  "Duplicate current line, leaving point in lower line."
  (interactive "*p")
  ;; save the point for undo
  (setq buffer-undo-list (cons (point) buffer-undo-list))
  ;; local variables for start and end of line
  (let ((bol (save-excursion (beginning-of-line) (point))) eol)
    (save-excursion
      (end-of-line)
      (setq eol (point))
      ;; store the line and disable the recording of undo information
      (let ((line (buffer-substring bol eol))
            (buffer-undo-list t)
            (count arg))
        (while (> count 0)
          (newline)         ;; because there is no newline in 'line'
          (insert line)
          (setq count (1- count))))
      (setq buffer-undo-list (cons (cons eol (point)) buffer-undo-list))))
  (next-line arg))


;; Kudos to http://www.emacswiki.org/emacs/NumbersInRegisters
(defun increment-number-at-point ()
  (interactive)
  (skip-chars-backward "0123456789")
  (or (looking-at "[0123456789]+")
      (error "No number at point"))
  (replace-match (number-to-string (1+ (string-to-number (match-string 0))))))

(defun whack-whitespace (arg)
  (interactive "P")
  (let ((regexp "[ \t\n]+"))
    (re-search-forward regexp nil t)
    (replace-match "" nil nil)))

;;http://timothypratley.blogspot.com/2015/07/seven-specialty-emacs-settings-with-big.html
(defun cider-eval-expression-at-point-in-repl ()
  (interactive)
  (let ((form (cider-defun-at-point)))
    ;; Strip excess whitespace
    (while (string-match "\\`\s+\\|\n+\\'" form)
      (setq form (replace-match "" t t form)))
    (set-buffer (cider-get-repl-buffer))
    (goto-char (point-max))
    (insert form)
    (cider-repl-return)))



;; http://emacsredux.com/blog/2013/07/24/highlight-comment-annotations/
(defun font-lock-comment-annotations ()
  "Highlight a bunch of well known comment annotations.

This functions should be added to the hooks of major modes for programming."
  (font-lock-add-keywords
   nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|OPTIMIZE\\|HACK\\|REFACTOR\\)"
          1 font-lock-warning-face t))))

(provide 'codetools)

