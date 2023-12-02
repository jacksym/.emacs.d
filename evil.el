;; Jack Symonds Evil Configuration

(evil-mode 1)
(setq evil-want-C-u-delete t) ;; in insert mode
(setq evil-want-C-u-scroll t) ;; in normal mode
(modify-syntax-entry ?_ "w") ;; underscores included in words

;; (evil-set-undo-system 'undo-tree)
(evil-set-leader 'normal (kbd "SPC"))
(evil-set-leader 'motion (kbd "SPC"))


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


(evil-define-key '(normal motion) 'global
  (kbd "<leader> h") 'windmove-left
  (kbd "<leader> j") 'windmove-down
  (kbd "<leader> k") 'windmove-up
  (kbd "<leader> l") 'windmove-right
  (kbd "<leader> H") 'evil-window-move-far-left
  (kbd "<leader> J") 'evil-window-move-very-bottom
  (kbd "<leader> K") 'evil-window-move-very-top
  (kbd "<leader> L") 'evil-window-move-far-right
  )

(evil-define-key '(normal motion) 'global
  (kbd "<leader> w c") 'delete-window
  (kbd "<leader> w v") 'split-window-right
  (kbd "<leader> w s") 'split-window-below
  (kbd "<leader> w o") 'delete-other-windows
  (kbd "<leader> w m") 'minimize-window
  (kbd "<leader> w d") 'kill-buffer
)

(evil-define-key '(normal motion) 'global
  (kbd "<leader> 5") 'make-frame-command
)


(evil-define-key 'normal 'global (kbd "<leader> f") 'find-file)
(define-key Buffer-menu-mode-map (kbd "<return>") 'Buffer-menu-this-window)
(evil-define-key 'normal 'global (kbd "<leader> SPC") 'j-list-buffers)


(evil-define-key 'normal 'global (kbd "<leader> d") 'dired-jump)
(eval-after-load 'dired
  '(progn
	(define-key dired-mode-map (kbd "SPC") nil)
	(define-key dired-mode-map (kbd "n") nil)
	(define-key dired-mode-map (kbd "N") nil)
	(evil-define-key 'normal dired-mode-map (kbd "h") 'dired-up-directory)
	(put 'dired-find-alternate-file 'disabled nil)
	(evil-define-key 'normal dired-mode-map (kbd "l") 'dired-find-alternate-file)
	;; (evil-define-key 'normal dired-mode-map (kbd "RET") 'dired-find-file-other-window)
	)
)

(evil-define-key 'normal 'global (kbd "<leader> RET") 'shell)
(evil-define-key '(normal insert) shell-mode-map
  (kbd "<up>") 'comint-previous-input
  (kbd "<down>") 'comint-next-input
  (kbd "M-k") 'comint-previous-input
  (kbd "M-j") 'comint-next-input
  (kbd "<return>") 'comint-send-input
)
(define-key shell-mode-map (kbd "C-c") 'comint-interrupt-subjob)


(eval-after-load 'python
  '(progn
	(evil-define-key 'normal python-mode-map (kbd "<leader> p") 'execute-python-in-shell)
	(evil-define-key 'normal python-mode-map (kbd "<f5>") 'execute-python-in-shell)
	)
)

;; (add-hook 'python-mode-hook (lambda ()
;; 	(evil-define-key 'normal 'local (kbd "<leader> c") 'my-shell-python)
;; 	))

;; (add-hook 'tex-mode-hook (lambda ()
;; 	(evil-define-key 'normal 'local (kbd "<leader> c") 'my-compile-latex)
;; 	))

