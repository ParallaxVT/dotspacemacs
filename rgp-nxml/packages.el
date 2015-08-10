;;; packages.el --- rgp-nxml Layer packages File for Spacemacs

(defun rgp-nxml/init-nxml-mode ()
  "Initialize rgp-nxml"
  (use-package nxml-mode
    :mode "\\.xml\\'"
    :defer t
    :preface
    (progn
      (add-hook 'nxml-mode-hook (lambda () (run-hooks 'prog-mode-hook))) ;; Add nxml-mode to the progn-mode-hook
      (setq nxml-child-indent 4)
      (setq indent-tabs-mode nil)
      (setq electric-indent-mode t) ;; Indent a line after pressing return
      )))
