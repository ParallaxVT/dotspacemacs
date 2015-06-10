;;; packages.el --- rgp-helm Layer packages File for Spacemacs

(defun rgp-helm/init-helm ()
  "Initialize rgp-helm"
  (use-package helm
    :defer t
    :preface
    (progn
      (setq helm-boring-file-regexp-list
            '("\\.jpg$" "\\.jpeg$" "\\.gif$" "\\.png$" "\\.swf$" "\\.sa$" "\\.fla$" "\\.elc"))
      (add-hook 'helm-mode-hook (lambda ()
                                  (bind-key "C-w" 'helm-find-files-up-one-level helm-map)
                                  (bind-key "C-v" 'helm-execute-persistent-action helm-map)
                                  )))
    :config
    (progn
      (use-package helm-ag
        :init
        (add-to-list 'exec-path "~/Ag")
        ))))
