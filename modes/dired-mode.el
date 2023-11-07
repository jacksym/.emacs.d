;; Jack Symonds DIRED customization

(setq dired-listing-switches "-agoXh --group-directories-first")
;; (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)
;; (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)

(add-hook 'dired-mode-hook (lambda ()
							 (hl-line-mode t)
							 ))
