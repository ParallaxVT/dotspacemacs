;;; packages.el --- rgp-flyspell Layer packages File for Spacemacs

(defun rgp-flyspell/init-flyspell()
  "Initialize rgp-flyspell"
  (use-package flyspell
    :defer t
    :preface
    (add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")
    (setq-default ispell-program-name "aspell")
    (setq-default ispell-extra-args '("--sug-mode=fast"))
    (setq-default ispell-dictionary "english")
    ))
