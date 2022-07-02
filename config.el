;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Sravan Balaji")

(setq doom-font (font-spec :family "VictorMono Nerd Font" :size 14)
      doom-variable-pitch-font (font-spec :family "Ubuntu Nerd Font" :size 14)
      doom-big-font (font-spec :family "VictorMono Nerd Font" :size 24)
      doom-unicode-font (font-spec :family "FiraCode Nerd Font" :size 14))

(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))

(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

(setq doom-theme 'doom-dracula)

(doom/set-frame-opacity 95)

(setq display-line-numbers-type t)

(setq-default tab-width 4)

(setq highlight-indent-guides-method 'fill)
(setq highlight-indent-guides-responsive 'stack)
(setq highlight-indent-guides-delay 0)

(setq org-directory "~/org/")

(map! :leader
      :desc "Org babel tangle" "m B" #'org-babel-tangle)

(use-package! org-auto-tangle
  :defer t
  :hook (org-mode . org-auto-tangle-mode)
  :config
  (setq org-auto-tangle-default t)
)

(setq org-src-preserve-indentation nil
      org-edit-src-content-indentation 0)

(setq org-hide-emphasis-markers t)

(setq org-ellipsis " ▼ ")

(after! org-faces
  (defun org-colors-dracula ()
    "Enable Dracula colors for Org headers."
    (interactive)
    (dolist
        (face
         '((org-level-1 1.7 "#8be9fd" ultra-bold)
           (org-level-2 1.6 "#bd93f9" extra-bold)
           (org-level-3 1.5 "#50fa7b" bold)
           (org-level-4 1.4 "#ff79c6" semi-bold)
           (org-level-5 1.3 "#9aedfe" normal)
           (org-level-6 1.2 "#caa9fa" normal)
           (org-level-7 1.1 "#5af78e" normal)
           (org-level-8 1.0 "#ff92d0" normal)))
      (set-face-attribute (nth 0 face) nil :font doom-variable-pitch-font :weight (nth 3 face) :height (nth 1 face) :foreground (nth 2 face)))
    (set-face-attribute 'org-table nil :font doom-font :weight 'normal :height 1.0 :foreground "#bfafdf"))
  ;; Load our desired org-colors-* theme on startup
  (org-colors-dracula))

(setq org-superstar-headline-bullets-list '("◉" "●" "○" "◆" "●" "○" "◆"))
(setq org-superstar-item-bullet-alist '((?+ . ?➤) (?- . ?✦))) ; changes +/- symbols in item lists
(add-hook! org-mode (org-superstar-mode))

(setq projectile-project-search-path '("~/Projects/Personal/" "~/Projects/System/" "~/.config/"))

(add-hook! 'web-mode-hook 'prettier-js-mode)

(map! :map cdlatex-mode-map
    :i "TAB" #'cdlatex-tab)

(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))

(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)

(define-globalized-minor-mode global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))
(global-rainbow-mode 1)
