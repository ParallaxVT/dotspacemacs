;;; packages.el --- rgp-elmacro Layer packages File for Spacemacs

(setq rgp-elmacro-packages
      '(elmacro)
      )

(defun rgp-elmacro/init-elmacro ()
  "Initialize elmacro"
  (use-package elmacro
    :defer t
    :commands (elmacro-mode)
    :config
    ))
