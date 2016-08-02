;;; packages.el --- rgp-xml layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun rgp-xml/init-xml-mode ()
  (use-package xml-mode
    :mode "\\.xml\\'"
    :defer t
    :preface
    (progn
      (defalias 'xml-mode 'sgml-mode
        "Use `sgml-mode' instead of nXML's `xml-mode'.")
      (setq sgml-set-face t)
      (setq sgml-auto-activate-dtd t)
      (setq sgml-indent-data t)
      (setq sgml-basic-offset 4)
      )))
