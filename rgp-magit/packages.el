;;; packages.el --- rgp-magit Layer packages File for Spacemacs

(defun rgp-magit/init-magit-mode ()
  "Initialize rgp-magit"
  (use-package magit-mode
    :defer t
    :preface
    (progn
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
      )))
