;;; packages.el --- rgp-yasnippet Layer packages File for Spacemacs

(defun rgp-yasnippet/init-yasnippet ()
  "Initialize rgp-yasnippet"
  (use-package yasnippet
    :mode "\\.yasnippet\\'"
    :defer t
    :config
    (progn
      (setq yas-snippet-dirs "~/.emacs.d/private/snippets/"))
    ))
