;; cleanup_buffer
;; ====================================================================

;; Indent current buffer
(defun indent-buffer ()
  "Indents the entire buffer."
  (interactive)
  (indent-region (point-min) (point-max)))
;; Replace tabs with spaces
(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))
(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer."
  (interactive)
  (indent-buffer)
  (untabify-buffer)
  (whitespace-cleanup)
  (message "Buffer cleaned") )

;; Move text up and down
;; ====================================================================

(spacemacs|define-micro-state move-text
  :doc "[k] move up [j] move down"
  :evil-leader "om"
  :use-minibuffer t
  :bindings
  ("k" move-text-up)
  ("j" move-text-down))

;; Increase and decrease numbers
;; ===================================================================

(spacemacs|define-micro-state edit-numbers
  :doc "[k] increase [j] decrease"
  :evil-leader "on"
  :use-minibuffer t
  :bindings
  ("k" spacemacs/evil-numbers-increase)
  ("j" spacemacs/evil-numbers-decrease))

;; Increase and decrease numbers
;; ===================================================================

(defun duplicate-line-above (&optional reverse)
  "Duplicate current line above."
  (interactive)
  (let ((origianl-column (current-column))
        line-content)
    (setq line-content (buffer-substring (line-beginning-position) (line-end-position)))
    (beginning-of-line)
    (and reverse (forward-line +1))
    (newline +1)
    (forward-line -1)
    (insert line-content)
    (move-to-column origianl-column t)))

(defun duplicate-line-below ()
  "Duplicate current line below"
  (interactive)
  (duplicate-line-above t))

;; Helm-Ag
;; ===================================================================

(defun start-helm-ag()
  (interactive)
  (setq current-prefix-arg '(4))(helm-ag))

;; Switch to previous buffer
;; ==================================================================

(defun smart-switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;; Custom macros
;; ==================================================================

(defun Insert-GforcesCar ()
  "Change me!"
  (interactive)
  (evil-beginning-of-line)
  (evil-insert 1 nil nil)
  (insert "<car id=\"")
  (evil-normal-state)
  (evil-append-line 1)
  (insert "\" name=\"\" h=\"\" v=\"\" seat1=\"1\" seat2=\"2\" bg1=\"Studio\" bg2=\"Plaza\" bg3=\"Forest\" />")
  (evil-normal-state)
  ;; Brand
  (evil-beginning-of-line)
  (evil-forward-word-begin 6)
  (set-mark-command nil)
  (execute-kbd-macro "\C-s_")
  (evil-backward-char nil nil nil)
  (isearch-exit)
  (kill-ring-save (region-beginning) (region-end))
  (keyboard-escape-quit)
  (execute-kbd-macro "\C-sname=")
  (isearch-exit)
  (evil-append 1 nil)
  (yank nil)
  (evil-normal-state)
  (evil-beginning-of-line)
  ;; Model
  (execute-kbd-macro "\C-s_\C-s")
  (isearch-exit)
  (set-mark-command nil)
  (execute-kbd-macro "\C-s_")
  (evil-backward-char nil nil nil)
  (kill-ring-save (region-beginning) (region-end))
  (keyboard-escape-quit)
  (execute-kbd-macro "\C-sh=")
  (isearch-exit)
  (evil-backward-word-begin 3)
  (evil-backward-char nil nil nil)
  (evil-append 1 nil)
  (insert " ")
  (yank nil)
  (evil-normal-state)
  ;; Capitalize
  (er/expand-region 3)
  (capitalize-region (region-beginning) (region-end))
  (evil-beginning-of-line)
  (indent-for-tab-command nil)
  (keyboard-quit)
  )

(defun sort-krpano ()
  "Align columns by '=' and sort lines alfabetically"
  (interactive)
  ;; Align
  (isearch-forward nil 1)
  (isearch-repeat-backward)
  (isearch-printing-char 60 1)
  (isearch-exit)
  (evil-visual-line nil nil 'line t)
  (isearch-forward nil 1)
  (isearch-printing-char 62 1)
  (isearch-exit)
  (align-regexp (region-beginning) (region-end) "\\(\\s-*\\)=" 1 1 nil)
  (keyboard-escape-quit)
  ;; Sort
  (isearch-forward nil 1)
  (isearch-repeat-backward)
  (isearch-printing-char 60 1)
  (isearch-exit)
  (evil-next-line nil)
  (evil-beginning-of-line)
  (evil-visual-line nil nil 'line t)
  (isearch-forward nil 1)
  (isearch-printing-char 62 1)
  (isearch-exit)
  (evil-previous-line nil)
  (evil-end-of-line)
  (sort-lines nil (region-beginning) (region-end))
  (keyboard-quit)
  )
