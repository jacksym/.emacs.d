;; Jack Symonds DIRED customization

(load-file "~/Downloads/all-the-icons-dired/all-the-icons-dired.el")
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
;; (setq all-the-icons-dired)
(set-face-attribute 'all-the-icons-dired-dir-face nil :background "unspecified")


(setq dired-listing-switches "--group-directories-first")
;; (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)
;; (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)
;; (define-key dired-mode-map (kbd "<mouse-1>") 'dired-find-alternate-file)

(setq dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$")



(add-hook 'dired-mode-hook (lambda ()
							 (hl-line-mode t)
							(dired-hide-details-mode)
							;; (set-face-attribute 'default t :family "Arial")
							;; (set-frame-font "Arial"  nil t)
							(buffer-face-set :family "Arial")
							(setq mouse-1-click-follows-link nil)
							 ))
