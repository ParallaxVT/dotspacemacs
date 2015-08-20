;;; packages.el --- rgp-org Layer packages File for Spacemacs

(defconst win32-p (eq system-type 'windows-nt) "Windows OS.")
(defconst virtualbox-p (string-equal system-name "debian") "Virtualbox Machine")
(defconst debian-p (string-equal system-name "debian.local") "Debian Laptop")
(defconst linux-p (eq system-name 'gnu/linux))
(defconst cygwin-p (eq system-name 'cygwin))
(when win32-p (defvar org-dir "~/org/"
                "org directory in Windows and my life laptop"))
(when debian-p (defvar org-dir "~/org/"
                 "org directory in Windows and my life laptop"))
(when virtualbox-p (defvar org-dir "/media/c/Users/Rafael/AppData/Roaming/org/"
                     "org directory in my Virtual Box Debian"))

(defun open-agenda-file ()
  "Open agenda.org file"
  (interactive)
  (find-file (expand-file-name "agenda.org" org-dir)))

(defun rgp-org/init-org ()
  "Initialize rgp-org"
  (use-package org
    :defer t
    :mode (("\\.org\\'" . org-mode))
    :preface
    (progn
      (setq org-agenda-start-with-log-mode t)
      (setq org-agenda-tags-column -150)
      (setq org-agenda-window-setup 'current-window)
      (setq org-export-html-postamble nil)
      (setq org-tags-column -148)
      (setq org-hide-leading-stars t)
      (setq org-indent-mode t)
      (setq org-startup-indented t)
      (setq calendar-week-start-day 1)
      (setq org-time-stamp-rounding-minutes (quote (0 1))) ;; Change timestamps by multiples of 1
      (setq org-agenda-files (list
                              (expand-file-name "agenda.org" org-dir)
                              (expand-file-name "gforces.org" org-dir)))
      )
    ))
