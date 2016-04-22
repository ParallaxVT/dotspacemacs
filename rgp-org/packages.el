;;; packages.el --- rgp-org layer packages file for Spacemacs

;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Rafael <rafael@debian64>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst win32-p (eq system-type 'windows-nt) "Windows OS.")
(defconst virtualbox-p (string-equal system-name "debian") "Virtualbox Machine")
(defconst debian-p (string-equal system-name "debian.local") "Debian Laptop")
(defconst linux-p (eq system-name 'gnu/linux))
(defconst cygwin-p (eq system-name 'cygwin))
(when win32-p (defvar org-dir "~/org/"
                "org directory in Windows and my life laptop"))
(when debian-p (defvar org-dir "~/org/"
                 "org directory in Windows and my life laptop"))
(when virtualbox-p (defvar org-dir "/media/e/dropbox/org/"
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
      (setq org-agenda-tags-column -130)
      (setq org-agenda-window-setup 'current-window)
      (setq org-export-html-postamble nil)
      (setq org-tags-column 0)
      (setq org-hide-leading-stars t)
      (setq org-indent-mode t)
      (setq org-startup-indented t)
      (setq calendar-week-start-day 1)
      (setq org-time-stamp-rounding-minutes (quote (0 1))) ;; Change timestamps by multiples of 1
      (setq org-agenda-files (list
                              (expand-file-name "agenda.org" org-dir)
                              (expand-file-name "gforces.org" org-dir)))
      (custom-set-faces
       '(org-agenda-calendar-event ((t (:foreground "Orange"))))
       '(org-agenda-date           ((t (:foreground "SteelBLue1"))))
       '(org-agenda-date-today     ((t (:foreground "SteelBLue1" :background nil :bold t :inverse-video nil))))
       '(org-agenda-date-weekend   ((t (:foreground "SteelBLue1" :bold t :underline nil))))
       '(org-agenda-done           ((t (:foreground "Gray50"))))
       '(org-block                 ((t (:foreground "LawnGreen"))))
       '(org-block-begin-line      ((t (:foreground "ForestGreen"))))
       '(org-block-end-line        ((t (:foreground "ForestGreen"))))
       '(org-date                  ((t (:foreground "Plum3" :underline t))))
       '(org-done                  ((t (:foreground "Gray50" :bold t))))
       '(org-hide                  ((t (:foreground "Gray7"))))
       '(org-level-1               ((t (:foreground "Deep Pink" :height 1.0))))
       '(org-level-2               ((t (:foreground "OliveDrab3" :height 1.0))))
       '(org-level-3               ((t (:foreground "Sky Blue" :height 1.0))))
       '(org-level-4               ((t (:foreground "Indian Red" :height 1.0))))
       '(org-level-5               ((t (:foreground "Light Goldenrod" :height 1.0))))
       '(org-level-6               ((t (:foreground "Orange" :height 1.0))))
       '(org-level-7               ((t (:foreground "Firebrick2" :height 1.0))))
       '(org-level-8               ((t (:foreground "Mint Cream" :height 1.0))))
       '(org-scheduled             ((t (:foreground "OliveDrab3"))))
       '(org-scheduled-previously  ((t (:foreground "Orange"))))
       '(org-scheduled-today       ((t (:foreground "Orange"))))
       '(org-special-keyword       ((t (:foreground "Plum3"))))
       '(org-tag                   ((t (:foreground "Gray50" :bold nil)))) '(org-todo                  ((t (:foreground "Firebrick2" :bold t))))))))
