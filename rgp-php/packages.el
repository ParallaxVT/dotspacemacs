;;; packages.el --- rgp-php Layer packages File for Spacemacs

(setq rgp-php-packages
      '(php-mode)
      )

(defun rgp-php/init-php-mode ()
  "Initialize rgp-php"
  (use-package php-mode
    :mode (("\\.php\\'" . php-mode))
    ))
