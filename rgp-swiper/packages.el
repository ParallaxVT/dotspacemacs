;;; packages.el --- rgp-swipper layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst rgp-swiper-packages
  '(swiper))

(defun rgp-swiper/init-swiper ()
  (use-package swiper
    :defer t
    :commands swiper
    :bind ("M-i" . swiper)
    :init (evil-leader/set-key "ss" 'swiper)
    :config
    (progn
      (setq swiper-completion-method 'ivy)
      (custom-set-faces
       '(swiper-line-face ((t (:background "forestgreen"))))
       '(swiper-match-face-3 ((t (:foreground "white" :background "darkorange"))))))))
