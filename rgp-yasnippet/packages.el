;;; packages.el --- rgp-yasnippet layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun rgp-yasnippet/init-yasnippet ()
  (use-package yasnippet
    :config
    (progn
      (defun yas-advise-indent-function (function-symbol)
        (eval `(defadvice ,function-symbol (around yas-try-expand-first activate)
                 ,(format
                   "Try to expand a snippet before point, then call `%s' as usual"
                   function-symbol)
                 (let ((yas-fallback-behavior nil))
                   (unless (and (interactive-p)
                                (yas-expand))
                     ad-do-it)))))

      (yas-advise-indent-function 'indent-for-tab-command)
      (add-hook 'nxml-mode-hook
                (let ((original-command (lookup-key nxml-mode-map [tab])))
                  `(lambda ()
                     (setq yas-fallback-behavior
                           '(apply ,original-command))
                     (local-set-key [tab] 'yas-expand)))))))
