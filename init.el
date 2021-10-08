;; Jack Symonds .emacs.d/init.el

;; (tooltip-mode 0)
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
;; (desktop-save-mode 1)
(setq use-dialog-box nil)
(show-paren-mode 1) (setq show-paren-delay 0)
(setq make-backup-files nil)

(global-visual-line-mode t)

(setq scroll-conservatively 101)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)

(global-set-key (kbd "C-S-v") 'clipboard-yank)
(global-set-key (kbd "C-S-c") 'clipboard-kill-ring-save)


(set-register ?i '(file . "~/.emacs.d/init.el"))
(set-register ?e '(file . "~/.emacs.d/early-init.el"))
(set-register ?l '(file . "~/.emacs.d/lang.el"))
(set-register ?h '(file . "~/pyhe/he.py"))

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

(load-file "~/.emacs.d/evil.el")
(load-file "~/.emacs.d/lang.el")

(dolist (mode '(which-key-mode
		ivy-mode
		visual-line-mode
		eldoc-mode
		abbrev-mode
		))
  (setcar (alist-get mode minor-mode-alist) ""))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "80d5a22931c15756b00fb258b80c93b8bc5096bb698dadfb6155ef3550e1c8fb" "f5a7e07642decb17b03483af7c44e93353d2b128de403bf301651954c628c0ab" "811fb81ee23af5a6480e0bc6bb4a56735dbee233aa5f13fe1f4b407de3e057c9" default))
 '(frame-background-mode nil)
 '(nil nil t)
 '(package-selected-packages
   '(projectile lsp-mode ace-jump-mode ein which-key flycheck s request evil counsel chess)))
(put 'scroll-left 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
