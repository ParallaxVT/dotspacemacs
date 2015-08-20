;ce; -*- mode: dotspacemacs -*-
(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default

   dotspacemacs-configuration-layer-path '()

   dotspacemacs-configuration-layers
   '(colors
     emacs-lisp ;; Required
     evil-commentary
     git
     org
     shell ;; Required
     version-control
     rgp-bookmark+
     rgp-counsel
     rgp-dired+
     rgp-elmacro
     rgp-eshell
     rgp-flyspell
     rgp-helm
     rgp-ido
     rgp-layer
     rgp-magit
     rgp-nxml
     rgp-org
     rgp-php
     rgp-popwin
     rgp-rotate-text
     rgp-swiper
     rgp-webmode
     rgp-yasnippet
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-complete-with-key-sequence "ht")
     )

   dotspacemacs-excluded-packages '(ace-jump-mode
                                    ace-window
                                    google-translate
                                    helm-swopp
                                    highlight-numbers
                                    lunum-relative
                                    )
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  (setq-default
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-always-show-changelog t
   dotspacemacs-startup-lists '(nil)
   dotspacemacs-themes '(monokai wombat)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.4)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key "nil"
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-command-key ":"
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-use-ido nil 
   dotspacemacs-enable-paste-micro-state t
   dotspacemacs-guide-key-delay 0.4
   dotspacemacs-loading-progress-bar nil
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native t
   dotspacemacs-maximized-at-startup t
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-mode-line-unicode-symbols nil
   dotspacemacs-smooth-scrolling t
   dotspacemacs-smartparens-strict-mode t
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   )
  ;; User initialization goes here
  (setq-default
   evil-escape-key-sequence "fd"
   )
  )

(defun dotspacemacs/config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."
  (global-company-mode)
  (add-hook 'prog-mode-hook (lambda () (linum-mode 1)))
  (setq linum-format "%4d")
  (setq powerline-default-separator 'arrow)
  (global-set-key (kbd "M-SPC") 'evil-normal-state)
  (global-set-key (kbd "M-<RET>") 'yas-expand)
  (evil-leader/set-key "w <RET>" 'delete-other-windows)
  (evil-leader/set-key "oa" 'duplicate-line-above)
  (evil-leader/set-key "ob" 'duplicate-line-below)
  (evil-leader/set-key "oc" 'cleanup-buffer)
  (evil-leader/set-key "og" 'open-agenda-file)
  (evil-leader/set-key "oh" 'start-helm-ag)
  (evil-leader/set-key "ol" 'align-regexp)
  (evil-leader/set-key "oo" 'smart-switch-to-previous-buffer)
  (evil-leader/set-key "or" 'rotate-text)
  (evil-leader/set-key "os" 'sort-lines)
  (evil-leader/set-key "ow" 'save-buffer)
  (setq magit-last-seen-setup-instructions "1.4.0")
  (setq initial-scratch-message
        (concat ";; Initialization successful, welcome to "
                (substring (emacs-version) 0 16) "."))         ;; New scratch buffer text
  (global-prettify-symbols-mode 1)                             ;; Display a lambda symbol itstead of the word
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))    ;; Show file path in the title bar if available. Buffer name otherwise
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(package-selected-packages
   (quote
    (magit fringe-helper auto-complete avy names company anzu iedit smartparens highlight flx popup pos-tip guide-key s popwin yasnippet request projectile helm async parent-mode alert log4e gntp spinner pkg-info epl evil-leader evil bind-key dash gh gitignore-mode github-browse-file logito pcache magit-popup git-commit with-editor toc-org pcre2el window-numbering web-mode volatile-highlights vi-tilde-fringe use-package swiper smooth-scrolling smeargle shell-pop rfringe rainbow-delimiters powerline php-mode paradox page-break-lines org-repo-todo org-present org-pomodoro org-bullets open-junk-file neotree multi-term move-text monokai-theme magit-gh-pulls macrostep linum-relative leuven-theme info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-anything highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-descbinds helm-c-yasnippet helm-ag guide-key-tip google-translate golden-ratio gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe gist gh-md flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-terminal-cursor-changer evil-surround evil-search-highlight-persist evil-org evil-numbers evil-nerd-commenter evil-matchit evil-lisp-state evil-jumper evil-indent-textobject evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu elmacro elisp-slime-nav dired+ company-statistics company-quickhelp clean-aindent-mode buffer-move bookmark+ auto-yasnippet auto-highlight-symbol auto-dictionary aggressive-indent adaptive-wrap ace-window ace-link ace-jump-mode ac-ispell)))
 '(paradox-github-token t)
 '(ring-bell-function (quote ignore)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(org-agenda-calendar-event ((t (:foreground "Orange"))))
 '(org-agenda-date ((t (:foreground "SteelBLue1"))) t)
 '(org-agenda-date-today ((t (:foreground "SteelBLue1" :background nil :bold t :inverse-video nil))) t)
 '(org-agenda-date-weekend ((t (:foreground "SteelBLue1" :bold t :underline nil))) t)
 '(org-agenda-done ((t (:foreground "Gray30"))))
 '(org-block ((t (:foreground "LawnGreen"))))
 '(org-block-begin-line ((t (:foreground "ForestGreen"))) t)
 '(org-block-end-line ((t (:foreground "ForestGreen"))) t)
 '(org-date ((t (:foreground "Plum3" :underline t))))
 '(org-done ((t (:foreground "Gray40" :bold t))))
 '(org-hide ((t (:foreground "Gray7"))))
 '(org-level-1 ((t (:foreground "Deep Pink" :height 1.0))))
 '(org-level-2 ((t (:foreground "OliveDrab3" :height 1.0))))
 '(org-level-3 ((t (:foreground "Sky Blue" :height 1.0))))
 '(org-level-4 ((t (:foreground "Indian Red" :height 1.0))))
 '(org-level-5 ((t (:foreground "Light Goldenrod" :height 1.0))))
 '(org-level-6 ((t (:foreground "Orange" :height 1.0))))
 '(org-level-7 ((t (:foreground "Firebrick2" :height 1.0))))
 '(org-level-8 ((t (:foreground "Mint Cream" :height 1.0))))
 '(org-scheduled ((t (:foreground "OliveDrab3"))))
 '(org-scheduled-previously ((t (:foreground "Orange"))))
 '(org-scheduled-today ((t (:foreground "Orange"))))
 '(org-special-keyword ((t (:foreground "Plum3"))))
 '(org-tag ((t (:foreground "SteelBLue1"))))
 '(org-todo ((t (:foreground "Firebrick2" :bold t))))
 '(swiper-line-face ((t (:background "forestgreen"))))
 '(swiper-match-face-3 ((t (:foreground "white" :background "darkorange")))))
