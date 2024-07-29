
(require 'sql)

(setq sql-mysql-options '("-t" "-f" "-n" "--compression-algorithms=zlib"))



(setq sql-postgres-options '())

(cond
 ((eq system-type 'windows-nt)
	(setq sql-postgres-program "C:/Program Files/PostgreSQL/16/bin/psql.exe")
	)
 ((eq system-type 'darwin)
	)
)

(add-hook 'sql-mode-hook '(lambda ()
			(display-line-numbers-mode t)
			(electric-pair-local-mode t)
			(company-mode)
			(setq sql-use-indent-support nil)
))

(defun sql-clear-and-send ()
  (interactive)
  (with-current-buffer sql-buffer
	(erase-buffer)
	)
  (sql-send-buffer)
  (with-current-buffer sql-buffer
	(goto-char (point-min))
  )
  )
