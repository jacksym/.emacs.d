;; Jack Symonds .emacs.d/init.el

(tooltip-mode 0)
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
(setq mouse-wheel-tilt-scroll t)

(setq backward-delete-char-untabify-method 'hungry)
(setq-default indent-tabs-mode nil)
;; (global-set-key (kbd "TAB") 'tab-to-tab-stop)
(setq-default tab-width 4)
(setq tab-width 4)


(global-set-key (kbd "C-S-v") 'clipboard-yank)
(global-set-key (kbd "C-S-c") 'clipboard-kill-ring-save)


(setq dired-listing-switches "-algoXh --group-directories-first")

;; (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)
;; (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)

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


(ivy-mode t)
(require 'ein)
(setq ein:output-area-inlined-images t)
(setq ein:slice-image t)

(require 'which-key)
(which-key-mode t)
;; (global-flycheck-mode t)

(load-file "~/.emacs.d/lang.el")
(load-file "~/.emacs.d/evil.el")
(load-file "~/.emacs.d/emacs-key.el")



(dolist (mode '(which-key-mode ivy-mode visual-line-mode eldoc-mode abbrev-mode))
  (setcar (alist-get mode minor-mode-alist) ""))

;; (setcar (alist-get dired-mode minor-mode-alist) "Dired")


(defun jack-prose-mode ()
  (interactive)
  (set-frame-font "Liberation Serif 14" t t)
  (put 'jack-toggle-serif 'state t)
  (visual-line-mode)
  (text-scale-adjust 2)
  (writeroom-mode))


(cmake-ide-setup)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("ff375cb365f7797dc6fdeabcce5aacefb3faa8c7877b6108f21dea9145e51382" "79792f78ed3a9a3ecc5865a3ecfeb79b6e8ee6f3321f3ff841c292570cf2d4d5" "80d5a22931c15756b00fb258b80c93b8bc5096bb698dadfb6155ef3550e1c8fb" "068094823c93de12cfa966207b80ffe155cfbe816e7d6e1abbd2a05aa2820f23"))
 '(frame-background-mode nil)
 '(package-selected-packages
   '(cmake-ide writeroom-mode multiple-cursors evil-collection lsp-ui company projectile lsp-mode ace-jump-mode ein which-key flycheck s request evil counsel)))
(put 'scroll-left 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
