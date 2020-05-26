(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "/home/betsy/Dropbox/emacs/.emacs.d/bookmarks")
 '(chronos-expiry-functions
   (quote
    (chronos-sound-notify chronos-message-notify chronos-buffer-notify)))
 '(display-time-mode t)
 '(eyebrowse-mode t)
 '(fill-column 120)
 '(line-spacing 0.2)
 '(mode-line-format
   (quote
    ("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote " " mode-line-misc-info mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
     (vc-mode vc-mode)
     "  " mode-line-modes mode-line-end-spaces)))
 '(mouse-wheel-scroll-amount (quote (2 ((shift) . 1) ((control)))))
 '(openwith-associations
   (quote
    (("\\.\\(?:docx?\\|pptx?\\|xls?\\)$" "libreoffice"
      (file)))))
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
 '(org-habit-show-habits-only-for-today nil)
 '(org-modules
   (quote
    (ol-bibtex ol-eww org-habit org-id org-protocol ol-w3m org-collector org-notify)))
 '(org-pomodoro-keep-killed-pomodoro-time t)
 '(org-tag-faces
   (quote
    (("ndd" :inherit org-tag :foreground "yellow green")
     ("csi" :inherit org-tag :foreground "yellow green")
     ("sysadmin" :inherit org-tag :foreground "yellow green")
     ("home" :inherit org-tag :foreground "yellow green")
     ("bcc" :inherit org-tag :foreground "yellow green")
     ("audiovisual" :inherit org-tag :foreground "dark orange")
     ("read" :inherit org-tag :foreground "dark orange")
     ("ingest" :inherit org-tag :foreground "dark orange")
     ("create" :inherit org-tag :foreground "dark orange")
     ("admin" :inherit org-tag :foreground "dark orange")
     ("lis" :inherit org-tag :foreground "yellow green")
     ("research" :inherit org-tag :foreground "dark orange"))))
 '(org-todo-keyword-faces
   (quote
    (("WAIT" :weight regular :underline nil :inherit org-todo :foreground "yellow")
     ("PROJ" :weight regular :underline nil :inherit org-todo :foreground "purple")
     ("TODO" :weight regular :underline nil :inherit org-todo :foreground "#e8a735")
     ("HABIT" :weight regular :underline nil :inherit org-todo :foreground "brown")
     ("AREA" :weight bold :underline t :inherit org-todo :foreground "dodger blue")
     ("NEXT" :weight regular :underline nil :inherit org-todo :foreground "magenta"))))
 '(org-web-tools-pandoc-sleep-time 1.0)
 '(package-selected-packages
   (quote
    (tomatinho pomidor org-pomodoro org-plus-contrib crux org-noter pdf-view-restore org-alert anki-editor anki-connect ace-jump-buffer ace-jump-mode helm-org-rifle eyebrowse org-download which-key ace-jump-helm-line ace-link expand-region yasnippet-snippets yankpad w3m visual-fill-column unicode-fonts ssh-agency spotify speed-type smartparens slack rainbow-delimiters powerthesaurus pandoc-mode pandoc ox-pandoc ox-clip ov org-web-tools org-sticky-header org-ref org-recent-headings org-preview-html org-pdfview org-edna org-cliplink org-chef org-bullets org-bookmark-heading openwith nov multiple-cursors mixed-pitch markdown-preview-eww markdown-mode magit-popup magit ledger-mode latex-preview-pane keychain-environment interleave html2org hl-anything highlight helm-swoop helm-spotify helm-projectile helm-chronos helm-bibtexkey gnuplot-mode gnuplot gnu-elpa-keyring-update flyspell-correct-helm ereader doom-themes diminish deft define-word counsel company-bibtex company-auctex centered-window centered-cursor-mode calfw-org calfw-cal calfw bufler all-the-icons aggressive-indent ace-window 2048-game)))
 '(pdf-annot-default-annotation-properties
   (quote
    ((t
      (label . "Betsy Yoon"))
     (text
      (color . "#ff0000")
      (icon . "Note"))
     (highlight
      (color . "light goldenrod"))
     (underline
      (color . "blue"))
     (squiggly
      (color . "orange"))
     (strike-out
      (color . "red")))))
 '(pdf-annot-list-listed-types
   (quote
    (file free-text highlight square squiggly strike-out text underline)))
 '(sentence-end-double-space nil))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#282c34" :foreground "#ebdcb2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 250 :width normal :foundry "PfEd" :family "Fantasque Sans Mono"))))
 '(bold ((t (:foreground "medium orchid" :weight bold))))
 '(bold-italic ((t (:inherit italic))))
 '(diredp-dir-name ((t (:foreground "RoyalBlue2" :weight bold))))
 '(italic ((t (:foreground "orchid" :slant italic))))
 '(org-date ((t (:underline t :height 1.0 :family "monofur"))))
 '(org-done ((t (:inherit org-headline-done))))
 '(org-ellipsis ((t (:foreground "#a4cabc" :strike-through nil :underline nil))))
 '(org-headline-done ((t (:foreground "#5B6268" :strike-through t))))
 '(org-level-1 ((t (:inherit default :foreground "#6ab187" :weight normal :height 1.1))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "#9a9eab" :weight normal :height 0.9))))
 '(org-link ((t (:inherit link :foreground "chocolate" :weight normal :family "monofur"))))
 '(org-special-keyword ((t (:foreground "#83898d" :height 0.9))))
 '(org-tag ((t (:foreground "#83898d" :weight normal :height 0.8))))
 '(org-todo ((t (:foreground "#98be65" :weight normal :family "nova mono"))))
 '(underline ((t (:foreground "#89da59" :underline t))))
 '(variable-pitch ((t (:height 1.0 :family "koho")))))
