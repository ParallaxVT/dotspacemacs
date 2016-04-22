;;; funcs.el --- rgp-magit layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3
(defun magit-expand-git-file-name (filename &optional localname)
  (setq filename
        (if (file-name-absolute-p filename)
            (if localname
                filename
              (concat (file-remote-p default-directory) filename))
          (expand-file-name
           filename
           (and localname (file-remote-p default-directory 'localname)))))
  (if (and (eq system-type 'windows-nt) ; together with cygwin/msys git, see #1318
           (string-match "^\\(?:/cygdrive\\|[A-Z]:\\)?/\\([a-z]\\)/\\(.*\\)"
                         filename))
      (concat (match-string 1 filename) ":/"
              (match-string 2 filename))
    filename))
