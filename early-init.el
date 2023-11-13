;; Jack Symonds early-init.el
;;; Code:
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; (tooltip-mode -1)

(cond
 ((eq system-type 'windows-nt)
	(set-face-attribute 'default nil :family "Monego" :height 140))
 ((eq system-type 'darwin)
	(set-face-attribute 'default nil :family "Monaco" :height 160))
 ;; ((eq system-type 'gnu/linux)
  ;; (load-file "~/.emacs.d/linux-evil.el"))
)

(setq scroll-bar-width 8)
(setq scroll-bar-height 8)


;; (global-tab-line-mode)
;; (tab-bar-mode)
(setq tab-line-new-button-show nil)
(setq tab-line-close-button-show nil)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; (load-theme 'manoj-dark t)
;; (load-theme 'dracula t)
(load-theme 'shades-of-purple t)
;; (load-theme 'tokyo-night t)
;; (load-theme 'solarized-dark t)
;; (load-theme 'monokai t)
;; (load-theme 'gruvbox t)
;; (load-theme 'after-black t)
