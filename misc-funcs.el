
(defun j-list-buffers (&optional files-only)
  (interactive "P")
  (switch-to-buffer (list-buffers-noselect files-only))
  )
