;;; packages.el --- rgp-bookmark+ layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst rgp-bookmark+-packages
  '(bookmark+))

(defun rgp-bookmark+/init-bookmark+ ()
  (use-package bookmark+
    :defer t
    :commands (bookmark-bmenu-list)))
