;; Jack Symonds Python configuration


(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(python-mode . ("pyright"))))


(add-hook 'python-mode-hook
	(lambda ()
	(display-line-numbers-mode t)
	(hl-line-mode t)
	(electric-pair-local-mode t)
	(flymake-mode)
	))

(add-hook 'python-mode-hook (lambda ()
	(setq whitespace-style
		'(face spaces space-mark trailing)
		)
	(whitespace-mode t)
	;; (set-face-attribute 'whitespace-tab nil :foreground "gray" :background "unspecified")
	(set-face-attribute 'whitespace-space nil :foreground "gray" :background "unspecified")
	))

;; (add-hook 'python-mode-hook 'eglot-ensure)

(setq python-shell-interpreter "python3")



;; one-button-compile
;; get path of current C++ file
;; !shell-exists open shell in window below
;; if shell exists but not open, open shell in window below
;; got to shell buffer
;; check if current directory is 'path'/../build
