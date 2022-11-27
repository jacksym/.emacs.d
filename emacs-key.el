;; Jack Symonds Emacs Key-binding Configuration

(define-key global-map (kbd "M-SPC") 'ace-jump-mode)

(defun my-term () (interactive) (eshell))
(global-set-key (kbd "<C-return>") 'my-term)

(global-set-key (kbd "C-x C-b") 'buffer-menu)


(defun window-half-height ()
  (max 1 (/ (1- (window-height (selected-window))) 2)))

(defun scroll-up-half ()
  (interactive)
  (scroll-up (window-half-height)))

(defun scroll-down-half ()         
  (interactive)                    
  (scroll-down (window-half-height)))

(global-set-key [next] 'scroll-up-half)
(global-set-key (kbd "C-v") 'scroll-up-half)
(global-set-key [prior] 'scroll-dowpn-half)
(global-set-key (kbd "M-v") 'scroll-down-half)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-A") 'mc/edit-lines)

;; (global-set-key (kbd "C->") 'find-file)

;; (global-set-key (kbd "M-B") 'windmove-left)
;; (global-set-key (kbd "M-N") 'windmove-down)
;; (global-set-key (kbd "M-P") 'windmove-up)
;; (global-set-key (kbd "M-F") 'windmove-right)
;; (global-set-key (kbd "C-M-B") 'windmove-left)
;; (global-set-key (kbd "C-M-N") 'windmove-down)
;; (global-set-key (kbd "C-M-P") 'windmove-up)
;; (global-set-key (kbd "C-M-F") 'windmove-right)
