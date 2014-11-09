;; Don't ask for settings
(require 'sql)
(defalias 'sql-get-login 'ignore)

;;;;;;;;;;;;;;;;
;; PostgreSQL ;;
;;;;;;;;;;;;;;;;

;; Provide other options if needed
(setq sql-postgres-options (list "-p 5433"))

;;;;; Functions


;; Save history of commands
(defun my-sql-save-history-hook ()
  (let ((lval 'sql-input-ring-file-name)
	(rval 'sql-product))
    (if (symbol-value rval)
	(let ((filename 
	       (concat "~/.emacs.d/sql/"
		       (symbol-name (symbol-value rval))
		       "-history.sql")))
	  (set (make-local-variable lval) filename))
      (error
       (format "SQL history will not be saved because %s is nil"
	       (symbol-name rval))))))

(add-hook 'sql-interactive-mode-hook 'my-sql-save-history-hook)

(provide 'dbconf)
