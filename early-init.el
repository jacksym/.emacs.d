;; Jack Symonds early-init.el

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; (tooltip-mode -1)

(set-face-attribute 'default nil :family "Monego" :height 140)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require 'package)
(package-initialize)
(require 'doom-themes)

;; (load-theme 'doom-solarized-dark t)
;; (load-theme 'doom-dracula t)
(load-theme 'doom-tokyo-night t)
;; (load-theme 'doom-monokai-classic t)


(require 'doom-modeline)
(doom-modeline-mode 1)

