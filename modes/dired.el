;; Jack Symonds DIRED customization



(setq dired-listing-switches "-AlXhG --group-directories-first")
;; (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)
;; (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)
;; (define-key dired-mode-map (kbd "<mouse-1>") 'dired-find-alternate-file)

;; (setq dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$")

(setq dired-dwim-target t)


(add-hook 'dired-mode-hook (lambda ()
							(hl-line-mode t)
							;; (dired-hide-details-mode)
							(setq mouse-1-click-follows-link nil)
							))
