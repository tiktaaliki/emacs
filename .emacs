(require 'package) ;; sets up package.el, which is a package manager for emacs. comes automatically bundled with it.

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/")
             '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'load-path "~/Dropbox/emacs/.emacs.d")

(package-initialize) 
(unless (package-installed-p 'use-package)
  (package-refresh-contents)

(package-install 'use-package))

(eval-when-compile 
(require 'use-package))
(use-package org
  :ensure org-plus-contrib )
(org-babel-load-file "~/Dropbox/emacs/settings.org")
(org-babel-load-file "~/Dropbox/emacs/pi.org") 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bib-file "~/Dropbox/Zettelkasten/references.bib")
 '(dired-hide-details-hide-symlink-targets nil)
 '(interleave-org-notes-dir-list (quote ("~/org/" ".")))
 '(org-clock-continuously t)
 '(org-clock-in-switch-to-state nil)
 '(org-clock-out-remove-zero-time-clocks nil)
 '(org-default-notes-file "~/Dropbox/Zettelkasten/org/inbox.org")
 '(org-emphasis-alist
   (quote
    (("!"
      (:background "slategray1" :weight bold :foreground "red3" :family consolas)
      verbatim)
     ("*"
      (:family nil :foreground "chartreuse" :weight bold)
      verbatim)
     ("/"
      (:slant italic :foreground "chartreuse")
      verbatim)
     ("_"
      (:foreground "chartreuse" :underline t)
      verbatim)
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (:weight bold :strike-through t :foreground "chartreuse")
      verbatim))))
 '(org-gcal-auto-archive t)
 '(org-gcal-client-secret "OlIZFIll-Md3n6NxVkpSWr-3")
 '(org-gcal-down-days 180)
 '(org-gcal-file-alist
   (quote
    (("betsy.yoon@gmail.com" . "~/Dropbox/Zettelkasten/org/gcal.org"))))
 '(org-gcal-up-days 7)
 '(org-time-clocksum-use-fractional nil)
 '(package-selected-packages
   (quote
    (anzu korean-holidays yasnippet pamparam outline-toc centered-window-mode calfw-org exwm darkokai-theme annotate dash hydra multiple-cursors pandoc org-brain w3m calfw habitica org-pdfview draft-mode toc-org benchmark-init wc-mode magit bbdb bibretrieve bibtex-utils pdf-tools interleave company org-ref flyspell-correct-helm helm use-package org-plus-contrib color-theme)))
 '(projectile-enable-caching t)
 '(shr-max-image-proportion 2.0)
 '(vc-follow-symlinks nil)
 '(visual-fill-column-center-text t)
 '(visual-fill-column-width 180))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#242728" :foreground "lemon chiffon" :weight normal :height 151 :family "Consolas"))))
 '(custom-variable-tag ((t (:inherit variable-pitch :foreground "gold" :height 1.1))))
 '(fringe ((t (:background "#242728"))))
 '(helm-selection ((t (:inherit bold :background "black" :foreground "magenta" :underline t))))
 '(highlight ((t (:background "black" :foreground "magenta"))))
 '(link ((t (:foreground "#06d8ff" :underline t :weight normal))))
 '(neo-dir-link-face ((t (:foreground "tomato" :height 0.7))))
 '(neo-file-link-face ((t (:foreground "#f8fbfc" :height 0.7))))
 '(neo-header-face ((t (:background "#242728" :foreground "#ffffff" :height 0.7))))
 '(neo-root-dir-face ((t (:background "#242728" :foreground "#63de5d" :height 0.7))))
 '(org-block ((t (:foreground "gainsboro"))))
 '(org-clock-overlay ((t (:background "dim gray"))))
 '(org-date ((t (:foreground "steel blue" :underline t))))
 '(org-default ((t (:inherit default))))
 '(org-done ((t (:foreground "dark gray" :weight normal))))
 '(org-ellipsis ((t (:foreground "#6A6D70" :height 0.5))))
 '(org-level-1 ((t (:inherit nil :foreground "gray" :weight bold :height 1.5 :width extra-expanded :family "pompiere"))))
 '(org-level-2 ((t (:inherit variable-pitch :foreground "light goldenrod" :height 0.95))))
 '(org-level-3 ((t (:inherit variable-pitch :foreground "SlateGray1" :height 0.95))))
 '(org-level-4 ((t (:inherit variable-pitch :foreground "#E6DB74" :height 0.95))))
 '(org-level-5 ((t (:inherit variable-pitch :foreground "MediumOrchid1"))))
 '(org-level-6 ((t (:inherit variable-pitch :foreground "RoyalBlue3"))))
 '(org-link ((t (:foreground "LightSteelBlue3" :underline t :family "nova mono"))))
 '(org-special-keyword ((t (:foreground "#6A6D70" :weight normal))))
 '(org-tag ((t (:foreground "chartreuse3" :slant normal :weight normal :height 130 :family "consolas"))))
 '(org-todo ((t (:background "gray13" :foreground "orange red" :box (:line-width 2 :color "#242728") :weight normal :family "fira mono"))))
 '(variable-pitch ((t (:family "happy monkey")))))
