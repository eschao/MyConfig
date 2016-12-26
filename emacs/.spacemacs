;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.
(add-to-list 'load-path "~/.emacs.d/chao-theme")

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; better-defaults
     emacs-lisp
     git
     ;markdown
     ;deft
     org
     ;gtags
     (geolocation :variables
                  geolocation-enable-weather-forecast t)
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;spell-checking
     syntax-checking
     semantic
     shell
     python
     java
     php
     ycmd
     eyebrowse
     xcode
     ;osx
     version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(hlinum
                                      evil-vimish-fold
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(chao
                         )
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t 
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil

   )

  ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
  ;; size to make separators look not too crappy.
  (cond
   ;; Linux OS
   ((eq system-type 'gnu/linux)
	;; (setq-default dotspacemacs-default-font '("Courier 10 Pitch"
  (setq-default dotspacemacs-default-font '("Source Code Pro"
											  :size 13
											  :weight normal 
											  :width normal
											  :height normal
											  :powerline-scale 1.1)))
   ;; Mac OS
   ((eq system-type 'darwin)
	(setq-default dotspacemacs-default-font '("Source Code Pro"
											  :size 13
											  :weight light 
											  :width normal
											  :height normal
											  :powerline-scale 1.1)))
  ))

(defun my-global-init ()
  "Global init."
  (setq c-comment-indent nil)
  (setq show-trailing-whitespace nil)
  (setq-default show-trailing-whitespace nil)

  (set-fill-column 80)
  (spacemacs/toggle-fill-column-indicator-on)
  (indent-guide-global-mode)
  )

(defun my-tab-width ()
  "Tab width setting."
  (setq-default tab-width 4
                tab-always-indent nil
                indent-tabs-mode nil
                tab-stop-list (number-sequence 4 300 4))
  ;; Set tab for current buffer, some default global
  ;; settings can't be overrided by setq-default
  (setq tab-width 4
        tab-always-indent nil
        indent-tabs-mode nil
        tab-stop-list (number-sequence 4 300 4))

  (my-global-init)
  )

(defun my-java-init-mode ()
  "Java initial settings."
  (my-tab-width)
  (company-mode)
  (company-ycmd-setup)
  (my-global-init)
  )

(defun my-js-init-mode ()
  "Javascript initial settings."
  (my-tab-width)
  (my-global-init)
  )

(defun my-c-init-mode ()
  "C/C++ initial settings."
  (setq c-comment-indent nil)
  (c-set-style "stroustrup")
  (setq-default tab-width 4
                c-basic-offset 4
                c-tab-always-indent nil
                tab-always-indent nil
                indent-tabs-mode nil)

  (setq tab-width 4
        c-basic-offset 4
        c-tab-always-indent nil
        tab-always-indent nil
        indent-tabs-mode nil)

  (company-mode)
  (company-ycmd-setup)
  (my-global-init)
  )

(defun my-html-init-mode ()
  "Html initial settings."
  (my-tab-width)
  (my-global-init)
  (setq sgml-basic-offset 4)
  )

(defvar ange-ftp-hosts-no-pasv '("localhost"))
(defun ange-ftp-set-passive ()
  "Function to send a PASV command to hosts not named in the variable
  `ange-ft-hosts-no-pasv'. Intended to be called from the hook variable
  `ange-ftp-process-startup-hook'."	; rephrased significantly // era
  (if (not (member host ange-ftp-hosts-no-pasv))
      (ange-ftp-raw-send-cmd proc "passive"))
  )

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  ;; global setting to input TAB
  ;;(global-set-key (kbd "TAB") 'self-insert-command);
  (global-set-key (kbd "TAB") 'tab-to-tab-stop);
  ;;(global-set-key (kbd "C-c q") 'bing-dict);

  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
  (add-hook 'java-mode-hook 'my-java-init-mode)
  (add-hook 'c-mode-hook 'my-c-init-mode)
  (add-hook 'c++-mode-hook 'my-c-init-mode)
  (add-hook 'objc-mode-hook 'my-c-init-mode)
  (add-hook 'js2-mode-hook 'my-js-init-mode)
  (add-hook 'js-mode-hook 'my-js-init-mode)
  (add-hook 'emacs-lisp-mode-hook 'my-global-init)
  (add-hook 'python-mode-hook 'my-tab-width)
  (add-hook 'html-mode-hook 'my-html-init-mode)
  (add-hook 'sgml-mode-hook 'my-html-init-mode)
  (add-hook 'css-mode-hook 'my-html-init-mode)
  (add-hook 'ange-ftp-process-startup-hook 'ange-ftp-set-passive)

  ;; disable mouse scroll
  (mouse-wheel-mode -1)

  ;; toggle off show trailing whitespace
  (setq show-trailing-whitespace nil)
  (setq-default show-trailing-whitespace nil)

  ;(add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'after-init-hook #'global-flycheck-mode)

  )

(defun my-ycmd-config ()
  "Ycmd setting."
  ;; (setq ycmd--log-enabled nil)
  ;; (setq ycmd-force-semantic-completion t)
  (cond
   ;; Mac OS
   ((spacemacs/system-is-mac)
    (set-variable 'ycmd-server-command '("python" "/Users/chao/.ycmd/ycmd/"))
   )
   ;; Linux
   ((spacemacs/system-is-linux)
    (set-variable 'ycmd-server-command '("python" "/home/chao/.ycmd/ycmd"))
    (set-variable 'ycmd-global-config "/home/chao/.ycm_extra_conf.py")
    )
  )
  (ycmd-mode)

  ; company-ycmd settings
  (company-ycmd-setup)
  ;(company-quickhelp-mode 1)
  (custom-set-variables
   '(company-require-match nil)
   '(company-auto-complete nil)
   '(company-idle-delay 0)
   '(company-show-numbers t)
   '(company-tooltip-minimum-width 50)
   '(company-minimum-prefix-length 1)
  )

  ; flycheck settings
  (flycheck-ycmd-setup)
  )

(defun my-java-mode ()
  (global-eclim-mode)
  (company-emacs-eclim-setup)
  (setq company-emacs-eclim-ignore-case t)
  (setq help-at-pt-display-when-idle t)
  (setq help-at-pt-timer-delay 0.1)
  (help-at-pt-set-timer)
  )

(defvar my-linum-format-string " %d ")
(defun my-linum-get-format-string ()
  (let* ((width (length (number-to-string
                         (count-lines (point-min) (point-max)))))
         (format (concat " %" (number-to-string width) "d ")))
    (setq my-linum-format-string format))
  )

(defun my-linum-format (line-number)
  (propertize (format my-linum-format-string line-number) 'face 'linum)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code."
  ;; This function is called at the very end of Spacemacs initialization after
  ;; layers configuration. You are free to put any user code.
  ;; Ycmd configuration
  (add-hook 'objc-mode-hook 'my-ycmd-config)
  (add-hook 'java-mode-hook 'my-java-mode)

  (cond
    ;; Mac OS
    ((spacemacs/system-is-mac)
     ;; Set meta key on Mac
     (setq mac-command-key-is-meta t)
     (setq mac-command-modifier 'meta)
     (if (display-graphic-p)
         (setq powerline-default-separator nil))
     )
    ;; Linux OS
    ((spacemacs/system-is-linux)
     ;; Meta key
     (setq x-super-keysym 'meta)

     ;; Eclim settings
     (setq eclim-eclipse-dirs "~/IBM/eclipse-luna"
           eclim-executable "~/IBM/eclipse-luna/eclim")
     )
	;; Default font. `powerline-scale' allows to quickly tweak the mode-line
	;; size to make separators look not too crappy.
	(set-face-attribute 'default nil :font "Courier 10 Pitch" :weight 'normal)
   )

  ;(setq mac-option-modifier nil)
  (add-hook 'linum-before-numbering-hook 'my-linum-get-format-string)
  (global-linum-mode 1)
  (global-hl-line-mode 1)
  (hlinum-activate)
  (setq linum-format 'my-linum-format)
  (setq chao-distinct-fringe-background t)
  (set-face-attribute 'linum-highlight-face nil
                      :bold t
                      :foreground "#FF8C00"
                      :background (color-darken-name (face-background 'default) 20))
  (set-face-attribute 'hl-line nil
                      :foreground nil
                      :background (color-darken-name (face-background 'default) 20))
                      ;:background "#6C6C6C")
  (setq vc-follow-symlinks t)

  ;; Projectile settings
  (setq projectile-indexing-method 'alien)
  (setq projectile-enable-caching t)

  ;; Smooth scroll lines
  (setq scroll-step 1)
  (setq scroll-conservatively 5000)
  (setq auto-window-vscroll nil)
  (setq auto-save-interval 1000)
  (setq org-startup-truncated nil)
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (phpunit phpcbf php-extras php-auto-yasnippets log4e gntp parent-mode pkg-info epl flx highlight drupal-mode php-mode pos-tip hydra spinner projectile vimish-fold iedit request-deferred deferred packed pythonic avy anzu helm popup helm-core alert async f dash s smeargle orgit magit-gitflow helm-gitignore request gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter evil-magit magit magit-popup git-commit with-editor diff-hl eyebrowse py-yapf bracketed-paste ycmd yasnippet auto-complete flycheck company anaconda-mode package-build bind-key evil xterm-color ws-butler theme-changer sunshine spaceline restart-emacs persp-mode osx-trash osx-location lorem-ipsum hl-todo help-fns+ helm-flx helm-company evil-mc evil-lisp-state evil-indent-plus auto-compile ace-jump-helm-line bind-map window-numbering which-key volatile-highlights vi-tilde-fringe use-package toc-org stickyfunc-enhance srefactor spray spacemacs-theme smooth-scrolling smartparens shell-pop reveal-in-osx-finder rainbow-delimiters quelpa pyvenv pytest pyenv-mode powerline popwin pip-requirements pcre2el pbcopy paradox page-break-lines org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets open-junk-file neotree multi-term move-text macrostep linum-relative leuven-theme launchctl info+ indent-guide ido-vertical-mode hy-mode hungry-delete htmlize hlinum highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-descbinds helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot flycheck-ycmd flycheck-pos-tip flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-vimish-fold evil-tutor evil-surround evil-search-highlight-persist evil-org evil-numbers evil-nerd-commenter evil-matchit evil-jumper evil-indent-textobject evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu eshell-prompt-extras esh-help emacs-eclim elisp-slime-nav define-word cython-mode company-ycmd company-statistics company-quickhelp company-anaconda clean-aindent-mode buffer-move auto-yasnippet auto-highlight-symbol auto-dictionary aggressive-indent adaptive-wrap ace-window ace-link ac-ispell)))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
