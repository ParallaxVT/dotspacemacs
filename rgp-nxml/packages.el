;;; packages.el --- rgp-nxml layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun rgp-nxml/init-nxml-mode ()
  (use-package nxml-mode
    :mode "\\.xml\\'"
    :defer t
    :preface
    (progn
      (add-hook 'nxml-mode-hook (lambda () (run-hooks 'prog-mode-hook))) ;; Add nxml-mode to the progn-mode-hook
      (setq nxml-child-indent 4)
      (setq indent-tabs-mode nil)
      (setq electric-indent-mode t) ;; Indent a line after pressing return
      )))
