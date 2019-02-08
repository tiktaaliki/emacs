(package-initialize)

(require 'package)
(require 'org-install)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;(setq custom-file "~/Sync/emacs/custom.el")

(setq use-package-verbose t)
(setq use-package-always-ensure t)

(eval-when-compile (require 'use-package))

(org-babel-load-file "~/Sync/emacs/settings.org")

(org-babel-load-file "~/Sync/emacs/pi.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(auto-save-visited-file-name t)
 '(auto-save-visited-mode t)
 '(delete-by-moving-to-trash t)
 '(fringe-mode 100 nil (fringe))
 '(helm-M-x-always-save-history t)
 '(org-todo-keyword-faces
   (quote
    (("습관" :foreground "dodger blue" :height 0.9)
     ("TODO" :foreground "firebrick" :height 0.9)
     ("PROJECT" :foreground "gray40" :weight bold :underline t :height 0.75)
     ("NEXT" :foreground "red" :weight bold :height 0.9)
     ("--" :foreground "magenta1" :height 0.9)
     ("?" :foreground "yellow" :height 0.9)
     ("DONE" :foreground "dim gray" :height 0.75)
     ("x" :foreground "dim gray" :height 0.75))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "NEXT(n)" "--(s)" "|" "DONE(d!)" "x(c!)")
     (sequence "습관(h)" "PROJECT(p)" "WAITING(w!)"))))
 '(savehist-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#e1d5c0" :foreground "black" :height 215 :family "Ubuntu Mono"))))
 '(fringe ((t (:inherit default))))
 '(org-agenda-done ((t (:foreground "dim gray" :strike-through t))))
 '(org-checkbox-statistics-done ((t (:inherit org-done :height 0.85))))
 '(org-done ((t (:foreground "ForestGreen"))))
 '(org-ellipsis ((t (:foreground "DarkGoldenrod" :underline nil))))
 '(org-level-1 ((t (:inherit variable-pitch))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "black" :height 0.95))))
 '(org-level-3 ((t (:inherit outline-3 :foreground "dark blue"))))
 '(org-special-keyword ((t (:foreground "peachpuff4" :height 0.85))))
 '(org-tag ((t (:inherit default :foreground "dark violet"))))
 '(org-todo ((t (:foreground "Red1" :weight normal :height 0.85))))
 '(variable-pitch ((t (:height 1.0 :family "exo")))))
