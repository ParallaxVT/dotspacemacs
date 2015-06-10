;;; packages.el --- rgp-webmode Layer packages File for Spacemacs

(setq rgp-webmode-packages
      '(web-mode)
      )

(defun rgp-webmode/init-web-mode ()
  "Initialize rgp-webmode"
  (use-package web-mode
    :mode "\\.\\(html\\|css\\)\\'"     ;
    :defer t
    :config
    (progn
      (setq web-mode-markup-indent-offset 4
            web-mode-css-indent-offset 4
            web-mode-enable-css-colorization t)
      (add-hook 'web-mode-hook #'(lambda () (yas-activate-extra-mode 'html-mode)
                                   (yas-activate-extra-mode 'css-mode))))
    ))
