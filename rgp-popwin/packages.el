;;; packages.el --- rgp-popwin Layer packages File for Spacemacs

(defun rgp-popwin/init-popwin ()
  "Initialize rgp-popwin"
  (use-package popwin
    :init
    (progn
      (popwin-mode t)
      (push '("*Help*" :height 20) popwin:special-display-config)
      (push '("*helm*" :height 20) popwin:special-display-config)
      (push '("^\*helm .+\*$" :regexp t :height 20) popwin:special-display-config)
      (push '("*Compile-Log*" :height 20 :noselect t) popwin:special-display-config))))
