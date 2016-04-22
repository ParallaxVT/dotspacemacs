;;; packages.el --- rgp-company layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst rgp-company-packages
  '())

(defun rgp-company/init-company
    (use-package company
      :defer t
      :commands (global-company-mode)))
