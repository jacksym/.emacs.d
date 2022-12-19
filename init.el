
;; Jack Symonds .emacs.d/init.el
(global-set-key (kbd "C-:") 'comment-line) ;; until emojis go away

(tooltip-mode 0)
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
;; (desktop-save-mode 1)
(setq use-dialog-box nil)
(show-paren-mode 1) (setq show-paren-delay 1)
(setq make-backup-files nil)
(setq default-directory "~/")

(set-default 'truncate-lines t)

(setq scroll-conservatively 1001)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
;; (setq mouse-wheel-tilt-scroll t)
(setq scroll-step 1)
;; (pixel-scroll-mode 1)
;; (setq auto-window-vscroll nil)


(setq-default indent-tabs-mode t)
(global-set-key (kbd "TAB") 'tab-to-tab-stop)
(setq-default tab-width 4)
(setq tab-width 4)
(setq backward-delete-char-untabify-method 'hungry)


(global-set-key (kbd "C-S-v") 'clipboard-yank)
(global-set-key (kbd "C-S-c") 'clipboard-kill-ring-save)


(setq dired-listing-switches "-agoXh --group-directories-first")
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


(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; (package-refresh-contents t)

(ivy-mode t)
;; (require 'which-key)
(which-key-mode t)
;; (global-flycheck-mode t)
;; (god-mode)
;; (global-set-key (kbd "<escape>" #'god-local-mode))



(load-file "~/.emacs.d/emacs-key.el")
(load-file "~/.emacs.d/evil.el")
(load-file "~/.emacs.d/lang.el")


;; (require 'ein)
;; (setq ein:output-area-inlined-images t)
;; (setq ein:slice-image t)


;; (defun jack-prose-mode ()
;;   (interactive)
;;   (set-frame-font "Liberation Serif 14" t t)
;;   (put 'jack-toggle-serif 'state t)
;;   (visual-line-mode)
;;   (text-scale-adjust 2)
;;   (writeroom-mode))


;; (cmake-ide-setup)

(print (emacs-init-time))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("b54376ec363568656d54578d28b95382854f62b74c32077821fdfd604268616a" "a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f" "7ea883b13485f175d3075c72fceab701b5bf76b2076f024da50dff4107d0db25" "1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00" "1aa4243143f6c9f2a51ff173221f4fd23a1719f4194df6cef8878e75d349613d" "8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443" "5586a5db9dadef93b6b6e72720205a4fa92fd60e4ccfd3a5fa389782eab2371b" "991ca4dbb23cab4f45c1463c187ac80de9e6a718edc8640003892a2523cb6259" "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78" "b99e334a4019a2caa71e1d6445fc346c6f074a05fcbb989800ecbe54474ae1b0" "631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "89d9dc6f4e9a024737fb8840259c5dd0a140fd440f5ed17b596be43a05d62e67" "ddffe74bc4bf2c332c2c3f67f1b8141ee1de8fd6b7be103ade50abb97fe70f0c" "a44e2d1636a0114c5e407a748841f6723ed442dc3a0ed086542dc71b92a87aee" "a138ec18a6b926ea9d66e61aac28f5ce99739cf38566876dc31e29ec8757f6e2" "2dd4951e967990396142ec54d376cced3f135810b2b69920e77103e0bcedfba9" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "6c81128ce261cbaca1ff6f6c79b70ed1ace6fb41e0118192a8e156d3d90a2d3e" "ff375cb365f7797dc6fdeabcce5aacefb3faa8c7877b6108f21dea9145e51382" "79792f78ed3a9a3ecc5865a3ecfeb79b6e8ee6f3321f3ff841c292570cf2d4d5" "80d5a22931c15756b00fb258b80c93b8bc5096bb698dadfb6155ef3550e1c8fb" "068094823c93de12cfa966207b80ffe155cfbe816e7d6e1abbd2a05aa2820f23"))
 '(frame-background-mode nil)
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(tree-sitter tree-sitter-langs minimap magit eglot doom-modeline doom-themes cmake-ide evil-collection company projectile which-key flycheck s request evil counsel)))
(put 'scroll-left 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
