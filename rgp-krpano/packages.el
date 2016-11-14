;;; packages.el --- rgp-multi-term layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst rgp-krpano-packages '((company-krpano :location local)))

(defun rgp-krpano/init-company-krpano ()
  "Initialize company-krpano"
  (use-package company-krpano :defer t))
