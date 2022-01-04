;; Jack Symonds Evil Configuration

(evil-mode -1)

;; (evil-set-undo-system 'undo-tree)

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



(evil-define-key 'normal 'global (kbd "<leader> w c") 'delete-window)
(evil-define-key 'normal 'global (kbd "<leader> w v") 'split-window-right)
(evil-define-key 'normal 'global (kbd "<leader> w h") 'split-window-below)
(evil-define-key 'normal 'global (kbd "<leader> w o") 'delete-other-windows)

(defun kill-and-close () (interactive) (kill-buffer) (delete-window))
(evil-define-key 'normal 'global (kbd "<leader> Q") 'kill-and-close)


(evil-define-key 'normal 'global (kbd "<leader> ;") 'comment-line)
(evil-define-key 'visual 'global (kbd "<leader> /") 'comment-region)

(evil-define-key 'normal 'global (kbd "<leader> f") 'find-file)
(evil-define-key 'normal 'global (kbd "<leader> b") 'ivy-switch-buffer)
;; (evil-define-key 'normal 'global (kbd "<leader> d") 'dired)

(evil-define-key 'normal 'global (kbd "<leader> t") 'my-term)


;; (add-hook 'python-mode-hook (lambda ()
;; 	(evil-define-key 'normal 'local (kbd "<leader> c") 'my-shell-python)
;; 	))

;; (add-hook 'tex-mode-hook (lambda ()
;; 	(evil-define-key 'normal 'local (kbd "<leader> c") 'my-compile-latex)
;; 	))

