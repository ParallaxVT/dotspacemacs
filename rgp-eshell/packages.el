;;; packages.el --- rgp-eshell layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun rgp-eshell/init-eshell ()
  (use-package eshell
    :commands eshell
    :defer t
    :preface
    (progn
      (setq eshell-ask-to-save-history 'always)
      (setq eshell-history-size 1000)
      (setq eshell-cmpl-cycle-completions nil)
      (setq eshell-ls-dired-initial-args '("-h"))
      (setq eshell-ls-initial-args "-h")
      (setq eshell-ls-use-in-dired t)
      (setq eshell-output-filter-functions '(eshell-handle-control-codes eshell-watch-for-password-prompt eshell-postoutput-scroll-to-bottom))
      (setq eshell-scroll-show-maximum-output t)
      (setq eshell-scroll-to-bottom-on-output t)
      (setq eshell-glob-include-dot-dot nil))))
