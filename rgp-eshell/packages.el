;;; packages.el --- rgp-eshell Layer packages File for Spacemacs

(defun rgp-eshell/init-eshell ()
  "Initialize rgp-eshell"
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
      (setq eshell-glob-include-dot-dot nil)
      )))
