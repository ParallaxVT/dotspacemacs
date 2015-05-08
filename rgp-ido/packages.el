;;; packages.el --- rgp-ido Layer packages File for Spacemacs

(defun rgp-ido/init-ido ()
  "Initialize rgp-ido"
  (use-package ido
    :defer t
    :preface
    (progn
      (setq ido-file-extensions-order '(".xml" ".html" ".css" ".ps1" ".sh" ".el" ".php" ".org")) ;; Enphasize files with the specified extensions
      (setq ido-ignore-files '("\\.jpg$" "\\.jpeg$" "\\.gif$" "\\.png$" "\\.swf$" "\\.sa$" "\\.fla$" "\\.elc"))
      (setq ido-max-prospects 50)
      (define-key ido-file-completion-map "\C-v" 'ido-exit-minibuffer)
      (define-key ido-file-completion-map "\C-w" 'ido-up-directory)
      )))
