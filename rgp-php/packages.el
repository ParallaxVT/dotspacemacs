;;; packages.el --- rgp-php layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst rgp-php-packages
  '(php-mode))

(defun rgp-php/init-php-mode ()
  (use-package php-mode
    :mode (("\\.php\\'" . php-mode))))
