;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

(package! org-auto-tangle)

(package! git-modes)
(package! vimrc-mode)
(package! prettier-js)
(package! rainbow-mode)
(package! systemd)
(package! just-mode)
(package! sxhkd-mode
  :recipe (:host github :repo "xFA25E/sxhkd-mode"))
(package! ebuild-mode)
(package! portage-modes
  :recipe (:host github :repo "OpenSauce04/portage-modes"))
