;; Jack Symonds Python configuration


(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(python-mode . ("pylsp"))))

;; (add-to-list 'treesit-language-source-alist
;; 			 '(python "https://github.com/tree-sitter/tree-sitter-python.git")
;; 			 )

(setq python-indent-offset 4)
;; (setq python-indent-offset 'tab-width)
(setq python-indent-guess-indent-offset-verbose nil)

;; (add-to-list 'major-mode-remap-alist '(python-mode . python-ts-mode))

(defun python-settings ()
	(display-line-numbers-mode t)
	;; (hl-line-mode t)
	(electric-pair-local-mode t)
	;; (flymake-mode)
	(company-mode)
	;; (eglot-ensure)

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


(defun execute-python-in-shell ()
  "Append 'python {filepath}' to a shell buffer and execute the command."
  (interactive)
  (let ((file-path (buffer-file-name)))
    (if (and file-path (file-exists-p file-path))
        (progn
          (let* ((shell-buffer-name "*shell*")
                 (shell-buffer (get-buffer shell-buffer-name))
                 (python-command (format "python %s" file-path)))
            (if (not shell-buffer)
                (progn
                  (shell)
                  (setq shell-buffer (get-buffer shell-buffer-name))))
            (with-current-buffer shell-buffer
              (goto-char (point-max))
              (insert python-command)
              (comint-send-input)
			  (end-of-buffer))))
      (message "Buffer is not associated with a file or file doesn't exist."))))


;; one-button-compile
;; get path of current C++ file
;; !shell-exists open shell in window below
;; if shell exists but not open, open shell in window below
;; got to shell buffer
;; check if current directory is 'path'/../build
