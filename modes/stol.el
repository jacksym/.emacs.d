;; Jack Symonds DIRED customization

(add-hook 'stol-mode-hook (lambda ()
							(display-line-numbers-mode t)
							(electric-pair-local-mode)
							(hl-line-mode t)
						   (setq tab-width 3)
						   (setq evil-shift-width 3)
						   (setq indent-tabs-mode nil)
						   (setq comment-start "# ")
						   (setq fill-column 120)
						   (display-fill-column-indicator-mode)
						   ))



(setq backward-delete-char-untabify-method 'hungry)

;; (defvar ws-gray "gray22")

(add-hook 'stol-mode-hook (lambda ()
						  (setq whitespace-style
								'(face tabs tab-mark newline newline-mark spaces space-mark trailing)
								)
						  (setq whitespace-line-column 120)
						  (whitespace-mode t)
						  ;; (set-face-attribute 'whitespace-tab nil :foreground "gray" :background "red")
						  ;; (set-face-attribute 'whitespace-space nil :foreground "darkgray" :background "unspecified")
						  ;; (set-face-attribute 'whitespace-newline nil :foreground "darkgray")
						))



;; (setq-default whitespace-style
              ;; '(face spaces empty tabs newline trailing space-mark tab-mark newline-mark))
