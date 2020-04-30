(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(line-spacing 0.2)
 '(org-modules
   (quote
    (ol-bibtex ol-eww org-habit org-id org-protocol ol-w3m)))
 '(org-todo-keyword-faces
   (quote
    (("WAIT" :weight regular :underline nil :inherit org-todo :foreground "yellow")
     ("PROJ" :weight regular :underline nil :inherit org-todo :foreground "purple")
     ("TODO" :weight regular :underline nil :inherit org-todo :foreground "#e8a735")
     ("HABIT" :weight regular :underline nil :inherit org-todo :foreground "pale green")))))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#282c34" :foreground "#ebdcb2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 250 :width normal :foundry "PfEd" :family "Fantasque Sans Mono"))))
 '(bold ((t (:foreground "#f0810f" :weight bold))))
 '(bold-italic ((t (:inherit italic))))
 '(org-done ((t (:inherit org-headline-done))))
 '(org-link ((t (:inherit link :foreground "chocolate" :weight normal :family "monofur"))))
 '(org-todo ((t (:foreground "#98be65" :weight normal :family "nova mono"))))
 '(underline ((t (:foreground "#89da59" :underline t))))
 '(variable-pitch ((t (:height 1.2 :family "koho")))))
