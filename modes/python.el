;; Jack Symonds Python configuration


(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(python-mode . ("pylsp"))))

;; (add-to-list 'treesit-language-source-alist
;; 			 '(python "https://github.com/tree-sitter/tree-sitter-python.git")
;; 			 )

;; (add-to-list 'major-mode-remap-alist '(python-mode . python-ts-mode))

(defun python-settings ()
	(display-line-numbers-mode t)
	(hl-line-mode t)
	(electric-pair-local-mode t)
	(flymake-mode)
	(eglot)

	(setq whitespace-style
		'(face spaces space-mark trailing)
		)
	;; (whitespace-mode t)
	;; (set-face-attribute 'whitespace-tab nil :foreground "gray" :background "unspecified")
	;; (set-face-attribute 'whitespace-space nil :foreground "gray" :background "unspecified")
  )

(add-hook 'python-mode-hook 'python-settings)
(add-hook 'python-ts-mode-hook 'python-settings)

;; (add-hook 'python-mode-hook 'eglot-ensure)

(setq python-shell-interpreter "python3")



;; one-button-compile
;; get path of current C++ file
;; !shell-exists open shell in window below
;; if shell exists but not open, open shell in window below
;; got to shell buffer
;; check if current directory is 'path'/../build
