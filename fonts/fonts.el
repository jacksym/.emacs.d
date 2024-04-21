

(cond
 ((eq system-type 'windows-nt)
	;; (set-face-attribute 'default nil :family "Monego" :height 140))
	(set-face-attribute 'default nil :family "Consolas" :height 160))
 ((eq system-type 'darwin)
	(set-face-attribute 'default nil :family "Monaco" :height 160))
 ;; ((eq system-type 'gnu/linux)
  ;; (load-file "~/.emacs.d/linux-evil.el"))
)


(add-to-list 'load-path "~/.emacs.d/fonts/all-the-icons/")
(when (display-graphic-p)
  (require 'all-the-icons))


(load-file "~/.emacs.d/fonts/all-the-icons-dired.el")
(add-hook 'dired-mode-hook (lambda ()
	(all-the-icons-dired-mode)
	;; (buffer-face-set :family "Arial")
))
;; (set-face-attribute 'all-the-icons-dired-dir-face nil :background "unspecified")
