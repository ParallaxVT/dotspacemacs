;;; packages.el --- rgp-multi-term Layer packages File for Spacemacs

(defun rgp-multi-term/init-multi-term ()
  "Initialize rgp-multi-term"
  (use-package multi-term
    :commands multi-term
    :defer t
    :init
    (progn
      (setq multi-term-program "/bin/zsh")
      (add-hook 'term-mode-hook (lambda() (setq yas-dont-activate t))))))
