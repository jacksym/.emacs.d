;; Languages Init Configuration
;; Jack Symonds

;; LSP
;; python3	--> python3-pylsp
;; C++		--> clangd

(global-company-mode)
(setq company-global-modes '(python-mode c++-mode emacs-lisp-mode))
(setq company-idle-delay 0.0)
(setq company-minimum-prefex-length 1)

(with-eval-after-load 'company
  (define-key company-active-map
              (kbd "TAB")
              #'company-complete-common-or-cycle)
  (define-key company-active-map
              (kbd "<backtab>")
              (lambda ()
                (interactive)
                (company-complete-common-or-cycle -1))))

;; (global-set-key (kbd "<tab>") #'company-indent-or-complete-common)
;; (global-set-key (kbd "TAB") #'company-indent-or-complete-common)


;; (local-set-key [mouse-1] 'dired-find-file)
(add-hook 'buffer-menu-mode-hook (lambda () (hl-line-mode t)))


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
	(local-set-key (kbd "C-c C-c") 'eval-buffer)
	  ))

;; (local-set-key (kbd "C-c C-c") 'eval-buffer)


;; C
(add-hook 'c-mode-hook (lambda ()
	(display-line-numbers-mode t)
	(hl-line-mode t)
	(electric-pair-local-mode t)
	;; #'tree-sitter-mode	
	))

;;C++
(add-hook 'c++-mode-hook (lambda ()
	(display-line-numbers-mode t)
	;; (visual-line-mode nil)
	;; (toggle-truncate-lines)
	(hl-line-mode t)
	(electric-pair-local-mode t)
	(company-mode)
	(flycheck-mode t)
	;; #'tree-sitter-mode	
	))
(add-hook 'c++-mode-hook 'eglot-ensure)


;; (add-hook 'c++-mode-hook (lambda ()
    ;; (company-mode)
    ;; ))


;; PYTHON
(add-hook 'python-mode-hook
	(lambda ()
	(display-line-numbers-mode t)
	(hl-line-mode t)
	(electric-pair-local-mode t)
	(flycheck-mode t)
	))
(add-hook 'python-mode-hook 'eglot-ensure)

(setq python-shell-interpreter "python3")

(defun my-shell-python ()
  (interactive)
  ;; (save-buffer)
  (shell-command-on-region (point-min) (point-max) "python3"))



;; one-button-compile
;; get path of current C++ file
;; !shell-exists open shell in window below
;; if shell exists but not open, open shell in window below
;; got to shell buffer
;; check if current directory is 'path'/../build
;; if not do nothing



(defun jack-one-compile ()
(if (get-buffer "*eshell*")
(message "get buffer works; this buffer is %s" (buffer-name))
)
)


;;SQL
(setq sql-mysql-login-params
      '((user :default "mysql")
      (database :default "mysql")
      (server :default "localhost")
      (port :default 3306))
)
(add-hook 'sql-mode (lambda ()
                      (company-mode)
                      ))






;; LaTeX
(add-hook 'latex-mode-hook (lambda ()
	(display-line-numbers-mode 1)
	(visual-line-mode 1)
	(flyspell-mode)
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

;; PDF
;; (add-hook 'pdf-view-hook
(add-hook 'doc-view-hook
;; 'doc-view-fit-width-to-window
'doc-view-fit-page-to-window
)


;; SES

(setq ses-after-entry-functions '(next-line))
(setq ses-initial-column-width 10)
(setq ses-initial-size '(50 . 5))
(add-hook 'ses-mode-hook
	(lambda ()
	(hl-line-mode t)
	))
	
;; CSV

(add-hook 'csv-mode-hook
	(lambda ()
	(hl-line-mode t)
	))


