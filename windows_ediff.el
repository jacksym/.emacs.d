
(let* ((args command-line-args-left)
							(f1 (car args)) (f2 (cadr args)))
				(setq command-line-args-left nil)
				(ediff-files f1 f2))
