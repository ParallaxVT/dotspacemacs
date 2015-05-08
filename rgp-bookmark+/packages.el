;;; packages.el --- rgp-bookmark+ Layer packages File for Spacemacs

(defvar rgp-bookmark+-packages
  '(bookmark+)
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun rgp-bookmark+/init-bookmark+ ()
  "Initialize rgp-bookmark+"
  (use-package bookmark+
    :defer t
    :commands (bookmark-bmenu-list)
  ))
