;;; packages.el --- rgp-yasnippet Layer packages File for Spacemacs

(defun rgp-yasnippet/init-yasnippet ()
  "Initialize rgp-yasnippet"
  (use-package yasnippet
    :mode ("\\.yasnippet\\'" . snippet-mode)
    :config
    (yas-global-mode)
    (yas-load-directory "~/.emacs.d/private/snippets/")))
