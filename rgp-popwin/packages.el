;;; packages.el --- rgp-popwin layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun rgp-popwin/init-popwin ()
  (use-package popwin
    :init
    (progn
      (popwin-mode t)
      (push '("*Help*" :height 20) popwin:special-display-config)
      (push '("*helm*" :height 20) popwin:special-display-config)
      (push '("^\*helm .+\*$" :regexp t :height 20) popwin:special-display-config)
      (push '("*Compile-Log*" :height 20 :noselect t) popwin:special-display-config))))
