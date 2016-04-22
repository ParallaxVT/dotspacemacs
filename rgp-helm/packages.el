;;; packages.el --- rgp-helm layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun rgp-helm/init-helm ()
  (use-package helm
    :defer t
    :preface
    (progn
      ;; Without the following line, helm would take 2 minutes to load
      (setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
      (setq helm-boring-file-regexp-list
            '("\\.jpg$" "\\.jpeg$" "\\.gif$" "\\.png$" "\\.swf$" "\\.sa$" "\\.fla$" "\\.elc"))
      (setq helm-ff-skip-boring-files t)
      (add-hook 'helm-mode-hook (lambda ()
                                  (bind-key "C-w" 'helm-find-files-up-one-level helm-map)
                                  (bind-key "C-v" 'helm-execute-persistent-action helm-map))))
    :config
    (progn
      (use-package helm-ag
        :init
        (add-to-list 'exec-path "~/Ag")))))
