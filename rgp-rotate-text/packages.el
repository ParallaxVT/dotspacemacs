;;; packages.el --- rgp-rotate-text layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar rgp-rotate-text-packages
  '((rotate-text :location (recipe
                            :fetcher github
                            :repo "nschum/rotate-text.el"))))

(defun rgp-rotate-text/init-rotate-text ()
  (use-package rotate-text)
  :defer t
  :config
  (progn
    (setq rotate-text-words '(("width" "height")
                              ("plugin" "hotspot")
                              ("yes" "no")
                              ("true" "false")
                              ("left" "right" "top" "bottom")))))
