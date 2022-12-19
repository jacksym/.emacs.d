;; Jack Symonds early-init.el

;;; Code:

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; (tooltip-mode -1)

;; (tab-bar-mode)
(setq tab-bar-new-button-show nil)
(setq tab-bar-close-button-show nil)
(global-set-key (kbd "C-<next>") 'tab-next)
(global-set-key (kbd "C-<prior>") 'tab-previous)
(global-set-key (kbd "C-t") 'tab-new)


(set-face-attribute 'default nil :family "Monego" :height 140)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require 'package)

(setq tsc-dyn-get-from nil)
(setq tree-sitter-langs-git-dir nil)
;; (setq tree-sitter-langs--bundle-version "0.12.8")
;; (setq tree-sitter-langs--os "linux")
(setq tree-sitter-langs-grammar-dir "~/.emacs.d/elpa/tree-sitter-langs-20221126.446/")
;; (setq tree-sitter-langs--dir "~/.emacs.d/elpa/tree-sitter-langs-20221126.446/")

(package-initialize)

(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)
(global-tree-sitter-mode)


;; (load-theme 'doom-solarized-dark t)
(load-theme 'doom-dracula t)
;; (load-theme 'doom-tokyo-night t)
;; (load-theme 'doom-monokai-pro t)
;; (load-theme 'doom-molokai t) ;; like sublime
;; (load-theme 'doom-ir-black t) ;; black background
;; (load-theme 'doom-one t) ;; like atom
;; (load-theme 'doom-1337 t) ;; like vs-code


(doom-modeline-mode 1)


;; (global-tree-sitter-mode)
;; (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

;; (setq minimap-window-location "right")
;; (setq minimap-width-fraction 0.05)
;; (minimap-mode t)

;; (global-tab-line-mode)
;; (global-set-key (kbd "C-<next>") 'tab-line-switch-to-next-tab)
;; (global-set-key (kbd "C-<prior>") 'tab-line-switch-to-prev-tab)
;; ;; (global-set-key (kbd "C-t") 'tab-new)
;; (setq tab-line-new-button-show nil)
;; (setq tab-line-close-button-show nil)
