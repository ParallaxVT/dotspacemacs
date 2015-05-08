;;; packages.el --- rgp-rotate-text Layer packages File for Spacemacs

(defun rgp-rotate-text/init-rotatetext ()
  "Initialize rotatetext"
  (use-package rotatetext
    :init
    (progn
      (defvar rotate-text-words '(("width" "height")
                                  ("plugin" "hotspot")
                                  ("yes" "no")
                                  ("true" "false")
                                  ("left" "right" "top" "bottom")))))
  )
