;;; packages.el --- rgp-php Layer packages File for Spacemacs

(defvar rgp-php-packages
  '(php-mode)
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun rgp-php/init-php-mode ()
  "Initialize rgp-php"
  (use-package php-mode
    :mode (("\\.php\\'" . php-mode))
    ))
