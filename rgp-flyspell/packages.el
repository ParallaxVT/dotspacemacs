;;; packages.el --- rgp-flyspell layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst rgp-flyspell-packages '(flyspell))

(defun rgp-flyspell/post-init-flyspell()
  (use-package flyspell
    :defer t
    :config
    (setq-default enable-flyspell-auto-completion= t)
    (setq-default ispell-dictionary "english")
    (setq-default ispell-extra-args '("--sug-mode=fast"))
    (setq-default spell-checking-enable-by-default nil)))
