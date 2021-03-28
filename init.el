;; jack Symonds .emacs.d/init.el

;; (tooltip-mode 0)
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

(global-visual-line-mode t)

(setq scroll-conservatively 101)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)

(global-set-key (kbd "C-S-v") 'clipboard-yank)
(global-set-key (kbd "C-S-c") 'clipboard-kill-ring-save)


(set-register ?i '(file . "~/.emacs.d/init.el"))
(set-register ?e '(file . "~/.emacs.d/early-init.el"))
(set-register ?h '(file . "~/prj/pl.py"))

(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))


(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(ivy-mode t)
(require 'ein)
(setq ein:output-area-inlined-images t)
(require 'which-key)
(which-key-mode t)
(evil-mode t)
(evil-set-leader 'normal (kbd "SPC"))
(evil-define-key 'normal 'global
  (kbd "<leader> h") 'windmove-left
  (kbd "<leader> j") 'windmove-down
  (kbd "<leader> k") 'windmove-up
  (kbd "<leader> l") 'windmove-right
  (kbd "<leader> H") 'evil-window-move-far-left
  (kbd "<leader> J") 'evil-window-move-very-bottom
  (kbd "<leader> K") 'evil-window-move-very-top
  (kbd "<leader> L") 'evil-window-move-far-right
  )



;; (setq lsp-ui-doc-enable nil)
;; (setq lsp-ui-doc-position 'bottom)
;; (setq lsp-ui-doc-show-with-mouse t)
;; (setq lsp-ui-doc-max-height 8)
;; (setq lsp-ui-doc-max-width 100)
;; (setq lsp-ui-doc-delay 5)
;; (setq company-idle-delay 0.0)
;; (global-set-key (kbd "TAB") #'company-indent-or-complete-common)


(add-hook 'emacs-lisp-mode-hook (lambda ()
	  (display-line-numbers-mode t)
	  (visual-line-mode nil)
	  (toggle-truncate-lines)
	  (hl-line-mode t)
	  (electric-pair-local-mode t)
	  ))

;; (add-hook 'latex-mode-hook (lambda ()
			     ;; (display-line-numbers-mode 1)
			     ;; (visual-line-mode 1)
		 	     ;; (hl-line-mode 1)
			     ;; ))
(setq LaTeX-indent-environment-list '())
(setq LaTeX-indent-level 0)
(setq LaTeX-item-indent 0)
(setq latex-run-command "pdflatex")


(add-hook 'python-mode-hook (lambda ()
			      (display-line-numbers-mode t)
			      (visual-line-mode nil)
			      (toggle-truncate-lines)
			      (hl-line-mode t)
			      (electric-pair-local-mode t)
			      ))
;; (add-hook 'python-mode-hook #'lsp)

(setq python-shell-interpreter "python3")

(defun my-restart-python-console ()
  "Restart python console before evaluate buffer or region to avoid various uncanny conflicts, like not reloding modules even when they are changed"
  (interactive)
  (if (get-buffer "*Python*")
      (let ((kill-buffer-query-functions nil)) (kill-buffer "*Python*")))
  (run-python)
  ;; (other-window -1)
  ;; (python-shell-send-buffer)
)

(global-set-key (kbd "C-c C-x C-c") 'my-restart-python-console)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("80d5a22931c15756b00fb258b80c93b8bc5096bb698dadfb6155ef3550e1c8fb" "f5a7e07642decb17b03483af7c44e93353d2b128de403bf301651954c628c0ab" "811fb81ee23af5a6480e0bc6bb4a56735dbee233aa5f13fe1f4b407de3e057c9" default))
 '(magit-diff-use-overlays nil)
 '(nil nil t)
 '(package-selected-packages
   '(ein which-key flycheck s request evil counsel chess auctex)))
(put 'scroll-left 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
