;; Jack Symonds Evil Configuration

(evil-mode 1)
(setq evil-want-C-u-delete t) ;; in insert mode
(setq evil-want-C-u-scroll t) ;; in normal mode
(modify-syntax-entry ?_ "w") ;; underscores included in words
(evil-set-undo-system 'undo-redo)
(evil-select-search-module 'evil-search-module 'evil-search)

(evil-set-leader 'normal (kbd "SPC"))
(evil-set-leader 'motion (kbd "SPC"))


(keymap-global-set "C-<next>" 'tab-bar-switch-to-next-tab)
(keymap-global-set "C-<prior>" 'tab-bar-switch-to-prev-tab)

(keymap-global-set "C-/" 'comment-line)

(keymap-global-set "C-s" 'save-buffer)
(keymap-global-set "C-w" 'kill-buffer-ask)

(keymap-global-set "C-=" 'text-scale-increase)
(keymap-global-set "C--" 'text-scale-decrease)
;; (keymap-global-set (kbd "<C-wheel-up>") 'text-scale-increase)
;; (keymap-global-set (kbd "<C-wheel-down>") 'text-scale-decrease)

;; (global-set-key "C-o" 'find-file)

(evil-define-key 'emacs 'global (kbd "C-c") 'clipboard-kill-ring-save)
(evil-define-key 'emacs 'global (kbd "C-v") 'clipboard-yank)
(evil-define-key 'visual 'global (kbd "C-c") 'clipboard-kill-ring-save)
(evil-define-key 'insert 'global (kbd "C-v") 'clipboard-yank)

;; (evil-define-key 'insert 'global (kbd "DEL") 'backward-delete-char)
(evil-define-key '(normal motion) 'global (kbd "<leader> t") 'tab-new)

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
  (kbd "<leader> 5") 'make-frame-command
)

(evil-define-key '(normal motion) 'global (kbd "<leader> f") 'find-file)
(evil-define-key '(normal motion) 'global (kbd "<leader> F") 'recentf-open-files)
(evil-set-initial-state 'recentf-dialog-mode 'motion)
(evil-define-key 'motion recentf-dialog-mode-map
  (kbd "1") 'recentf-open-most-recent-file-1
  (kbd "2") 'recentf-open-most-recent-file-2
  (kbd "3") 'recentf-open-most-recent-file-3
  (kbd "4") 'recentf-open-most-recent-file-4
  (kbd "5") 'recentf-open-most-recent-file-5
  ;; (kbd "e") 'recentf-edit-list
  ;; (kbd "x") 'recentf-edit-list-validate
)

(evil-define-key '(normal motion) 'global (kbd "<leader> r l") 'list-bookmarks)
(evil-define-key 'normal 'global (kbd "<leader> r m") 'bookmark-set)
(evil-set-initial-state 'bookmark-bmenu-mode 'motion)
(evil-define-key 'motion bookmark-bmenu-mode-map
  (kbd "<return>") 'bookmark-bmenu-this-window
)

(define-key Buffer-menu-mode-map (kbd "<return>") 'Buffer-menu-this-window)
(evil-define-key '(normal motion) 'global (kbd "<leader> SPC") 'j-list-buffers)

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
	(evil-define-key 'normal python-mode-map
	  (kbd "<leader> p") 'execute-python-in-shell
	  (kbd "<f5>") 'execute-python-in-shell
	  (kbd "<leader> P") 'execute-pdb-in-shell
	  )
	)
)

(eval-after-load 'sql
  '(progn
	 (keymap-global-set "C-U" 'sql-connect)
	 (evil-define-key '(visual) sql-mode-map (kbd "<return>") 'sql-send-region)
	 (evil-define-key '(normal insert visual) sql-mode-map (kbd "S-<return>") 'sql-clear-and-send)
	 )
  )

(eval-after-load 'eglot
  '(progn
	 (evil-define-key '(normal) 'global (kbd "<leader> L") 'eglot)
	 )
  )


(eval-after-load 'tex-mode
  '(progn
	 (evil-define-key '(normal) tex-mode-map (kbd "<leader> p") 'my-compile-latex)
	 )
  )

