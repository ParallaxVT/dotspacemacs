;;; packages.el --- rgp-dired+ Layer packages File for Spacemacs

(defvar rgp-dired+-packages
  '(dired+)
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun rgp-dired+/init-dired+ ()
  "Initialize rgp-dired+"
  (use-package dired+
    :config
    (progn
      ;; Show files and directories details
      (setq diredp-hide-details-initially-flag nil
            diredp-hide-details-propagate-flag nil)
      ;; Always use one buffer when I move directory
      (declare-function toggle-diredp-find-file-reuse-dir "dired+")
      (toggle-diredp-find-file-reuse-dir 1)
      ;; Rebind Shift-SpaceBar to move to a parent directory using the same buffer.
      (bind-key "S-<SPC>" '(lambda () (interactive) (find-alternate-file "..")) dired-mode-map))
    ;; Dired+ requires ls-lisp
    (use-package ls-lisp
      :defer t
      :config
      (progn
        (setq ls-lisp-emulation 'MS-Windows)
        (ls-lisp-set-options)))))
