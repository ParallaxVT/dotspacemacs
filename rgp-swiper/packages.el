;;; packages.el --- rgp-swiper Layer packages File for Spacemacs

(setq rgp-swiper-packages
  '(swiper)
  )

(defun rgp-swiper/init-swiper ()
  "Initialize rgp-swiper"
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
       '(swiper-match-face-3 ((t (:foreground "white" :background "darkorange"))))
       )))
  )
