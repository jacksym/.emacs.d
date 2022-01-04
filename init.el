;; Jack Symonds .emacs.d/init.el

;; (tooltip-mode 0)
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
;; (desktop-save-mode 1)
(setq use-dialog-box nil)
(show-paren-mode 1) (setq show-paren-delay 1)
(setq make-backup-files nil)

(set-default 'truncate-lines t)

(setq scroll-conservatively 101)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)

(global-set-key (kbd "C-S-v") 'clipboard-yank)
(global-set-key (kbd "C-S-c") 'clipboard-kill-ring-save)


;; Doc View?
(setq doc-view-resolution 400)
(setq doc-view-continuous t)




(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))

(defun jack-toggle-serif ()
  (interactive)
  (if (get 'jack-toggle-serif 'state)
      (progn
	(set-frame-font "Monego 14" t t)
        (put 'jack-toggle-serif 'state nil))
    (progn
	(set-frame-font "Liberation Serif 14" t t)
	(put 'jack-toggle-serif 'state t))))

(global-set-key (kbd "C-x T") 'jack-toggle-serif)


(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


(define-key global-map (kbd "M-SPC") 'ace-jump-mode)
(ivy-mode t)
(require 'ein)
(setq ein:output-area-inlined-images t)
(require 'which-key)
(which-key-mode t)
;; (global-flycheck-mode t)

(load-file "~/.emacs.d/lang.el")
(load-file "~/.emacs.d/evil.el")

;; (setq default-terminal-emulator '(term "/bin/bash"))
;; (defun my-term () (interactive) (term "/bin/bash"))


(dolist (mode '(which-key-mode ivy-mode visual-line-mode eldoc-mode abbrev-mode))
  (setcar (alist-get mode minor-mode-alist) ""))



(defun my-term () (interactive) (eshell))
(global-set-key (kbd "C-M-S") 'my-term)

(global-set-key (kbd "C->") 'find-file)

;; (global-set-key (kbd "M-B") 'windmove-left)
;; (global-set-key (kbd "M-N") 'windmove-down)
;; (global-set-key (kbd "M-P") 'windmove-up)
;; (global-set-key (kbd "M-F") 'windmove-right)
;; (global-set-key (kbd "C-M-B") 'windmove-left)
;; (global-set-key (kbd "C-M-N") 'windmove-down)
;; (global-set-key (kbd "C-M-P") 'windmove-up)
;; (global-set-key (kbd "C-M-F") 'windmove-right)

;; (global-set-key (kbd "C-.") ')


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes 'nil)
 '(frame-background-mode nil)
 '(package-selected-packages
   '(evil-collection lsp-ui company projectile lsp-mode ace-jump-mode ein which-key flycheck s request evil counsel)))
(put 'scroll-left 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
