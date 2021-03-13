
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-dispatch-always t)
 '(bmkp-guess-default-handler-for-file-flag t)
 '(bmkp-last-as-first-bookmark-file "/home/betsy/Dropbox/emacs/bookmarks")
 '(chronos-expiry-functions
   (quote
    (chronos-sound-notify chronos-message-notify chronos-buffer-notify)))
 '(chronos-notification-wav "~/Dropbox/emacs/.emacs.d/sms-alert-1-daniel_simon.wav")
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

 '(org-agenda-tags-todo-honor-ignore-options t)
 '(org-agenda-use-tag-inheritance t)
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


 '(org-tags-exclude-from-inheritance (quote ("timeblocking")))
 '(org-timer-display (quote both))
 '(org-use-property-inheritance t)
 '(package-selected-packages
   (quote
    (ssh-agency keychain-environment visual-fill-column yankpad yasnippet-snippets helm-bibtexkey helm-bibtex bufler w3m html2org ace-window pandoc-mode speed-type pdf-tools slack helm-chronos chronos org-bullets org-bullets-mode gnuplot gnuplot-mode aggressive-indent diminish rainbow-delimiters wpuzzle wc-mode use-package unicode-fonts spotify solarized-theme smartparens powerthesaurus pandoc ox-pandoc ox-clip ov org-web-tools org-trello org-sticky-header org-ref org-recent-headings org-preview-html org-pomodoro org-pdfview org-noter org-gcal org-edna org-clock-convenience org-cliplink org-chef org-bookmark-heading openwith nov multiple-cursors mixed-pitch markdown-preview-eww markdown-mode magit-popup magit ledger-mode latex-preview-pane interleave hl-anything highlight helm-swoop helm-spotify helm-projectile helm-org-rifle gruvbox-theme gnu-elpa-keyring-update flyspell-correct-helm ereader doom-themes deft define-word cyberpunk-theme cyberpunk-2019-theme counsel company-bibtex company-auctex centered-window centered-cursor-mode calfw-org calfw-gcal calfw-cal calfw bbdb annotate all-the-icons 2048-game)))
 '(ring-bell-function (quote ignore))
 '(safe-local-variable-values
   (quote
    ((eval add-hook
	   (quote after-save-hook)
	   (lambda nil
	     (org-babel-tangle))
	   nil t))))
 '(user-mail-address "betsy.yoon@gmail.com")
 '(winner-mode t)
 '(yankpad-default-category "org-mode")
 '(yankpad-respect-current-org-level t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
