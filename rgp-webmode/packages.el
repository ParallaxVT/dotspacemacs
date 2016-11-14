;;; packages.el --- rgp-helm layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst rgp-webmode-packages '(web-mode))

(defun rgp-webmode/init-web-mode ()
  (use-package web-mode
    :mode "\\.\\(html\\|css\\|xml\\)\\'"
    :defer t
    :config
    (progn
      (setq web-mode-markup-indent-offset 4
            web-mode-css-indent-offset 4
            web-mode-enable-css-colorization t)
      (add-hook 'web-mode-hook #'(lambda () (yas-activate-extra-mode 'html-mode)
                                   (yas-activate-extra-mode 'css-mode))))))
