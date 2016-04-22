;;; packages.el --- rgp-elmacro layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst rgp-elmacro-packages
  '(elmacro))

(defun rgp-elmacro/init-elmacro ()
  (use-package elmacro
    :defer t
    :commands (elmacro-mode)))
