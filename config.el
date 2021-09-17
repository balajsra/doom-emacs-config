;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Sravan Balaji"
      user-mail-address "sr98vn@gmail.com")

(setq doom-font (font-spec :family "FiraCode Nerd Font" :size 13)
      doom-variable-pitch-font (font-spec :family "Cantarell" :size 13))

(setq doom-theme 'doom-dracula)

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

(setq projectile-project-search-path '("~/Projects/" "~/.config/"))

(add-hook! 'web-mode-hook 'prettier-js-mode)
