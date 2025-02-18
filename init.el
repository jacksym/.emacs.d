;; Jack Symonds .emacs.d/init.el


(log-init-time "starting (after log func definition)")

(tooltip-mode 0)
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
(desktop-save-mode 1)
(setq use-dialog-box nil)
(show-paren-mode 1) (setq show-paren-delay 1)
(setq make-backup-files nil)
(setq default-directory "~/")

(log-init-time "very basic settings")

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

(log-init-time "more basic settings (with scroll stuff)")

(setq recentf-auto-cleanup 'never)
(recentf-mode 1)
(setq recentf-max-menu-items 5)

(log-init-time "recentf stuff")

(cond
 ((eq system-type 'windows-nt)
	(add-to-list 'exec-path "C:/cygwin64/bin")
	(setq grep-program "C:/cygwin64/bin/grep.exe")
	(setq find-program "C:/cygwin64/bin/find.exe")
	;; (load-file "~/.emacs.d/evil.el"))
	)
 ((eq system-type 'darwin)
    (if (eq window-system 'ns)
		(menu-bar-mode 1)
	)
	(setq ls-lisp-use-insert-directory-program nil)
	(require 'ls-lisp)
	(setq ns-command-modifier 'control)
	(setq ns-option-modifier 'meta)
	(setq ns-control-modifier 'super)
	(setq ns-function-modifier 'hyper)
	(setq explicit-shell-file-name "/bin/zsh")
	)
 ((eq system-type 'gnu/linux)
  )
)

(log-init-time "OS condition checking")

;; (package-initialize)
(use-package evil
  :ensure t
  :config
  (load "~/.emacs.d/evil.el")
  (evil-mode 1)
  )

(log-init-time "evil bind")

(use-package company
  :defer t
  :ensure t
  :init
	(setq company-idle-delay 0.0)
	(setq company-minimum-prefex-length 1)
)

(defvar mode-dir "~/.emacs.d/modes")
(dolist (file (directory-files mode-dir t "\\.el$"))
  (load file)
  (log-init-time (format "%s" file))
  )

(add-hook 'prog-mode-hook (lambda ()
    (display-line-numbers-mode t)
	(electric-pair-local-mode t)
	(company-mode)
))

(log-init-time "packages and mode files")

;; (add-to-list 'load-path "~/.emacs.d/codeium.el")
;; (use-package codeium
;;   :load-path "~/.emacs.d/codeium.el"
;;   :ensure t
;;   :init
;; 	(add-to-list 'completion-at-point-functions #'codeium-completion-at-point)
;; )
;; (load-file "~/.emacs.d/codeium.el/codeium.el")




(print (emacs-init-time))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(codeium/metadata/api_key "6d36e82d-bf82-4b4c-8440-8fbee76045a3")
 '(frame-background-mode nil)
 '(ispell-dictionary nil)
 '(package-selected-packages '(all-the-icons stol-mode eglot company s evil)))
(put 'scroll-left 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; (setq tsc-dyn-get-from nil)
;; (setq tree-sitter-langs-git-dir nil)
;; (setq tree-sitter-langs--bundle-version "0.12.8")
;; (setq tree-sitter-langs--os "linux")
;; (setq tree-sitter-langs-grammar-dir "~/.emacs.d/elpa/tree-sitter-langs-20221126.446/")
;; (setq tree-sitter-langs--dir "~/.emacs.d/elpa/tree-sitter-langs-20221126.446/")


;; (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)
;; (global-tree-sitter-mode)


;; Doc View?
;; (setq doc-view-resolution 400)
;; (setq doc-view-continuous t)

;; (with-eval-after-load 'minimap
;; 	(setq minimap-window-location "right")
;; 	(setq minimap-width-fraction 0.05)
;; )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
