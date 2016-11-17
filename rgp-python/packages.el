;;; packages.el --- rgp-python layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst rgp-python-packages '(python))

(defun rgp-python/post-init-python ()
  (use-package python
    :defer t
    :config
    (progn
      (setq python-shell-interpreter "ipython3"))))
