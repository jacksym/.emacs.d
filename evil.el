; Jack Symonds Evil Configuration

(evil-mode t)

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

(global-set-key (kbd "M-B") 'windmove-left)
(global-set-key (kbd "M-N") 'windmove-down)
(global-set-key (kbd "M-P") 'windmove-up)
(global-set-key (kbd "M-F") 'windmove-right)
(global-set-key (kbd "C-x M-B") 'evil-window-move-far-left)
(global-set-key (kbd "C-x M-N") 'evil-window-move-very-bottom)
(global-set-key (kbd "C-x M-P") 'evil-window-move-very-top)
(global-set-key (kbd "C-x M-F") 'evil-window-move-far-right)

(evil-define-key 'normal 'global (kbd "<leader> /") 'comment-line)
(evil-define-key 'visual 'global (kbd "<leader> /") 'comment-region)


(evil-define-key 'normal 'global (kbd "<leader> q") 'delete-window)
(evil-define-key 'normal 'global (kbd "<leader> f") 'find-file)
(evil-define-key 'normal 'global (kbd "<leader> b") 'ivy-switch-buffer)
(evil-define-key 'normal 'global (kbd "<leader> n l") 'split-window-right)
(evil-define-key 'normal 'global (kbd "<leader> n j") 'split-window-below)
(evil-define-key 'normal 'global (kbd "<leader> d") 'dired)

(defun my-term () (interactive) (term "/bin/bash"))
(evil-define-key 'normal 'global (kbd "<leader> t") 'my-term)
;; (evil-define-key 'normal 'global (kbd "<leader> s") '(term "/bin/bash"))

(defun kill-and-close ()
  (interactive)
  (kill-buffer)
  (delete-window))

(evil-define-key 'normal 'global (kbd "<leader> Q") 'kill-and-close)


(add-hook 'python-mode-hook (lambda ()
	(evil-define-key 'normal 'local (kbd "<leader> c") 'my-shell-python)
	))
