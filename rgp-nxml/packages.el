;;; packages.el --- rgp-nxml Layer packages File for Spacemacs

(defun rgp-nxml/init-nxml-mode ()
  "Initialize rgp-nxml"
  (use-package nxml-mode
    :mode (("\\.xml\\'" . nxml-mode))
    :defer t
    :preface
    (add-hook 'nxml-mode-hook
              '(lambda()
                 (setq nxml-child-indent 4)
                 (setq indent-tabs-mode nil))))
  )
