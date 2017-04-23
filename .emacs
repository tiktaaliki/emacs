(require 'package) ;; sets up package.el, which is a package manager for emacs. comes automatically bundled with it.
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/")
             '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'load-path "~/Dropbox/emacs/.emacs.d")
(package-initialize) 
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package) ; is this necessary?
(use-package org
  :ensure org-plus-contrib
  :defer 7
 )
(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t)

(org-babel-load-file "~/Dropbox/emacs/settings.org")


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-date ((t (:foreground "cornflower blue" :underline t :weight light))))
 '(org-ellipsis ((t (:foreground "gray" :height 0.75))))
 '(org-level-1 ((t (:foreground "gainsboro" :weight bold :height 1.3 :family "quicksand"))))
 '(org-level-2 ((t (:foreground "gainsboro" :height 1.1 :width extra-expanded :family "myriad pro"))))
 '(org-level-3 ((t (:foreground "gainsboro" :width extra-expanded :family "quicksand"))))
 '(org-level-4 ((t (:foreground "burlywood"))))
 '(org-link ((t (:foreground "magenta" :underline t :family "consolas"))))
 '(org-special-keyword ((t (:foreground "gray"))))
 '(org-table ((t (:family "consolas"))))
 '(org-tag ((t (:foreground "firebrick3" :overline t :underline t :weight bold)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("10e231624707d46f7b2059cc9280c332f7c7a530ebc17dba7e506df34c5332c4" default)))
 '(org-agenda-span (quote month))
 '(org-startup-indented t)
 '(package-selected-packages
   (quote
    (ledger-mode org-gcal calfw-org calfw-gcal calfw magit gruvbox-theme bbdb bibretrieve bibtex-utils pdf-tools interleave company org-ref flyspell-correct-helm helm use-package solarized-theme org-plus-contrib color-theme))))
