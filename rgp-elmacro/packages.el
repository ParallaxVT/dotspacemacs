;;; packages.el --- rgp-elmacro Layer packages File for Spacemacs

(defvar rgp-elmacro-packages
  '(elmacro)
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun rgp-elmacro/init-elmacro ()
  "Initialize elmacro"
  (use-package elmacro
    :defer t
    :commands (elmacro-mode)
    :config
    ))
