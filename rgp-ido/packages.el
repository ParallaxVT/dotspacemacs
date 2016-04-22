;;; packages.el --- rgp-ido layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun rgp-ido/init-ido ()
  (use-package ido
    :defer t
    :preface
    (progn
      (setq ido-file-extensions-order '(".xml" ".html" ".css" ".ps1" ".sh" ".el" ".php" ".org")) ;; Enphasize files with the specified extensions
      (setq ido-ignore-files '("\\.jpg$" "\\.jpeg$" "\\.gif$" "\\.png$" "\\.swf$" "\\.sa$" "\\.fla$" "\\.elc" "\\`#" "\\`.#" "\\`\\.\\./" "\\`\\./"))
      (setq ido-max-prospects 50)
      (define-key ido-file-completion-map "\C-v" 'ido-exit-minibuffer)
      (define-key ido-file-completion-map "\C-w" 'ido-up-directory))))
