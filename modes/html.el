


(add-hook 'html-mode-hook (lambda ()
				(display-line-numbers-mode t)
				(electric-pair-local-mode t)
				(company-mode)
))
