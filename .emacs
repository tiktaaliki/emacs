(package-initialize)

(require 'package)
(require 'org-install)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(add-to-list 'load-path "~/Sync/emacs/.emacs.d/lisp/")
;(setq custom-file "~/Sync/emacs/custom.el")

(setq use-package-verbose t)
(setq use-package-always-ensure t)

(eval-when-compile (require 'use-package))

;(org-babel-load-file "~/Sync/emacs/settings.org")
(org-babel-load-file "~/Sync/emacs/gallium.org")
(org-babel-load-file "~/Sync/emacs/pi.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default t)
 '(auto-save-visited-file-name t)
 '(auto-save-visited-mode t)
 '(bibtex-autokey-name-separator "-")
 '(bibtex-autokey-name-year-separator ":")
 '(bibtex-autokey-names 2)
 '(bibtex-autokey-titlewords 0)
 '(bibtex-autokey-year-length 4)
 '(delete-by-moving-to-trash t)
 '(fill-column 100)
 '(fringe-mode 100 nil (fringe))
 '(global-visual-fill-column-mode t)
 '(global-visual-line-mode t)
 '(helm-M-x-always-save-history t)
 '(menu-bar-mode nil)
 '(mu4e-compose-dont-reply-to-self t)
 '(mu4e-headers-date-format "%b-%d")
 '(mu4e-headers-fields (quote ((:human-date . 10) (:from . 22) (:subject))))
 '(mu4e-headers-visible-columns 200)
 '(mu4e-split-view (quote vertical))
 '(org-log-refile (quote time))
 '(org-refile-allow-creating-parent-nodes (quote confirm))
 '(org-structure-template-alist
   (quote
    (("a" . "export ascii")
     ("c" . "center")
     ("C" . "comment")
     ("e" . "example")
     ("E" . "export")
     ("h" . "export html")
     ("l" . "export latex")
     ("q" . "quote")
     ("s" . "src")
     ("v" . "verse"))))
 '(org-todo-keyword-faces
   (quote
    (("habit" :foreground "dodger blue" :height 0.9)
     ("TODO" :foreground "#0059b3" :height 0.9)
     ("PROJECT" :foreground "#38471f" :weight bold :underline t :height 0.75)
     ("NEXT" :foreground "red" :weight bold :height 0.9)
     ("--" :foreground "magenta1" :height 0.9)
     ("?" :foreground "salmon" :height 0.9)
     ("DONE" :foreground "dim gray" :height 0.75)
     ("x" :foreground "dim gray" :height 0.75))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "NEXT(n)" "--(s)" "|" "DONE(d!)" "x(c!)")
     (sequence "habit(h)" "PROJECT(p)" "?(w!)"))))
 '(package-selected-packages
   (quote
    (yasnippet-snippets yasnippet ledger-mode org-gcal writeroom-mode use-package smartparens org-ref org-noter org-bullets olivetti magit interleave helm-projectile flyspell-correct-helm deft company calfw-org calfw-gcal calfw-cal calfw bbdb)))
 '(pdf-view-continuous nil)
 '(projectile-mode t nil (projectile))
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(visual-fill-column-center-text t)
 '(warning-minimum-level :emergency))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#e1d5c0" :foreground "#432109" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 203 :width normal :foundry "CYEL" :family "Iosevka Term SS09"))))
 '(fringe ((t (:inherit default))))
 '(mu4e-unread-face ((t (:foreground "midnight blue" :weight bold))))
 '(org-agenda-date ((t (:inherit variable-pitch :background "pale green"))))
 '(org-agenda-done ((t (:foreground "dim gray" :strike-through t))))
 '(org-checkbox-statistics-done ((t (:inherit org-done :height 0.85))))
 '(org-done ((t (:foreground "ForestGreen"))))
 '(org-ellipsis ((t (:foreground "DarkGoldenrod" :underline nil))))
 '(org-level-1 ((t (:inherit variable-pitch :height 1.2))))
 '(org-level-2 ((t (:inherit org-level-1 :height 0.9))))
 '(org-level-3 ((t (:inherit default :foreground "black"))))
 '(org-level-4 ((t (:inherit org-level-3 :foreground "royal blue"))))
 '(org-scheduled-previously ((t (:foreground "dim gray"))))
 '(org-special-keyword ((t (:foreground "peachpuff4" :height 0.85))))
 '(org-tag ((t (:inherit default :foreground "dark violet" :height 0.8))))
 '(org-todo ((t (:foreground "Red1" :weight normal :height 0.85))))
 '(variable-pitch ((t (:foreground "black" :height 1.0 :family "exo")))))
