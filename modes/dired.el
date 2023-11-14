;; Jack Symonds DIRED customization

(load-file "~/.emacs.d/pkgs/all-the-icons-dired.el")
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
;; (set-face-attribute 'all-the-icons-dired-dir-face nil :background "unspecified")


(setq dired-listing-switches "-al --group-directories-first")
;; (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)
;; (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)
;; (define-key dired-mode-map (kbd "<mouse-1>") 'dired-find-alternate-file)

;; (setq dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$")



(add-hook 'dired-mode-hook (lambda ()
							(hl-line-mode t)
							(dired-hide-details-mode)
							(buffer-face-set :family "Arial")
							(setq mouse-1-click-follows-link nil)
							))
