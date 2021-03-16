(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-visited-mode t)
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(fill-column 120)
 '(global-visual-fill-column-mode t)
 '(global-visual-line-mode t)
 '(mode-line-format
   '("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote " " mode-line-misc-info mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
     (vc-mode vc-mode)
     "  " mode-line-modes mode-line-end-spaces))
 '(org-modules
   '(ol-bibtex ol-docview ol-eww org-habit org-id org-inlinetask org-protocol org-tempo ol-w3m ol-bookmark org-checklist org-depend org-invoice org-registry org-toc))
 '(package-selected-packages
   '(visual-fill-column interleave org-noter org-ref deft burly org-sidebar org-plus-contrib helm-chronos chronos org-alert pdf-view-restore pdf-tools nov olivetti anki-editor org-mru-clock org-roam magit doom-themes org-superstar use-package unkillable-scratch smartparens helm-projectile bufler aggressive-indent))
 '(safe-local-variable-values
   '((org-download-image-dir . "/home/betsy/.local/share/Anki2/User 1/collection.media")
     (org-reverse-note-order))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:foreground "#ba5536" :weight bold))))
 '(italic ((t (:foreground "#31a9b8" :slant italic))))
 '(link ((t (:foreground "#51afef" :underline t :weight normal :family "monofur"))))
 '(org-date ((t (:foreground "#ECBE7B" :underline t :family "monofur"))))
 '(org-done ((t (:inherit org-headline-done :weight normal :height 0.9 :family "nova mono"))))
 '(org-drawer ((t (:foreground "sky blue" :height 0.8))))
 '(org-ellipsis ((t (:foreground "#a4cabc" :underline nil))))
 '(org-headline-done ((t (:foreground "#5B6268" :strike-through t))))
 '(org-level-1 ((t (:inherit outline-1))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "#9a9eab" :height 0.9))))
 '(org-level-3 ((t (:inherit org-level-2 :foreground "#68829e" :height 0.9))))
 '(org-level-4 ((t (:inherit org-level-3 :foreground "light coral" :height 1.0))))
 '(org-link ((t (:inherit link :foreground "#b38867" :underline nil :weight normal :family "monofur"))))
 '(org-property-value ((t (:foreground "#83898d" :height 0.9))) t)
 '(org-special-keyword ((t (:foreground "#83898d" :height 0.9))))
 '(org-todo ((t (:foreground "#98be65" :weight normal :height 0.75 :family "nova mono"))))
 '(outline-1 ((t (:extend t :foreground "#51afef" :weight bold :family "Victor Mono"))))
 '(underline ((t (:foreground "#89da59" :underline t)))))
