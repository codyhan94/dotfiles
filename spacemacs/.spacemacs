;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;; Configuration Layers
;; --------------------

(setq-default
 ;; List of additional paths where to look for configuration layers.
 ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
 dotspacemacs-configuration-layer-path '()
 ;; List of configuration layers to load.
 dotspacemacs-configuration-layers '(latex cdlatex haskell c-c++ git org auto-completion syntax-checking)
 ;; A list of packages and/or extensions that will not be install and loaded.
 dotspacemacs-excluded-packages '()
)

;; Settings
;; --------

(setq-default
 ;; allows github integration
 paradox-github-token 'c694c1f35452136f34fda8d256ceaf5718659a0a
 ;; Specify the startup banner. If the value is an integer then the
 ;; banner with the corresponding index is used, if the value is `random' ;; then the banner is chosen randomly among the available banners, if
 ;; the value is nil then no banner is displayed.
 ;; dotspacemacs-startup-banner 'random
 ;; Default theme applied at startup
 dotspacemacs-default-theme 'solarized-light
 ;; The leader key
 dotspacemacs-leader-key "SPC"
 ;; Major mode leader key is a shortcut key which is the equivalent of
 ;; pressing `<leader> m`
 dotspacemacs-major-mode-leader-key ","
 ;; The command key used for Evil commands (ex-commands) and
 ;; Emacs commands (M-x).
 ;; By default the command key is `:' so ex-commands are executed like in Vim
 ;; with `:' and Emacs commands are executed with `<leader> :'.
 dotspacemacs-command-key ":"
 ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
 ;; the commands bound to the current keystrokes.
 dotspacemacs-guide-key-delay 0.4
 ;; If non nil the frame is fullscreen when Emacs starts up (Emacs 24.4+ only).
 dotspacemacs-fullscreen-at-startup nil
 ;; If non nil the frame is maximized when Emacs starts up (Emacs 24.4+ only).
 ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
 dotspacemacs-maximized-at-startup nil
 ;; If non nil unicode symbols are displayed in the mode line (e.g. for lighters)
 dotspacemacs-mode-line-unicode-symbols t
 ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth scrolling
 ;; overrides the default behavior of Emacs which recenters the point when
 ;; it reaches the top or bottom of the screen
 dotspacemacs-smooth-scrolling t
 ;; If non nil pressing 'jk' in insert state, ido or helm will activate the
 ;; evil leader.
;; dotspacemacs-feature-toggle-leader-on-jk t
 ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
 dotspacemacs-smartparens-strict-mode nil
 ;; If non nil advises quit functions to keep server open when quitting.
 dotspacemacs-persistent-server nil
 ;; The default package repository used if no explicit repository has been
 ;; specified with an installed package.
 ;; Not used for now.
 dotspacemacs-default-package-repository nil
 )


;; Initialization Hooks
;; --------------------

(defun dotspacemacs/init ()
  "User initialization for Spacemacs. This function is called at the very
 startup."
  (progn
    (global-linum-mode t)
    )
  )

(defun dotspacemacs/config ()
  "This is were you can ultimately override default Spacemacs configuration.
This function is called at the very end of Spacemacs initialization."
  (progn
    (defun comment-or-uncomment-region-or-line ()
      "Comments or uncomments the region or the current line if there's no active region."
      (interactive)
      (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
          (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))

    (spacemacs/set-default-font '("PragmataPro"
                                :size 12
                                :weight normal
                                :width normal
                                :powerline-scale 1.1))
    ;; (key-chord-define-global ";;" 'comment-or-uncomment-region-or-line)

    ;; Follow symlinks without asking. Bypasses version control systems
    (setq vc-follow-symlinks t)

    ;; A bunch of insert state commands so that insert mode is still emacs
    (define-key evil-insert-state-map "\C-e" 'end-of-line)
    (define-key evil-visual-state-map "\C-e" 'evil-end-of-line)
    (define-key evil-insert-state-map "\C-f" 'evil-forward-char)
    (define-key evil-insert-state-map "\C-b" 'evil-backward-char)
    (define-key evil-visual-state-map "\C-b" 'evil-backward-char)
    (define-key evil-insert-state-map "\C-d" 'evil-delete-char)
    (define-key evil-visual-state-map "\C-d" 'evil-delete-char)
    (define-key evil-insert-state-map "\C-n" 'evil-next-line)
    (define-key evil-visual-state-map "\C-n" 'evil-next-line)
    (define-key evil-insert-state-map "\C-p" 'evil-previous-line)
    (define-key evil-visual-state-map "\C-p" 'evil-previous-line)
    (define-key evil-insert-state-map "\C-w" 'evil-delete-backward-word)
    (define-key evil-visual-state-map "\C-w" 'evil-delete)
    (define-key evil-normal-state-map "\C-u" 'evil-scroll-up)
    (define-key evil-visual-state-map "\C-u" 'evil-scroll-up)
    ;; (define-key evil-normal-state-map "\C-y" 'yank)
    (define-key evil-insert-state-map "\C-y" 'yank)
    ;; (define-key evil-visual-state-map "\C-y" 'yank)
    (define-key evil-insert-state-map "\C-k" 'kill-line)
    (define-key evil-visual-state-map "\C-k" 'kill-line)
    (define-key evil-normal-state-map "0" 'evil-beginning-of-line)
    ;; Custom move commands, like in vim. Visual and normal modes
    (define-key evil-normal-state-map "H" 'evil-first-non-blank)
    (define-key evil-normal-state-map "L" 'evil-end-of-line)
    (define-key evil-normal-state-map "0" 'evil-beginning-of-line)
    (define-key evil-visual-state-map "H" 'evil-first-non-blank)
    (define-key evil-visual-state-map "L" 'evil-end-of-line)
    (define-key evil-visual-state-map "k" 'evil-previous-visual-line)
    (define-key evil-normal-state-map "j" 'evil-next-visual-line)

    ;; Paredit gives nice bindings like C-), use it
    (sp-use-paredit-bindings)

    ;; This is moved to fd for spacemacs so that jk can be used for other things.
    ;; (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

    ;; 80 character columns
    (set-fill-column 80)

    ;; Dark themes make the powerline hard to read.
    ;; (load-theme 'sanityinc-tomorrow-night t)

    ;; Load auctex on demand (slow!)
    ;; (load-auctex-on-demand)

    (setq-default c-basic-offset 4 c-default-style "linux")
    (add-hook 'c++-mode-hook '(lambda ()
                                  (electric-indent-mode -1)))
    (add-hook 'c-mode-hook '(lambda ()
                                  (electric-indent-mode -1)))

    (setq LaTeX-verbatim-environments-local `("lstlisting"))
    (add-hook 'LaTeX-mode-hook
          (lambda ()
             (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
             (setq TeX-save-query nil)
             (setq TeX-show-compilation t)))
    ;; Spacemacs handles font setting
    ;; (set-face-attribute 'default t :font "PragmataPro-10")
    )
)

;; Custom variables
;; ----------------

;; Do not write anything in this section. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-list (quote (("Zathura" "zathura %o"))))
 '(TeX-view-program-selection
   (quote
    (((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Zathura")
     (output-html "xdg-open"))))
 '(ac-ispell-requires 4)
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(ring-bell-function (quote ignore) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
