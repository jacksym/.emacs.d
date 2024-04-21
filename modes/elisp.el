
(add-hook 'emacs-lisp-mode-hook (lambda ()
								  (display-line-numbers-mode t)
								  (electric-pair-local-mode t)
								  (company-mode)
								  ))
