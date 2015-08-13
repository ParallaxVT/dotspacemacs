;;; packages.el --- rgp-counsel Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq rgp-counsel-packages
      '(
        counsel
        smex
        ))

;; List of packages to exclude.
(setq rgp-counsel-excluded-packages '())

;; For each package, define a function rgp-counsel/init-<package-name>
;;
(defun rgp-counsel/init-counsel()
  "Initialize my package"
  (use-package counsel
    :init
    (progn
      (ivy-mode 1)
      (evil-leader/set-key "ff" 'counsel-find-file)
      (evil-leader/set-key "fr" 'ivy-recentf)
      (evil-leader/set-key "bb" 'ivy-switch-buffer)
      (evil-leader/set-key "hdf" 'counsel-describe-function)
      (evil-leader/set-key "hdv" 'counsel-describe-variable)
      (evil-leader/set-key "sa" 'counsel-ag)
      (global-set-key (kbd "M-x") 'counsel-M-x)
      ;;   )
      ;; :config
      ;; (progn
      (setq ivy-re-builders-alist
            '((t . ivy--regex-fuzzy)))
      )
    )
  (use-package recentf :init (recentf-mode 1))
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
