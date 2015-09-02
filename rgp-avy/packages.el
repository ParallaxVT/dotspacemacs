;;; packages.el --- rgp-avy Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq rgp-avy-packages
      '(
        avy
        ))

;; List of packages to exclude.
(setq rgp-avy-excluded-packages '())

(defun rgp-avy/init-avy ()
  (use-package avy
    :defer t
    :init
    (progn
      (setq avy-keys (number-sequence ?a ?z))
      (setq avy-all-windows 'all-frames)
      (setq avy-background t)
      (evil-leader/set-key
        "SPC" 'avy-goto-word-or-subword-1
        "l" 'avy-goto-line))
    :config
    (evil-leader/set-key "`" 'avy-pop-mark)))
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
