;;; gmat_scipt-mode.el --- A simple Emacs major mode for GMAT scripts  -*- lexical-binding: t -*-

;; Author: Jack Symonds

(defvar gmat_script-mode-syntax-table nil "Syntax table for `gmat_script-mode'.")

(setq gmat_script-mode-syntax-table
      (let ( (synTable (make-syntax-table)))
        (modify-syntax-entry ?\; "<" synTable) (modify-syntax-entry ?\n ">" synTable) synTable))

(setq directives (regexp-opt '(
                               "wait" "w") 'symbols))

(setq functions (regexp-opt '(
                              "uppercase") 'symbols))

; Everything that's important that isn't a directive, constant, or built-in function
(setq keywords (regexp-opt '("at" "local" "sho" "speed") 'symbols))

;; Multiple list members highlighting in the same face are here when I couldn't figure out how to combine
;; them. This works just as well anyway.

(setq stol-font-lock-keywords
      (list `("\\.true\\."  . font-lock-constant-face)
            `("\\.false\\." . font-lock-constant-face)
            `("[\\\s]*p@"   . font-lock-builtin-face)
            `("\\.eq\\."    . font-lock-builtin-face)
            `("\\.ne\\."    . font-lock-builtin-face)
            `("\\.lt\\."    . font-lock-builtin-face)
            `("\\.gt\\."    . font-lock-builtin-face)
            `("\\.le\\."    . font-lock-builtin-face)
            `("\\.ge\\."    . font-lock-builtin-face)
            `("\\.not\\."   . font-lock-builtin-face)
            `("\\.and\\."   . font-lock-builtin-face)
            `("\\.or\\."    . font-lock-builtin-face)
            `("\\.xor\\."   . font-lock-builtin-face)
            `("/[^\\\s]*\s" . font-lock-builtin-face)
            `(,directives   . font-lock-builtin-face)
            `(,functions    . font-lock-builtin-face)
            `("^[^\\\s]+:"  . font-lock-keyword-face)
            `(,keywords     . font-lock-keyword-face)))

;; case insensitivity?
;; (setq font-lock-keywords-case-fold-search 1)

;;;###autoload

;; Could base this on fortran-mode or f90-mode, since STOL is related syntactically, but these modes introduce
;; a bunch of other stuff that isn't in STOL
(define-derived-mode gmat_script-mode prog-mode "GMAT Script"
  "Major mode for editing GMAT scripts."
  :syntax-table gmat_script-mode-syntax-table
  (setq font-lock-defaults '(stol-font-lock-keywords nil font-lock-keywords-case-fold-search)))

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.script\\'" . gmat_script-mode))
;; (setq auto-mode-alist (append '(("\\.proc" . stol-mode)) auto-mode-alist))


(provide 'gmat_script-mode)

;;; gmat_script-mode.el ends here
