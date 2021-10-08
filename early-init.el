;; Jack Symonds early-init.el

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; (tooltip-mode -1)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; (add-to-list 'load-path "~/.emacs.d/themes/solarized-themes/solarized-theme.el")
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/solarized-themes")
;; (load-theme 'solarized-dark t)
(load-theme 'dracula t)
;; (load-theme 'monokai t)
;; (load-theme 'autumn-light t)

;; (set-frame-font "Monego-12")

(set-face-attribute 'default nil :family "Monego" :height 140)
