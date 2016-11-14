;; -*- mode: emacs-lisp -*-

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     auto-completion
     better-defaults
     colors
     emacs-lisp ;; Required
     evil-commentary
     git
     github
     ivy
     markdown
     org
     ;;python
     shell ;; Required
     spell-checking
     version-control
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     rgp-eshell
     rgp-flyspell
     rgp-krpano
     rgp-layer
     rgp-multi-term
     rgp-org
     rgp-python
     rgp-rotate-text
     rgp-webmode
     rgp-yasnippet
     )
   dotspacemacs-additional-packages '(
                                      bookmark+
                                      dired+
                                      elmacro
                                      vimish-fold
                                      evil-vimish-fold)
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https nil
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading t
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '((recents . 10))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(monokai
                         spacemacs-dark)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Hack"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.4)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ t
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text t
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-helm-resize t
   dotspacemacs-helm-no-header t
   dotspacemacs-helm-position 'bottom
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar nil
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native t
   dotspacemacs-maximized-at-startup t
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols nil
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers nil
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode t
   dotspacemacs-smart-closing-parenthesis t
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup 'trailing
  ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  (setq linum-format "%4d")
  (setq powerline-default-separator 'arrow)
  (setq initial-scratch-message
        (concat ";; Initialization successful, welcome to "
                (substring (emacs-version) 0 16) "."))         ;; New scratch buffer text
  (global-prettify-symbols-mode 1)                             ;; Display a lambda symbol itstead of the word
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))    ;; Show file path in the title bar if available. Buffer name otherwise
  (setq vc-follow-symlinks t)                                  ;; Follow symlinks without asking
  (global-company-mode)
  (spacemacs/toggle-automatic-symbol-highlight-on)
  (setq git-gutter-fr+-side 'left-fringe)
  (add-to-list 'company-backends 'company-krpano)
  ;; Fix spacemacs take ages to startup
  (setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
 ;; ====================================================================
  ;; Keybindings
  ;; ====================================================================
  (global-set-key (kbd "M-SPC") 'evil-normal-state)
  (global-set-key (kbd "M-<RET>") 'company-yasnippet)
  (global-set-key (kbd "C-c c") 'Insert-GforcesCar)
  (global-set-key (kbd "C-c c") 'company-complete)
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
  (evil-leader/set-key "oS" 'sort-krpano)
  (evil-leader/set-key "ow" 'save-buffer)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
