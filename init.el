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

(setq doc-view-resolution 400)
(setq doc-view-continuous t)
;; (with)



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
   '("ff375cb365f7797dc6fdeabcce5aacefb3faa8c7877b6108f21dea9145e51382" "c85514b33ffedb58963da19bedac23e370a52822f548f9c8a18f34afd33f8c63" "d4a89e8d54783f8d45c2c68cc6641ea2427f563405fde1f083191b10746fe59f" "ea8115effcfafec2a33528c543d73cafb5303430e293d63a38598e1fc0c1bd0f" "93a57bbb9d374d5641864ad6451d9b16337cf52e9bacc95d87fb6137f07060fc" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" "de16c9db556aabd3288a0a8e67867037cfbf0264af135a9cd06c39f7cf8af061" "269fb39a6eb3696f85bc2e6567e8fd5ee682759929dd72564b9435e43fd07ec1" "e6675d9cb9596abd80f87e5ada63bc9be6f7e05305dc11fc95481e7a670ab512" "80d5a22931c15756b00fb258b80c93b8bc5096bb698dadfb6155ef3550e1c8fb" "f5a7e07642decb17b03483af7c44e93353d2b128de403bf301651954c628c0ab" "a99f0e2da2e592097fd01733d8019956fc49e9ba450c6fb42ae414c427db9e44" "583148e87f779040b5349db48b6fcad6fe9a873c6ada20487e9a1ec40d845505" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11"))
 '(frame-background-mode nil)
 '(package-selected-packages
   '(projectile lsp-mode ace-jump-mode ein which-key flycheck s request evil counsel chess)))
(put 'scroll-left 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
