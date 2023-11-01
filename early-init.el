;; Jack Symonds early-init.el
;;; Code:
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; (tooltip-mode -1)

(set-face-attribute 'default nil :family "Monego" :height 140)

(setq scroll-bar-width 8)
(setq scroll-bar-height 8)

(load-file "~/.emacs.d/modeline.el")

;; (global-tab-line-mode)
;; (tab-bar-mode)
(setq tab-line-new-button-show nil)
(setq tab-line-close-button-show nil)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; (load-theme 'dracula t)
;; (load-theme 'tokyo-night t)
;; (load-theme 'solarized-dark t)
;; (load-theme 'monokai t)
;; (load-theme 'gruvbox t)
(load-theme 'after-black t)
