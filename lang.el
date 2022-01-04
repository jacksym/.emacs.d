;; Languages Init Configuration
;; Jack Symonds


;; EMACS LISP
(add-hook 'emacs-lisp-mode-hook (lambda ()
	  (display-line-numbers-mode t)
	  (hl-line-mode t)
	  (electric-pair-local-mode t)
	  ))

;; LISP
(add-hook 'lisp-mode-hook (lambda ()
	  (display-line-numbers-mode t)
	  (hl-line-mode t)
	  (electric-pair-local-mode t)
	  ))

;; C
(add-hook 'c-mode-hook (lambda ()
	(display-line-numbers-mode t)
	(hl-line-mode t)
	(electric-pair-local-mode t)
	))

;;C++
(add-hook 'c++-mode-hook (lambda ()
	(display-line-numbers-mode t)
	;; (visual-line-mode nil)
	;; (toggle-truncate-lines)
	(hl-line-mode t)
	(electric-pair-local-mode t)
	(company-mode)
	))
(add-hook 'c++-mode-hook #'lsp)
;; (add-hook 'c++-mode-hook (lambda ()
    ;; (company-mode)
    ;; ))

;; PYTHON
(add-hook 'python-mode-hook (lambda ()
	(display-line-numbers-mode t)
	(hl-line-mode t)
	(electric-pair-local-mode t)
	))

(setq python-shell-interpreter "python3")

(defun my-shell-python ()
  (interactive)
  ;; (save-buffer)
  (shell-command-on-region (point-min) (point-max) "python3"))

;; (add-hook 'python-mode-hook #'lsp)




;; LaTeX
(add-hook 'latex-mode-hook (lambda ()
	(display-line-numbers-mode 1)
	(visual-line-mode 1)
	;; (hl-line-mode 1)
	))

(setq LaTeX-indent-environment-list '())
(setq LaTeX-indent-level 0)
(setq LaTeX-item-indent 0)
(setq latex-run-command "pdflatex")

(defun my-compile-latex () (interactive)
       (save-buffer)
       (save-window-excursion (tex-file))
       )



(setq lsp-ui-doc-enable nil)
;; (setq lsp-ui-doc-position 'bottom)
;; (setq lsp-ui-doc-show-with-mouse t)
;; (setq lsp-ui-doc-max-height 8)
;; (setq lsp-ui-doc-max-width 100)
;; (setq lsp-ui-doc-delay 5)
(setq company-idle-delay 0.0)

;; (add-hook 'company-mode (
;; (global-set-key (kbd "TAB") #'company-indent-or-complete-common)
;; ))
