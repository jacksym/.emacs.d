;; Jack Symonds Evil Configuration for MacOS

(evil-mode 1)
(modify-syntax-entry ?_ "w") ;; underscores included in words

(menu-bar-mode 1)
(setq dired-us-ls-dired-nil) ;; for Mac
(setq insert-directory-program "gls") ;; for Mac

(evil-set-leader 'normal (kbd "SPC"))

(keymap-global-set "s-/" 'comment-line)

(keymap-global-set "s-s" 'save-buffer)
(keymap-global-set "s-w" 'kill-buffer-ask)

(keymap-global-set "s-=" 'text-scale-increase)
(keymap-global-set "s--" 'text-scale-decrease)

(evil-define-key 'visual 'global (kbd "s-c") 'clipboard-kill-ring-save)
(evil-define-key 'insert 'global (kbd "s-v") 'clipboard-yank)

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

(evil-define-key 'normal 'global
	(kbd "<leader> w c") 'delete-window
	(kbd "<leader> w v") 'split-window-right
	(kbd "<leader> w s") 'split-window-below
	(kbd "<leader> w o") 'delete-other-windows
	)

(evil-define-key 'normal 'global (kbd "<leader> f") 'find-file)
(define-key Buffer-menu-mode-map (kbd "<return>") 'Buffer-menu-this-window)
(evil-define-key 'normal 'global (kbd "<leader> SPC") 'j-list-buffers)

(evil-define-key 'normal 'global (kbd "<leader> d") 'dired-jump)
(eval-after-load 'dired
  '(progn
	(define-key dired-mode-map (kbd "SPC") nil)
	(define-key dired-mode map (kbd "n") nil)
	(define-key dired-mode map (kbd "N") nil)
	(evil-define-key 'normal dired-mode-map (kbd "h") 'dired-up-directory)
	(put 'dired-find-alternate-file 'disabled nil)
	(evil-define-key 'normal dired-mode-map (kbd "l") 'dired-find-alternate-file)
))

(evil-define-key 'normal 'global (kbd "<leader> RET") 'shell)
(evil-define-key '(normal insert) shell-mode-map
  (kbd "<up>") 'comint-previous-input
  (kbd "<down>") 'comint-next-input
  (kbd "M-k") 'comint-previous-input
  (kbd "M-j") 'comint-next-input
)
(evil-define-key '(normal insert) shell-mode-map (kbd "M-k") 'comint-previous-input)
(define-key shell-mode-map (kbd "C-c") 'comint-interrupt-subjob)

