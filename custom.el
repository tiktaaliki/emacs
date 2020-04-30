(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(chronos-expiry-functions
   (quote
    (chronos-sound-notify chronos-message-notify chronos-buffer-notify)))
 '(display-time-mode t)
 '(fill-column 120)
 '(line-spacing 0.2)
 '(mode-line-format
   (quote
    ("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
     (vc-mode vc-mode)
     "  " mode-line-misc-info mode-line-modes mode-line-end-spaces)))
 '(mouse-wheel-scroll-amount (quote (2 ((shift) . 1) ((control)))))
 '(org-emphasis-alist
   (quote
    (("*" bold)
     ("/" italic)
     ("_" underline)
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (:background "#acd0c0" :foreground "black" :family "monofur" :weight bold)))))
 '(org-fontify-done-headline t)
 '(org-modules
   (quote
    (ol-bibtex ol-eww org-habit org-id org-protocol ol-w3m)))
 '(org-todo-keyword-faces
   (quote
    (("WAIT" :weight regular :underline nil :inherit org-todo :foreground "yellow")
     ("PROJ" :weight regular :underline nil :inherit org-todo :foreground "purple")
     ("TODO" :weight regular :underline nil :inherit org-todo :foreground "#e8a735")
     ("HABIT" :weight regular :underline nil :inherit org-todo :foreground "pale green"))))
 '(package-selected-packages
   (quote
    (org-download which-key ace-jump-helm-line ace-link expand-region yasnippet-snippets yankpad w3m visual-fill-column unicode-fonts ssh-agency spotify speed-type smartparens slack rainbow-delimiters powerthesaurus pandoc-mode pandoc ox-pandoc ox-clip ov org-web-tools org-sticky-header org-ref org-recent-headings org-preview-html org-pdfview org-edna org-cliplink org-chef org-bullets org-bookmark-heading openwith nov multiple-cursors mixed-pitch markdown-preview-eww markdown-mode magit-popup magit ledger-mode latex-preview-pane keychain-environment interleave html2org hl-anything highlight helm-swoop helm-spotify helm-projectile helm-chronos helm-bibtexkey gnuplot-mode gnuplot gnu-elpa-keyring-update flyspell-correct-helm ereader doom-themes diminish deft define-word counsel company-bibtex company-auctex centered-window centered-cursor-mode calfw-org calfw-cal calfw bufler all-the-icons aggressive-indent ace-window 2048-game))))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#282c34" :foreground "#ebdcb2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 250 :width normal :foundry "PfEd" :family "Fantasque Sans Mono"))))
 '(bold ((t (:foreground "#f0810f" :weight bold))))
 '(bold-italic ((t (:inherit italic))))
 '(org-done ((t (:inherit org-headline-done))))
 '(org-headline-done ((t (:foreground "#5B6268" :strike-through t))))
 '(org-link ((t (:inherit link :foreground "sandy brown" :weight normal :family "monofur"))))
 '(org-todo ((t (:foreground "#98be65" :weight normal :family "nova mono"))))
 '(underline ((t (:foreground "#89da59" :underline t))))
 '(variable-pitch ((t (:height 1.0 :family "koho")))))
