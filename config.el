;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Sravan Balaji")

(setq doom-font (font-spec :family "VictorMono Nerd Font Mono" :size 14)
      doom-variable-pitch-font (font-spec :family "Cantarell" :size 14)
      doom-big-font (font-spec :family "sb/source-code-font" :size 24))

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

(use-package! org-auto-tangle
  :defer t
  :hook (org-mode . org-auto-tangle-mode)
  :config
  (setq org-auto-tangle-default t)
)

(setq org-src-preserve-indentation nil
      org-edit-src-content-indentation 0)

(setq org-hide-emphasis-markers t)

(setq projectile-project-search-path '("~/Projects/" "~/.config/"))

(add-hook! 'web-mode-hook 'prettier-js-mode)

(map! :map cdlatex-mode-map
    :i "TAB" #'cdlatex-tab)

(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))
