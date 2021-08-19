;; Languages Init Configuration
;; Jack Symonds


;; EMACS LISP
(add-hook 'emacs-lisp-mode-hook (lambda ()
	  (display-line-numbers-mode t)
	  (visual-line-mode nil)
	  (toggle-truncate-lines)
	  (hl-line-mode t)
	  (electric-pair-local-mode t)
	  ))


;; C
(add-hook 'c-mode-hook (lambda ()
	(display-line-numbers-mode t)
	(visual-line-mode nil)
	(toggle-truncate-lines)
	(hl-line-mode t)
	(electric-pair-local-mode t)
	))

;;C++
(add-hook 'c++-mode-hook (lambda ()
	(display-line-numbers-mode t)
	(visual-line-mode nil)
	(toggle-truncate-lines)
	(hl-line-mode t)
	(electric-pair-local-mode t)
	(evil-define-key 'normal 'local (kbd "<leader> c") 'my-shell-comp-run)
	))

(add-hook 'c++-mode-hook #'lsp)

(defun my-shell-comp-run ()
  (interactive)
  (save-buffer)
  ;; (shell-command-on-region (point-min) (point-max) "g++")
  (shell-command (concat "g++ " buffer-file-name "&& ./a.out"))
  ;; (shell-command "./a.out")
  )


;; PYTHON
(add-hook 'python-mode-hook (lambda ()
	(display-line-numbers-mode t)
	(visual-line-mode nil)
	(toggle-truncate-lines)
	(hl-line-mode t)
	(electric-pair-local-mode t)
	;; (evil-local-set-key 'normal (kbd "<leader> c") 'my-shell-python)
	(evil-define-key 'normal 'local (kbd "<leader> c") 'my-shell-python)
	))

(setq python-shell-interpreter "python3")

(defun my-shell-python ()
  (interactive)
  ;; (save-buffer)
  (shell-command-on-region (point-min) (point-max) "python3"))
;; (evil-define-key 'normal 'global (kbd "<leader> c") 'my-shell-python)

;; (add-hook 'python-mode-hook #'lsp)

;; Run python and pop-up its shell.
;; Kill process to solve the reload modules problem.
(defun my-python-shell-restart ()
;; Kill process to solve the reload modules problem.
  (interactive)
  (when (get-buffer-process "*Python*")
     (set-process-query-on-exit-flag (get-buffer-process "*Python*") nil)
     (kill-process (get-buffer-process "*Python*"))
     ;; If you want to clean the buffer too.
     ;;(kill-buffer "*Python*")
     ;; Not so fast!
     (sleep-for 0.1))
  (run-python)
  (other-window -1)
  ;; Pop new window only if shell isnt visible
  ;; in any frame.
  (unless (get-buffer-window "*Python*" t) 
    (python-shell-switch-to-shell)))

(eval-after-load "python"
  '(progn
     (define-key python-mode-map (kbd "C-c C-k") 'my-python-shell-restart)
))



;; LaTeX

(setq LaTeX-indent-environment-list '())
(setq LaTeX-indent-level 0)
(setq LaTeX-item-indent 0)
(setq latex-run-command "pdflatex")

;; (setq lsp-ui-doc-enable nil)
;; (setq lsp-ui-doc-position 'bottom)
;; (setq lsp-ui-doc-show-with-mouse t)
;; (setq lsp-ui-doc-max-height 8)
;; (setq lsp-ui-doc-max-width 100)
;; (setq lsp-ui-doc-delay 5)
;; (setq company-idle-delay 0.0)
;; (global-set-key (kbd "TAB") #'company-indent-or-complete-common)


;; (add-hook 'latex-mode-hook (lambda ()
			     ;; (display-line-numbers-mode 1)
			     ;; (visual-line-mode 1)
		 	     ;; (hl-line-mode 1)
			     ;; ))
