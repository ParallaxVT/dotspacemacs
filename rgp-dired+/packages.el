;;; packages.el --- rgp-dired+ layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst rgp-dired+-packages
  '(dired+))

(defun rgp-dired+/init-dired+ ()
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
