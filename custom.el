
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-visited-file-name t)
 '(auto-save-visited-mode t)
 '(aw-dispatch-always t)
 '(bbdb-user-mail-address-re "betsy.yoon@gmail.com")
 '(bmkp-guess-default-handler-for-file-flag t)
 '(bmkp-last-as-first-bookmark-file "/home/betsy/Dropbox/emacs/bookmarks")
 '(browse-url-browser-function (quote eww-browse-url))
 '(chronos-expiry-functions
   (quote
    (chronos-sound-notify chronos-message-notify chronos-buffer-notify)))
 '(chronos-notification-wav "~/Dropbox/emacs/.emacs.d/sms-alert-1-daniel_simon.wav")
 '(custom-group-tag-faces nil)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(fill-column 120)
 '(fill-flowed-encode-column 1000)
 '(fringe-mode 50 nil (fringe))
 '(helm-boring-buffer-regexp-list
   (quote
    ("\\` " "\\`\\*helm" "\\`\\*Echo Area" "\\`\\*Minibuf" "diary" "archive.org")))
 '(history-delete-duplicates t)
 '(interleave-org-notes-dir-list (quote ("~/Dropbox/Zettelkasten/")))
 '(line-spacing 0.2)
 '(mode-line-format
   (quote
    ("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
     (vc-mode vc-mode)
     " " mode-line-misc-info mode-line-modes mode-line-end-spaces)))
 '(mouse-wheel-scroll-amount (quote (2 ((shift) . 1) ((control)))))
 '(mu4e-bookmarks
   (quote
    ((:name "Inbox" :query "maildir:/INBOX" :key 117)
     (:name "Today's messages" :query "date:today..now" :key 116)
     (:name "Last 7 days" :query "date:7d..now" :show-unread t :key 119)
     (:name "Messages with images" :query "mime:image/*" :key 112))))
 '(mu4e-compose-dont-reply-to-self t)
 '(mu4e-confirm-quit nil)
 '(mu4e-display-update-status-in-modeline t)
 '(mu4e-get-mail-command "mbsync -aV")
 '(mu4e-index-lazy-check t)
 '(mu4e-index-update-in-background nil)
 '(mu4e-update-interval 30000)
 '(mu4e-view-show-images t)
 '(openwith-associations
   (quote
    (("\\.\\(?:docx?\\|pptx?\\|xlsx?\\)$" "libreoffice"
      (file)))))
 '(openwith-mode t)
 '(org-agenda-files
   (quote
    ("~/Dropbox/Zettelkasten/journal.org" "~/Dropbox/Zettelkasten/inbox.org" "~/Dropbox/Zettelkasten/cal.org" "~/Dropbox/Zettelkasten/lis.org" "~/Dropbox/Zettelkasten/ndd.org" "~/Dropbox/Zettelkasten/notes.org")))
 '(org-agenda-tags-todo-honor-ignore-options t)
 '(org-agenda-time-grid
   (quote
    ((daily weekly today remove-match)
     (900 1200 1500 1800 2100)
     "......" "----------------")))
 '(org-agenda-use-tag-inheritance t)
 '(org-archive-location "~/Dropbox/Zettelkasten/archive.org::datetree/")
 '(org-capture-bookmark nil)
 '(org-clone-delete-id t)
 '(org-contacts-files (quote ("~/Dropbox/Zettelkasten/contacts.org")))
 '(org-edna-mode t)
 '(org-emphasis-alist
   (quote
    (("*" bold)
     ("/" italic)
     ("_" underline)
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (:background "#acd0c0" :foreground "black" :weight bold :family "monofur")))))
 '(org-habit-show-all-today nil)
 '(org-habit-show-habits-only-for-today t)
 '(org-id-extra-files nil)
 '(org-id-search-archives nil)
 '(org-link-keep-stored-after-insertion t)
 '(org-link-search-must-match-exact-headline nil)
 '(org-modules
   (quote
    (ol-bibtex ol-docview ol-eww org-habit org-id org-protocol org-tempo ol-w3m org-annotate-file ol-bookmark org-checklist org-choose org-notify org-registry)))
 '(org-noter-always-create-frame t)
 '(org-noter-auto-save-last-location t)
 '(org-noter-default-heading-title "p. $p$")
 '(org-noter-default-notes-file-names (quote ("~/Dropbox/Zettelkasten/readings.org")))
 '(org-noter-doc-split-fraction (quote (0.75 . 0.75)))
 '(org-noter-insert-note-no-questions t)
 '(org-noter-kill-frame-at-session-end nil)
 '(org-noter-notes-search-path (quote ("~/Dropbox/Zettelkasten/")))
 '(org-noter-notes-window-location (quote horizontal-split))
 '(org-return-follows-link t)
 '(org-tag-faces nil)
 '(org-tags-exclude-from-inheritance (quote ("timeblocking")))
 '(org-timer-display (quote both))
 '(org-use-property-inheritance t)
 '(package-selected-packages
   (quote
    (visual-fill-column yankpad yasnippet-snippets helm-bibtexkey helm-bibtex bufler w3m html2org ace-window pandoc-mode speed-type pdf-tools slack helm-chronos chronos org-bullets org-bullets-mode gnuplot gnuplot-mode aggressive-indent diminish rainbow-delimiters wpuzzle wc-mode use-package unicode-fonts spotify solarized-theme smartparens powerthesaurus pandoc ox-pandoc ox-clip ov org-web-tools org-trello org-sticky-header org-ref org-recent-headings org-preview-html org-pomodoro org-pdfview org-noter org-gcal org-edna org-clock-convenience org-cliplink org-chef org-bookmark-heading openwith nov multiple-cursors mixed-pitch markdown-preview-eww markdown-mode magit-popup magit ledger-mode latex-preview-pane interleave hl-anything highlight helm-swoop helm-spotify helm-projectile helm-org-rifle gruvbox-theme gnu-elpa-keyring-update flyspell-correct-helm ereader doom-themes deft define-word cyberpunk-theme cyberpunk-2019-theme counsel company-bibtex company-auctex centered-window centered-cursor-mode calfw-org calfw-gcal calfw-cal calfw bbdb annotate all-the-icons 2048-game)))
 '(ring-bell-function (quote ignore))
 '(user-mail-address "betsy.yoon@gmail.com")
 '(visible-bell nil)
 '(winner-mode t)
 '(yankpad-default-category "org-mode")
 '(yankpad-respect-current-org-level t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t (:background "#282c34"))))
 '(org-tag ((t (:foreground "deep sky blue" :weight normal :height 0.9))))
 '(variable-pitch ((t (:family "koho")))))
