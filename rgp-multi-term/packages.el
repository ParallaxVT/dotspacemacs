;;; packages.el --- rgp-multi-term layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun rgp-multi-term/init-multi-term ()
  (use-package multi-term
    :commands multi-term
    :defer t
    :init
    (progn
      (setq multi-term-program "/bin/zsh")
      (add-hook 'term-mode-hook (lambda() (setq yas-dont-activate t))))))
