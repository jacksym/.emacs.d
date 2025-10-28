;; Jack Symonds .emacs.d/init.el

(log-init-time "beginning of init.el")

(tooltip-mode 0)
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
;; (desktop-save-mode 1)
(setq use-dialog-box nil)
(show-paren-mode 1) (setq show-paren-delay 1)
(setq make-backup-files nil)
(setq default-directory "~/")
(setq project-mode-line t)
(column-number-mode)


(setq next-screen-context-lines 25)
(setq case-fold-searcht t)
(setq isearch-lazy-highlight nil)

(set-default 'truncate-lines t)

;; (pixel-scroll-precision-mode 1)
;; (setq pixel-scroll-precision-use-momentum t)
;; (setq pixel-scroll-precision-large-scroll-height 40.0)
;; (setq scroll-step 1)
(setq scroll-margin 2)
(setq auto-window-vscroll nil)
(setq hscroll-margin 16)
(setq scroll-conservatively 101)
(setq mouse-wheel-tilt-scroll t)
(setq mouse-wheel-flip-direction t)
(setq mouse-wheel-progressive-speed nil)


(electric-indent-mode nil)
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq tab-width 4)
(setq backward-delete-char-untabify-method 'hungry)

(if (window-system)
	(set-frame-height (selected-frame) 25))



(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))

(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-horizontally)

(setq recentf-auto-cleanup 'never)
(recentf-mode 1)
(setq recentf-max-menu-items 5)


(cond
 ((eq system-type 'windows-nt)
				(add-to-list 'exec-path "C:/cygwin64/bin")
				(setq grep-program "C:/cygwin64/bin/grep.exe")
				(setq find-program "C:/cygwin64/bin/find.exe")
	)
 ((eq system-type 'darwin)
    (if (eq window-system 'ns)
								(menu-bar-mode 1)
				)
				(require 'ls-lisp)
				(setq ls-lisp-dirs-first nil)
				(setq ls-lisp-use-insert-directory-program nil)
				(setq ns-command-modifier 'control)
				(setq ns-option-modifier 'meta)
				(setq ns-control-modifier 'super)
				(setq ns-function-modifier 'hyper)
				(setq explicit-shell-file-name "/bin/zsh")
	)
 ((eq system-type 'gnu/linux)
  )
)


;; (package-initialize)
(use-package evil
  :ensure t
  :config
  (load "~/.emacs.d/evil.elc")
  (evil-mode 1)
  )


;; (use-package company
;;   :defer t
;;   :ensure t
;;   :init
;; 	(setq company-idle-delay 0.0)
;; 	(setq company-minimum-prefex-length 1)
;; )

(defvar mode-dir "~/.emacs.d/modes")
(dolist (file (directory-files mode-dir t "\\.el$"))
  (load file nil t)
  )

;; (setq-default whitespace-style '(face indentation trailing-whitespace space-mark tab-mark))
(setq-default tab-width 1)
(setq-default whitespace-style '(face indentation))

;; (setq-default whitespace-space-regexp "\\(^ +\\)")
(add-hook 'prog-mode-hook (lambda ()
    (display-line-numbers-mode t)
    (electric-pair-local-mode t)
    (whitespace-mode)
				(company-mode)
	))


(print (emacs-init-time))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ede-project-directories '("c:/Users/jackj/test_repo"))
 '(frame-background-mode nil)
 '(ispell-dictionary nil)
 '(package-selected-packages '(company eglot evil s stol-mode)))
(put 'scroll-left 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
