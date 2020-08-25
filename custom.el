(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   '(((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Okular")
     (output-html "xdg-open")))
 '(ajb-max-window-height 200)
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(chronos-expiry-functions
   '(chronos-sound-notify chronos-message-notify chronos-buffer-notify))
 '(default-input-method "korean-hangul")
 '(display-time-mode t)
 '(eyebrowse-mode t)
 '(fill-column 120)
 '(line-spacing 0.2)
 '(mode-line-format
   '("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote " " mode-line-misc-info mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
     (vc-mode vc-mode)
     "  " mode-line-modes mode-line-end-spaces))
 '(mouse-wheel-scroll-amount '(2 ((shift) . 1) ((control))))
 '(on-screen-global-mode t)
 '(on-screen-highlight-method 'narrow-line)
 '(openwith-associations
   '(("\\.\\(?:docx?\\|pptx?\\|xls?\\)$" "libreoffice"
      (file))))
 '(org-agenda-files
   '("~/Dropbox/Zettelkasten/inbox.org" "~/Dropbox/Zettelkasten/cal.org" "~/Dropbox/Zettelkasten/journal.org" "~/Dropbox/Zettelkasten/projects.org"))
 '(org-clock-clocktable-default-properties
   '(:maxlevel 4 :hidefiles t :tags t :tcolumns 1 :narrow 30 :level nil :link t))
 '(org-clock-in-resume nil)
 '(org-edna-mode t)
 '(org-emphasis-alist
   '(("*" bold)
     ("/" italic)
     ("_" underline)
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (:background "#acd0c0" :foreground "black" :family "monofur" :weight bold))))
 '(org-fontify-done-headline t)
 '(org-habit-show-habits-only-for-today nil)
 '(org-modules
   '(ol-bibtex ol-eww org-habit org-id org-protocol org-tempo ol-w3m org-collector org-notify))
 '(org-pomodoro-keep-killed-pomodoro-time t)
 '(org-pomodoro-ticking-sound-states '(:pomodoro))
 '(org-sticky-header-full-path 'full)
 '(org-sticky-header-heading-star "##")
 '(org-superstar-item-bullet-alist '((42 . 8902) (43 . 8900) (45 . 8226)))
 '(org-superstar-prettify-item-bullets t)
 '(org-support-shift-select t)
 '(org-tag-faces
   '(("ndd" :inherit org-tag :foreground "yellow green")
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
     ("research" :inherit org-tag :foreground "dark orange")
     ("self" :inherit org-tag :foreground "yellow green")
     ("journal" :inherit org-tag :foreground "dark orange")
     ("cleaning" :inherit org-tag :foreground "dark orange")
     ("job" :inherit org-tag :foreground "dark orange")))
 '(org-todo-keyword-faces
   '(("WAIT" :weight regular :underline nil :inherit org-todo :foreground "yellow")
     ("PROJ" :weight regular :underline nil :inherit org-todo :foreground "purple")
     ("TODO" :weight regular :underline nil :inherit org-todo :foreground "#e8a735")
     ("HABIT" :weight regular :underline nil :inherit org-todo :foreground "brown")
     ("AREA" :weight bold :underline t :inherit org-todo :foreground "dodger blue")
     ("NEXT" :weight regular :underline nil :inherit org-todo :foreground "magenta")
     ("IN-PROG" :weight regular :underline nil :inherit org-todo :foreground "royalblue1")
     ("TODAY" :weight regular :underline nil :inherit org-todo :background "dodger blue" :foreground "white")))
 '(org-web-tools-pandoc-sleep-time 1.0)
 '(org-wild-notifier-alert-time '(1))
 '(org-wild-notifier-keyword-whitelist nil)
 '(org-wild-notifier-mode t)
 '(package-selected-packages
   '(org-treeusage dired-x dired-toggle-sudo ac-helm org-clock-today org-clock-split auto-complete-auctex ebib zoom helm-bufler visible-mark spray scrollkeeper org-noter-pdftools org-pdftools org-ac mu4e-conversation on-screen uptimes unkillable-scratch mw-thesaurus most-used-words korean-holidays helm-unicode helm-flyspell clean-buffers org-mru-clock undo-tree xml+ use-package olivetti quail quelpa activity-watch-mode org company-org-roam org-roam org-roam-bibtex org-msg nov org-superstar yasnippet-snippets org-clock-convenience org-pomodoro org-plus-contrib crux org-noter pdf-view-restore org-alert anki-editor anki-connect ace-jump-buffer ace-jump-mode helm-org-rifle org-download which-key ace-jump-helm-line ace-link expand-region yankpad w3m visual-fill-column unicode-fonts ssh-agency speed-type smartparens rainbow-delimiters powerthesaurus pandoc-mode pandoc ox-pandoc ox-clip ov org-web-tools org-sticky-header org-ref org-recent-headings org-pdfview org-edna org-cliplink org-chef org-bookmark-heading openwith multiple-cursors mixed-pitch markdown-preview-eww markdown-mode magit-popup magit ledger-mode latex-preview-pane keychain-environment interleave html2org hl-anything highlight helm-swoop helm-projectile helm-chronos helm-bibtexkey gnuplot-mode gnuplot gnu-elpa-keyring-update flyspell-correct-helm doom-themes diminish deft define-word counsel company-bibtex company-auctex centered-cursor-mode calfw-org calfw-cal calfw bufler all-the-icons aggressive-indent ace-window 2048-game))
 '(pdf-annot-default-annotation-properties
   '((t
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
      (color . "red"))))
 '(pdf-annot-list-listed-types
   '(file free-text highlight square squiggly strike-out text underline))
 '(sentence-end-double-space nil)
 '(temp-buffer-resize-mode t)
 '(zoom-ignore-predicates
   '((lambda nil
       (>
	(count-lines
	 (point-min)
	 (point-max))
	20))))
 '(zoom-ignored-buffer-name-regexps '("^*calc"))
 '(zoom-ignored-buffer-names '("zoom.el" "init.el"))
 '(zoom-ignored-major-modes '(dired-mode markdown-mode))
 '(zoom-size 'size-callback))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:foreground "medium orchid" :weight bold))))
 '(bold-italic ((t (:inherit italic))))
 '(diredp-dir-name ((t (:foreground "RoyalBlue2" :weight bold))))
 '(fringe ((t (:background "#282c34"))))
 '(italic ((t (:foreground "orchid" :slant italic))))
 '(on-screen-narrow-line ((t (:underline (:color "yellow" :style wave) :width extra-expanded))))
 '(org-date ((t (:underline t :height 1.0 :family "monofur"))))
 '(org-done ((t (:inherit org-headline-done))))
 '(org-drawer ((t (:foreground "sky blue" :height 0.8))))
 '(org-ellipsis ((t (:foreground "#a4cabc" :strike-through nil :underline nil))))
 '(org-headline-done ((t (:foreground "#5B6268" :strike-through t))))
 '(org-level-1 ((t (:inherit default :foreground "#6ab187" :weight normal :height 1.1))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "#9a9eab" :weight normal :height 0.9))))
 '(org-level-4 ((t (:inherit org-level-3 :foreground "light coral" :height 1.0))))
 '(org-link ((t (:inherit link :foreground "chocolate" :weight normal :family "monofur"))))
 '(org-list-dt ((t (:inherit default :foreground "#51afef"))))
 '(org-property-value ((t (:foreground "#83898d" :height 0.9))) t)
 '(org-quote ((t (:background "#23272e" :foreground "sandy brown" :slant normal))))
 '(org-special-keyword ((t (:foreground "#83898d" :height 0.9))))
 '(org-tag ((t (:foreground "#83898d" :weight normal :height 0.8))))
 '(org-tag-group ((t (:inherit nil :foreground "dodger blue"))))
 '(org-todo ((t (:foreground "#98be65" :weight normal :family "nova mono"))))
 '(underline ((t (:foreground "#89da59" :underline t))))
 '(variable-pitch ((t (:height 1.0 :family "koho")))))
