;; Jack Symonds Emacs Key-binding Configuration

(defun my-term () (interactive) (ansi-term "bash"))
(global-set-key (kbd "<C-return>") 'my-term)

(global-set-key (kbd "C-x C-b") 'buffer-menu)


(defun jack-scroll-up ()
  (interactive)
  (scroll-up 3))

(defun jack-scroll-down ()         
  (interactive)                    
  (scroll-down 3))

(global-set-key [next] 'jack-scroll-up)
(global-set-key (kbd "C-v") 'jack-scroll-up)
(global-set-key [prior] 'jack-scroll-down)
(global-set-key (kbd "M-v") 'jack-scroll-down)


(global-set-key (kbd "C-x b") 'windmove-left)
(global-set-key (kbd "C-x n") 'windmove-down)
(global-set-key (kbd "C-x p") 'windmove-up)
(global-set-key (kbd "C-x f") 'windmove-right)

(global-set-key (kbd "C-,") 'ivy-switch-buffer)

(defun move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (let ((column (current-column)))
      (beginning-of-line)
      (when (or (> arg 0) (not (bobp)))
        (forward-line)
        (when (or (< arg 0) (not (eobp)))
          (transpose-lines arg))
        (forward-line -1))
      (move-to-column column t)))))

(defun move-text-down (arg)
  (interactive "*p")
  (move-text-internal arg))

(defun move-text-up (arg)
  (interactive "*p")
  (move-text-internal (- arg)))


(global-set-key (kbd "C-S-p") 'move-text-up)
(global-set-key (kbd "C-S-n") 'move-text-down)



(defun jack-small-window ()
  (interactive)
  (shrink-window 15)
)
;; (global-set-key (kbd "C-M-S-m") 'jack-small-window)
(global-set-key (kbd "C-x 8") 'jack-small-window)


;; (defun jack-high () (interactive))
;; (global-set-key (kbd "M-H"))
;; (global-set-key (kbd "M-M"))
;; (global-set-key (kbd "M-L"))


;; (global-set-key (kbd "M-B") 'windmove-left)
;; (global-set-key (kbd "M-N") 'windmove-down)
;; (global-set-key (kbd "M-P") 'windmove-up)
;; (global-set-key (kbd "M-F") 'windmove-right)
;; (global-set-key (kbd "C-M-B") 'windmove-left)
;; (global-set-key (kbd "C-M-N") 'windmove-down)
;; (global-set-key (kbd "C-M-P") 'windmove-up)
;; (global-set-key (kbd "C-M-F") 'windmove-right)

;; (define-key global-map (kbd "M-SPC") 'ace-jump-mode)

;; (require 'multiple-cursors)
;; (global-set-key (kbd "C-S-A") 'mc/edit-lines)

;; (global-set-key (kbd "C->") 'find-file)

