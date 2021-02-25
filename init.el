;; jack Symonds .emacs.d/init.el

;; (tooltip-mode 0)
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)


(set-register ?i '(file . "~/.emacs.d/init.el"))
(set-register ?e '(file . "~/.emacs.d/early-init.el"))
(set-register ?h '(file . "~/pyhe/hello.py"))

(setq scroll-conservatively 101)
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)

(global-set-key (kbd "C-S-v") 'clipboard-yank)
(global-set-key (kbd "C-S-c") 'clipboard-kill-ring-save)

(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))

(global-visual-line-mode 1)

(add-hook 'emacs-lisp-mode-hook (lambda ()
	  (display-line-numbers-mode 1)
	  (visual-line-mode 0)
	  (toggle-truncate-lines)
	  (hl-line-mode 1)
	  ))

;; (add-hook 'latex-mode-hook (lambda ()
			     ;; (display-line-numbers-mode 1)
			     ;; (visual-line-mode 1)
		 	     ;; (hl-line-mode 1)
			     ;; ))

(add-hook 'python-mode-hook (lambda ()
			      (display-line-numbers-mode 1)
			      (visual-line-mode 0)
			      (toggle-truncate-lines)
			      (hl-line-mode 1)
			      ))


(setq python-shell-interpreter "python3")
(setq latex-run-command "pdflatex")
(setq LaTeX-indent-environment-list '())
(setq LaTeX-indent-level 0)
(setq LaTeX-item-indent 0)


(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(ivy-mode 1)
;; (evil-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(s request popup evil counsel company chess auctex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
