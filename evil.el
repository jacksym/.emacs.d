;; Jack Symonds Evil Configuration

(evil-mode 1)
;; (evil-set-undo-system 'undo-tree)
(evil-set-leader 'normal (kbd "SPC"))

(keymap-global-set "C-<next>" 'tab-next)
(keymap-global-set "C-<prior>" 'tab-previous)
(keymap-global-set "C-S-<next>" '(lambda () (interactive) (tab-move 1)))


(keymap-global-set "C-/" 'comment-line)

(keymap-global-set "C-s" 'save-buffer)
(keymap-global-set "C-w" 'kill-buffer-ask)

(keymap-global-set "C-=" 'text-scale-increase)
(keymap-global-set "C--" 'text-scale-decrease)
;; (keymap-global-set (kbd "<C-wheel-up>") 'text-scale-increase)
;; (keymap-global-set (kbd "<C-wheel-down>") 'text-scale-decrease)

;; (global-set-key "C-o" 'find-file)

(evil-define-key 'visual 'global (kbd "C-c") 'clipboard-kill-ring-save)
(evil-define-key 'insert 'global (kbd "C-v") 'clipboard-yank)

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
(evil-define-key 'normal 'global (kbd "<leader> w s") 'split-window-below)
(evil-define-key 'normal 'global (kbd "<leader> w o") 'delete-other-windows)

(evil-define-key 'normal 'global (kbd "<leader> o") 'find-file)
(evil-define-key 'normal 'global (kbd "<leader> SPC") 'j-list-buffers)
(evil-define-key 'normal 'global (kbd "<leader> f") 'dired-jump)
(evil-define-key 'normal 'global (kbd "<leader> t") 'my-term)

;; (add-hook 'python-mode-hook (lambda ()
;; 	(evil-define-key 'normal 'local (kbd "<leader> c") 'my-shell-python)
;; 	))

;; (add-hook 'tex-mode-hook (lambda ()
;; 	(evil-define-key 'normal 'local (kbd "<leader> c") 'my-compile-latex)
;; 	))

