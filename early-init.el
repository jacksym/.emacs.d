;; Jack Symonds early-init.el
;;; Code:


;; begin of init time logging
(defvar init-start-time (current-time) "Time when init.el started.")
(defvar last-timestamp init-start-time "Time of the last recorded block.")

(defun log-init-time (block-name)
  "Log the time taken since the last recorded timestamp for BLOCK-NAME."
  (let ((now (current-time)))
    (message "[INIT] %s: %.2f seconds since last block, %.2f seconds total."
             block-name
             (float-time (time-subtract now last-timestamp))
             (float-time (time-subtract now init-start-time)))
    (setq last-timestamp now)))
;; end of init time logging

;; (setq package-enable-at-startup nil)

;; (setq gc-cons-threshold most-positive-fixnum)
;; (add-hook 'emacs-startup-hook
;; 		  (lambda () (setq gc-cons-threshold (* 50 1000 1000))))
(log-init-time "beginning of early-init")
(setq frame-inhibit-implied-resize t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; (tooltip-mode -1)

;; (load-file "~/.emacs.d/fonts/fonts.el")
(cond
 ((eq system-type 'windows-nt)
	(set-face-attribute 'default nil :family "Consolas" :height 140))
 ((eq system-type 'darwin)
	(set-face-attribute 'default nil :family "Monaco" :height 120))
 ((eq system-type 'gnu/linux)
    (set-face-attribute 'default nil :family "Liberation Mono" :height 120))
)


(setq scroll-bar-width 8)
(setq scroll-bar-height 8)


;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; (load-theme 'manoj-dark t)
(load-theme 'modus-vivendi t)

;; (load-theme 'manoj-dark t)
;; (load-theme 'dracula t)
;; (load-theme 'tokyo-night t)
;; (load-theme 'solarized-dark t)
;; (load-theme 'shades-of-purple t)
;; (load-theme 'monokai t)
;; (load-theme 'gruvbox t)
;; (load-theme 'after-black t)

(log-init-time "end of early-init")

;; (global-tab-line-mode)
;; (tab-bar-mode)
;; (setq tab-line-new-button-show nil)
;; (setq tab-line-close-button-show nil)

