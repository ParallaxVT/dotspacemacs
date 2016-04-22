;;; packages.el --- rgp-flyspell layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun rgp-flyspell/init-flyspell()
  (use-package flyspell
    :defer t
    :preface
    (add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")
    (setq-default ispell-program-name "aspell")
    (setq-default ispell-extra-args '("--sug-mode=fast"))
    (setq-default ispell-dictionary "english")))
