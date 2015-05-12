;; -*- mode: dotspacemacs -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; --------------------------------------------------------
     ;; Example of useful layers you may want to use right away
     ;; Uncomment a layer name and press C-c C-c to install it
     ;; --------------------------------------------------------
     ;; better-defaults
     ;; (git :variables
     ;;      git-gutter-use-fringe t)
     ;; markdown
     ;; syntax-checking
     auto-completion
     org
     rgp-bookmark+
     rgp-dired+
     rgp-elmacro
     rgp-eshell
     rgp-helm
     rgp-ido
     rgp-layer
     rgp-nxml
     rgp-org
     rgp-popwin
     rgp-php
     rgp-rotate-text
     rgp-swiper
     rgp-webmode
     rgp-yasnippet
     )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progess in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to a .PNG file.
   ;; If the value is nil then no banner is displayed.
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner 'official
   ;; t if you always want to see the changelog at startup
   dotspacemacs-always-show-changelog t
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         wombat
                         )
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.4)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil the paste micro-state is enabled. While enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state t
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
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
  (add-hook 'prog-mode-hook (lambda () (linum-mode 1)))
  (setq linum-format "%4d")
  (setq powerline-default-separator 'arrow)
  (global-set-key (kbd "M-SPC") 'evil-normal-state)
  (evil-leader/set-key "w <RET>" 'delete-other-windows)
  (evil-leader/set-key "oa" 'duplicate-line-above)
  (evil-leader/set-key "ob" 'duplicate-line-below)
  (evil-leader/set-key "oc" 'cleanup-buffer)
  (evil-leader/set-key "ol" 'align-regexp)
  (evil-leader/set-key "or" 'rotate-text)
  (evil-leader/set-key "os" 'sort-lines)
  (evil-leader/set-key "ow" 'save-buffer)
  (setq initial-scratch-message
        (concat ";; Initialization successful, welcome to "
                (substring (emacs-version) 0 16) "."))         ;; New scratch buffer text
  (global-prettify-symbols-mode 1)                             ;; Display a lambda symbol itstead of the word
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))    ;; Show file path in the title bar if available. Buffer name otherwise
  (menu-bar-mode 1)                                            ;; Show menu bar
  (custom-set-faces
   '(org-agenda-calendar-event ((t (:foreground "Orange"))))
   '(org-agenda-date           ((t (:foreground "SteelBLue1"))))
   '(org-agenda-date-today     ((t (:foreground "SteelBLue1" :background nil :bold t :inverse-video nil))))
   '(org-agenda-date-weekend   ((t (:foreground "SteelBLue1" :bold t :underline nil))))
   '(org-agenda-done           ((t (:foreground "Gray30"))))
   '(org-block                 ((t (:foreground "LawnGreen"))))
   '(org-block-begin-line      ((t (:foreground "ForestGreen"))))
   '(org-block-end-line        ((t (:foreground "ForestGreen"))))
   '(org-date                  ((t (:foreground "Plum3" :underline t))))
   '(org-done                  ((t (:foreground "Gray40" :bold t))))
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
   '(org-tag                   ((t (:foreground "SteelBLue1"))))
   '(org-todo                  ((t (:foreground "Firebrick2" :bold t))))
   )
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
 '(paradox-github-token t)
 '(ring-bell-function (quote ignore) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(swiper-line-face ((t (:background "forestgreen"))))
 '(swiper-match-face-3 ((t (:foreground "white" :background "darkorange")))))
