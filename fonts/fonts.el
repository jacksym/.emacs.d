

(cond
 ((eq system-type 'windows-nt)
	;; (set-face-attribute 'default nil :family "Monego" :height 140))
	(set-face-attribute 'default nil :family "Consolas" :height 140))
 ((eq system-type 'darwin)
	(set-face-attribute 'default nil :family "Monaco" :height 120))
 ((eq system-type 'gnu/linux)
    (set-face-attribute 'default nil :family "Liberation Mono" :height 120))
  ;; (load-file "~/.emacs.d/linux-evil.el"))
)


;; (add-to-list 'load-path "~/.emacs.d/fonts/all-the-icons/")
;; (when (display-graphic-p)
;;   (require 'all-the-icons))


;; (add-hook 'dired-mode-hook (lambda ()
;; 	(all-the-icons-dired-mode)
;; ))
;; (set-face-attribute 'all-the-icons-dired-dir-face nil :background "unspecified")
