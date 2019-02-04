(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(setq custom-file "~/Sync/emacs/.emacs.d/custom.el")

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
 '(annotate-annotation-column 100)
 '(bibtex-autokey-name-year-separator ":")
 '(bibtex-autokey-year-length 4)
 '(org-agenda-persistent-filter t)
 '(org-bbdb-anniversary-field (quote birthday) nil (bbdb))
 '(org-catch-invisible-edits (quote smart))
 '(org-datetree-add-timestamp (quote inactive))
 '(org-default-notes-file "~/Sync/Zettelkasten/notes.org")
 '(visual-fill-column-width 100)
 '(org-emphasis-alist
   (quote
    (("!"
      (quote
       (:weight bold :family "consolas" :foreground "red3" :background "slategray3"))
      verbatim)
     ("*"
      (quote
       (:weight bold :foreground "orchid")))
     ("/"
      (quote
       (:slant italic :foreground "darkorchid1")))
     ("_"
      (quote
       (:underline t :foreground "orangered" :weight bold)))
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (quote
       (:strike-through "chartreuse" :weight bold)))
     ("@"
      (quote
       (:weight bold :foreground "chartreuse")
       verbatim))))))
