
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(default ((t (:inherit nil :stipple nil :background "#282c34" :foreground "cornsilk" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 250 :width normal :foundry "CYEL" :family "fantasque sans mono "))))
 '(bold ((t (:foreground "spring green" :weight bold))))
 '(cfw:face-select ((t (:background "wheat" :foreground "black"))))
 '(diredp-dir-name ((t (:foreground "pale green" :weight bold))))
 '(font-lock-warning-face ((t (:inherit error :weight normal))))
 ;'(fringe ((t (:background "#282c34"))))
 '(helm-buffer-file ((t (:inherit font-lock-builtin-face :foreground "DeepSkyBlue3"))))
 '(highlight ((t (:background "dim gray" :foreground "black"))))
 '(italic ((t (:foreground "purple" :slant italic))))
 '(ledger-font-xact-highlight-face ((t (:background "gray29"))))
 '(mode-line ((t (:background "dim gray" :foreground "white" :box (:line-width 1 :color "dim gray" :style unspecified) :overline "#073642" :underline "#284b54"))))
 '(org-agenda-current-time ((t (:foreground "light salmon"))))
 '(org-agenda-date ((t (:inherit variable-pitch :background "pale green"))))
 '(org-agenda-diary ((t (:inherit default :foreground "PaleVioletRed1"))))
 '(org-agenda-done ((t (:foreground "dim gray" :strike-through t))))
 '(org-checkbox ((t (:inherit default :foreground "light green" :weight normal))))
 '(org-checkbox-statistics-todo ((t (:foreground "light green" :weight normal :height 0.7 :family "nova mono"))))
 '(org-code ((t (:foreground "tomato" :slant italic :weight normal))))
 '(org-column ((t (:inherit default :background "grey30" :strike-through nil :underline nil :slant normal :weight normal :height 1.0))))
 '(org-date ((t (:foreground "coral" :underline t :height 0.7 :family "nova mono"))))
 '(org-done ((t (:inherit org-headline-done :foreground "dim gray" :box nil :weight normal :height 0.8 :family "nova mono"))))
 '(org-drawer ((t (:foreground "LightSkyBlue" :height 0.8))))
 '(org-ellipsis ((t (:foreground "light goldenrod" :underline nil))))
 '(org-headline-done ((t (:foreground "#5B6268"))))
 '(org-hide ((t (:inherit fixed-pitch :foreground "#282c34"))))
 '(org-indent ((t (:inherit org-hide))))
 '(org-level-1 ((t (:foreground "light goldenrod" :height 1.4 :family "marvel"))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "light blue" :height 0.95))))
 '(org-level-3 ((t (:inherit org-level-2 :foreground "wheat" :height 0.9))))
 '(org-level-4 ((t (:inherit org-level-3 :foreground "medium turquoise" :height 1.0))))
 '(org-level-5 ((t (:inherit outline-5))))
 '(org-level-6 ((t (:inherit org-level-5 :foreground "#859900"))))
 '(org-level-7 ((t (:inherit org-level-6))))
 '(org-link ((t (:inherit default :foreground "chocolate" :underline t))))
 '(org-list-dt ((t (:foreground "deep sky blue"))))
 '(org-ref-cite-face ((t (:inherit default :foreground "forest green" :height 1.0))))
 '(org-special-keyword ((t (:weight normal :height 0.85))))
 '(org-tag ((t (:foreground "#83898d" :weight normal :height 0.8 :family "nova mono"))))
 '(org-todo ((t (:foreground "#98be65" :weight bold :family "nova mono"))))
 '(org-upcoming-deadline ((t (:foreground "orange red"))))
 '(org-upcoming-distant-deadline ((t (:foreground "chartreuse4"))))
 '(outline-5 ((t (:foreground "#d499e5" :weight normal))))
 '(secondary-selection ((t (:background "dim gray" :foreground "#eee8d5"))))
 '(underline ((t (:foreground "SeaGreen1" :underline t))))
 '(variable-pitch ((t (:weight normal :height 1.3 :family "koho"))))
 '(widget-field ((t (:background "dim gray" :foreground "white smoke")))))

'(org-link-parameters
   (quote
    (("id" :follow org-id-open)
     ("eww" :follow eww :store org-eww-store-link)
     ("docview" :follow org-docview-open :export org-docview-export :store org-docview-store-link)
     ("bibtex" :follow org-bibtex-open :store org-bibtex-store-link)
     ("bbdb" :follow org-bbdb-open :export org-bbdb-export :complete org-bbdb-complete-link :store org-bbdb-store-link)
     ("w3m" :store org-w3m-store-link)
     ("ebook" :follow org-ebook-open :store org-ebook-store-link)
     ("pdfview" :follow org-pdfview-open :complete org-pdfview-complete-link :store org-pdfview-store-link)
     ("file+sys")
     ("file+emacs")
     ("shell" :follow org-link--open-shell)
     ("news" :follow
      (closure
       ((scheme . "news")
	(--dolist-tail--)
	org-ts-regexp org-time-stamp-formats org-src-source-file-name org-outline-regexp-bol org-inhibit-startup org-id-link-to-org-use-id org-highlight-links org-comment-string org-agenda-buffer-name clean-buffer-list-kill-buffer-names t)
       (url)
       (browse-url
	(concat scheme ":" url))))
     ("mailto" :follow
      (closure
       ((scheme . "mailto")
	(--dolist-tail--)
	org-ts-regexp org-time-stamp-formats org-src-source-file-name org-outline-regexp-bol org-inhibit-startup org-id-link-to-org-use-id org-highlight-links org-comment-string org-agenda-buffer-name clean-buffer-list-kill-buffer-names t)
       (url)
       (browse-url
	(concat scheme ":" url))))
     ("https" :follow
      (closure
       ((scheme . "https")
	(--dolist-tail--)
	org-ts-regexp org-time-stamp-formats org-src-source-file-name org-outline-regexp-bol org-inhibit-startup org-id-link-to-org-use-id org-highlight-links org-comment-string org-agenda-buffer-name clean-buffer-list-kill-buffer-names t)
       (url)
       (browse-url
	(concat scheme ":" url))))
     ("http" :follow
      (closure
       ((scheme . "http")
	(--dolist-tail--)
	org-ts-regexp org-time-stamp-formats org-src-source-file-name org-outline-regexp-bol org-inhibit-startup org-id-link-to-org-use-id org-highlight-links org-comment-string org-agenda-buffer-name clean-buffer-list-kill-buffer-names t)
       (url)
       (browse-url
	(concat scheme ":" url))))
     ("ftp" :follow
      (closure
       ((scheme . "ftp")
	(--dolist-tail--)
	org-ts-regexp org-time-stamp-formats org-src-source-file-name org-outline-regexp-bol org-inhibit-startup org-id-link-to-org-use-id org-highlight-links org-comment-string org-agenda-buffer-name clean-buffer-list-kill-buffer-names t)
       (url)
       (browse-url
	(concat scheme ":" url))))
     ("help" :follow org-link--open-help)
     ("file" :complete org-link-complete-file)
     ("elisp" :follow org-link--open-elisp)
     ("doi" :follow org-link--open-doi))))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-from-DVI "Dvips")
 '(TeX-PDF-mode nil)
 '(TeX-PDF-via-dvips-ps2pdf t)
 '(annotate-annotation-position-policy :newline)
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(auto-save-default t)
 '(auto-save-visited-file-name t)
 '(auto-save-visited-mode t)
 '(bibtex-align-at-equal-sign t)
 '(bibtex-autokey-additional-names "-etal")
 '(bibtex-autokey-name-case-convert-function (quote identity))
 '(bibtex-autokey-name-length (quote infty))
 '(bibtex-autokey-name-separator "-")
 '(bibtex-autokey-name-year-separator ":")
 '(bibtex-autokey-names 2)
 '(bibtex-autokey-titleword-length 0)
 '(bibtex-autokey-titleword-separator "")
 '(bibtex-autokey-titlewords 0)
 '(bibtex-autokey-year-length 4)
 '(bibtex-autokey-year-title-separator "")
 '(bibtex-completion-library-path "~/Dropbox/Library/")
 '(bibtex-completion-pdf-field "file")
 '(bibtex-maintain-sorted-entries (quote plain))
 '(browse-url-browser-function (quote browse-url-firefox))
 '(browse-url-firefox-new-window-is-tab t)
 '(calendar-holidays
   (quote
    ((holiday-fixed 1 1 "New Year's Day")
     (holiday-float 1 1 3 "Martin Luther King Day")
     (holiday-fixed 2 2 "Groundhog Day")
     (holiday-fixed 2 14 "Valentine's Day")
     (holiday-float 2 1 3 "President's Day")
     (holiday-fixed 3 17 "St. Patrick's Day")
     (holiday-fixed 4 1 "April Fools' Day")
     (holiday-float 5 0 2 "Mother's Day")
     (holiday-float 5 1 -1 "Memorial Day")
     (holiday-float 6 0 3 "Father's Day")
     (holiday-fixed 7 4 "Independence Day")
     (holiday-float 9 1 1 "Labor Day")
     (holiday-float 10 1 2 "Indigenous People's Day")
     (holiday-fixed 10 31 "Halloween")
     (holiday-fixed 11 11 "Veteran's Day")
     (holiday-float 11 4 4 "Thanksgiving")
     (holiday-easter-etc)
     (holiday-fixed 12 25 "Christmas")
     (if calendar-christian-all-holidays-flag
	 (append
	  (holiday-fixed 1 6 "Epiphany")
	  (holiday-julian 12 25 "Christmas (Julian calendar)")
	  (holiday-greek-orthodox-easter)
	  (holiday-fixed 8 15 "Assumption")
	  (holiday-advent 0 "Advent")))
     (holiday-hebrew-passover)
     (holiday-hebrew-rosh-hashanah)
     (holiday-hebrew-hanukkah)
     (if calendar-hebrew-all-holidays-flag
	 (append
	  (holiday-hebrew-tisha-b-av)
	  (holiday-hebrew-misc)))
     (holiday-islamic-new-year)
     (holiday-islamic 9 1 "Ramadan Begins")
     (if calendar-islamic-all-holidays-flag
	 (append
	  (holiday-islamic 1 10 "Ashura")
	  (holiday-islamic 3 12 "Mulad-al-Nabi")
	  (holiday-islamic 7 26 "Shab-e-Mi'raj")
	  (holiday-islamic 8 15 "Shab-e-Bara't")
	  (holiday-islamic 9 27 "Shab-e Qadr")
	  (holiday-islamic 10 1 "Id-al-Fitr")
	  (holiday-islamic 12 10 "Id-al-Adha")))
     (if calendar-bahai-all-holidays-flag
	 (append
	  (holiday-fixed 11 26 "Day of the Covenant")
	  (holiday-fixed 11 28 "Ascension of `Abdu’l-Bahá")))
     (holiday-chinese-new-year)
     (if calendar-chinese-all-holidays-flag
	 (append
	  (holiday-chinese 1 15 "Lantern Festival")
	  (holiday-chinese-qingming)
	  (holiday-chinese 5 5 "Dragon Boat Festival")
	  (holiday-chinese 7 7 "Double Seventh Festival")
	  (holiday-chinese 8 15 "Mid-Autumn Festival")
	  (holiday-chinese 9 9 "Double Ninth Festival")
	  (holiday-chinese-winter-solstice)))
     (solar-equinoxes-solstices)
     (holiday-sexp calendar-daylight-savings-starts
		   (format "Daylight Saving Time Begins %s"
			   (solar-time-string
			    (/ calendar-daylight-savings-starts-time
			       (float 60))
			    calendar-standard-time-zone-name)))
     (holiday-sexp calendar-daylight-savings-ends
		   (format "Daylight Saving Time Ends %s"
			   (solar-time-string
			    (/ calendar-daylight-savings-ends-time
			       (float 60))
			    calendar-daylight-time-zone-name))))))
 '(centered-window-mode nil)
 '(compilation-message-face (quote default))
; '(confirm-kill-emacs (quote y-or-n-p))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (doom-one)))
 '(custom-safe-themes
   (quote
    ("e47c0abe03e0484ddadf2ae57d32b0f29f0b2ddfe7ec810bd6d558765d9a6a6c" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "fd944f09d4d0c4d4a3c82bd7b3360f17e3ada8adf29f28199d09308ba01cc092" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "59e82a683db7129c0142b4b5a35dbbeaf8e01a4b81588f8c163bd255b76f4d21" "bb5a253b1e359db941284cc74750ecf38aa93878b208919fc0f2199daaef491e" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(delete-by-moving-to-trash t)
 '(diary-comment-end "/")
 '(diary-comment-start "/")
; '(diary-file "~/Dropbox/Zettelkasten/diary")
 '(dired-auto-revert-buffer (quote dired-directory-changed-p))
 '(display-buffer-reuse-frames t)
 '(display-mm-dimensions-alist (quote (("HDMI2" 531 . 299) ("DP2" 600 . 340))))
 '(electric-pair-delete-adjacent-pairs nil)
 '(electric-pair-mode t)
; '(electric-pair-pairs
 ;  (quote
  ;  ((34 . 34)
     ;; (8216 . 8217)
     ;; (8220 . 8221)
     ;; (42 . 42)
     ;; (95 . 95)
     ;; (47 . 47)
     ;; (126 . 126)
     ;; (43 . 43))))
 '(electric-pair-skip-self (quote electric-pair-default-skip-self))
 '(electric-pair-text-pairs (quote ((34 . 34) (8216 . 8217) (8220 . 8221))))
 '(erc-notifications-mode t)
 '(fci-rule-color "#073642")
 '(fill-column 150)
 '(fill-flowed-encode-column 5000)
 '(fit-window-to-buffer-horizontally t)
 '(frame-resize-pixelwise t)
 '(fringe-mode 25 nil (fringe))
 '(global-auto-revert-mode t)
 '(global-visual-fill-column-mode t)
 '(global-visual-line-mode t)
 '(helm-M-x-always-save-history t)
 '(helm-M-x-reverse-history nil)
 '(helm-bibtex-full-frame nil)
 '(helm-display-buffer-default-height 22)
 '(helm-full-frame nil)
 '(helm-help-full-frame nil)
 '(helm-move-to-line-cycle-in-source nil)
 '(helm-org-rifle-show-path nil)
 '(helm-split-window-inside-p t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(history-delete-duplicates t)
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-highlight-background-colors
   (quote
    ("gold" "green yellow" "chocolate" "dark orchid" "OliveDrab4" "dark blue" "blue violet" "coral3" "RoyalBlue3" "goldenrod")))
 '(hl-highlight-foreground-colors
   (quote
    ("black" "black" "black" "black" "snow" "snow" "snow" "black" "snow" "snow")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(inhibit-eol-conversion t)
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(latex-run-command "pdflatex")
 '(line-spacing 0.1)
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(mu4e-attachment-dir "~/Dropbox/2020")
 '(mu4e-compose-dont-reply-to-self t)
 '(mu4e-compose-format-flowed t)
 '(mu4e-compose-pre-hook (quote (no-auto-fill)))
 '(mu4e-display-update-status-in-modeline nil)
 '(mu4e-get-mail-command "mbsync -aV")
 '(mu4e-headers-date-format "%b-%d")
 '(mu4e-headers-fields (quote ((:human-date . 10) (:from . 22) (:subject))))
 '(mu4e-headers-found-hook nil)
 '(mu4e-headers-search-hook nil)
 '(mu4e-headers-visible-columns 200)
 '(mu4e-hide-index-messages t)
 '(mu4e-index-update-in-background nil)
 '(mu4e-split-view (quote horizontal))
 '(mu4e-update-interval 20000)
 '(mu4e-user-mail-address-list (quote ("betsy.yoon@gmail.com" "")))
 '(mu4e-view-mode-hook
   (quote
    (turn-on-visual-line-mode visual-line-mode visual-fill-column-mode)))
 '(nov-pre-html-render-hook (quote (visual-line-mode)))
 '(nov-text-width 5)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(objed-cursor-color "#ff6c6b")
 '(openwith-mode t)
 '(org-after-todo-state-change-hook nil)
 '(org-agenda-block-separator 45)
 '(org-agenda-clockreport-parameter-plist
   (quote
    (:link t :maxlevel 4 :narrow 25 :tcolumns 1 :indent t :hidefiles t :fileskip0 t)))
 '(org-agenda-dim-blocked-tasks t)
 '(org-agenda-exporter-settings
   (quote
    ((org-agenda-with-colors nil)
     (org-agenda-prefix-format " [ ] ")
     (org-agenda-remove-tags t)
     (org-agenda-clockreport-mode nil))))
 '(org-agenda-files
   (quote
    ("~/Dropbox/Zettelkasten/inbox.org" "~/Dropbox/Zettelkasten/cal.org" "~/Dropbox/Zettelkasten/journal.org" "~/Dropbox/Zettelkasten/lis.org" "~/Dropbox/Zettelkasten/ndd.org" "~/Dropbox/Zettelkasten/notes.org")))
 '(org-agenda-ignore-properties (quote (effort appt stats)))
 '(org-agenda-include-diary t)
 '(org-agenda-inhibit-startup nil)
 '(org-agenda-log-mode-add-notes nil)
 '(org-agenda-scheduled-leaders (quote ("" "Sched.%2dx: ")))
 '(org-agenda-skip-deadline-prewarning-if-scheduled (quote pre-scheduled))
 '(org-agenda-start-with-clockreport-mode nil)
 '(org-agenda-tags-column -80)
 '(org-agenda-time-grid
   (quote
    ((daily weekly today remove-match)
     (900 1000 1100 1200 1300 1400 1500 1800 2100)
     "......" "----------------")))
 '(org-agenda-use-tag-inheritance t)
 '(org-agenda-with-colors t)
 '(org-archive-location
   "~/Dropbox/Zettelkasten/journal.org::datetree/* Finished tasks")
 '(org-archive-reversed-order t)
 '(org-attach-id-dir "/home/betsy/Dropbox/2020")
 '(org-attach-method (quote ln))
 '(org-attach-store-link-p t)
 '(org-bullets-bullet-list (quote ("◉" "»" "⚬" "✧" "▸")))
 '(org-catch-invisible-edits (quote smart))
 '(org-checkbox-hierarchical-statistics nil)
 '(org-clock-clocktable-default-properties
   (quote
    (:maxlevel 4 :block today :hidefiles t :tcolumns 1 :narrow 30 :level nil :link t)))
 '(org-clock-history-length 35)
 '(org-clock-idle-time nil)
 '(org-clock-in-resume t)
 '(org-clock-in-switch-to-state nil)
 '(org-clock-out-remove-zero-time-clocks nil t)
 '(org-clock-persist t)
 '(org-clock-persist-query-resume nil)
 '(org-clock-sound t)
 '(org-clocktable-defaults (quote (:maxlevel 4 :scope subtree)))
 '(org-columns-default-format "%50ITEM %TODO %3PRIORITY %TAGS")
 '(org-columns-default-format-for-agenda "%50ITEM %TODO %3PRIORITY %TAGS %CLOCKSUM")
 '(org-ctrl-k-protect-subtree (quote error))
 '(org-directory "~/Dropbox/Zettelkasten")
 '(org-ellipsis " ⬎ ")
 '(org-emphasis-alist
   (quote
    (("*" bold)
     ("/" italic)
     ("_" underline)
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (:background "lemon chiffon" :foreground "black" :weight regular :font-family "monofur")))))
 '(org-enforce-todo-checkbox-dependencies nil)
 '(org-export-with-author nil)
 '(org-export-with-toc nil)
 '(org-fast-tag-selection-single-key t)
 '(org-gcal-fetch-file-alist
   (quote
    (("betsy.yoon@gmail.com" . "~/Dropbox/Zettelkasten/gcal.org"))))
 '(org-goto-interface (quote outline-path-completion))
 '(org-habit-show-habits-only-for-today t)
 '(org-hide-block-startup nil)
 '(org-id-link-to-org-use-id (quote create-if-interactive))
 '(org-id-method (quote org))
 '(org-id-search-archives nil)
 '(org-indirect-buffer-display (quote current-window))
 '(org-link-use-indirect-buffer-for-internals t)
 '(org-log-done (quote time))
 '(org-log-refile nil)
 '(org-modules
   (quote
    (ol-bibtex ol-eww org-habit org-id org-protocol ol-w3m ol-bookmark org-checklist org-depend org-registry)))
 '(org-noter-always-create-frame nil)
 '(org-noter-default-heading-title "$p$: ")
 '(org-noter-default-notes-file-names (quote ("notes.org")))
 '(org-noter-doc-split-fraction (quote (0.75 . 0.75)))
 '(org-noter-insert-note-no-questions t)
 '(org-noter-notes-search-path (quote ("~/Dropbox/Zettelkasten")))
 '(org-noter-notes-window-location (quote vertical-split))
 '(org-recent-headings-mode t)
 '(org-ref-clean-bibtex-key-function (lambda (key) (replace-regexp-in-string ":" "-" key)))
 '(org-ref-get-pdf-filename-function (quote org-ref-get-pdf-filename-helm-bibtex))
 '(org-ref-pdf-directory "~/Dropbox/Library" t)
 '(org-ref-prefer-bracket-links t)
 '(org-refile-allow-creating-parent-nodes (quote confirm))
 '(org-refile-targets
   (quote
    ((nil :maxlevel . 4)
     ("~/Dropbox/Zettelkasten/someday.org" :maxlevel . 1)
     ("~/Dropbox/Zettelkasten/inbox.org" :maxlevel . 2)
     ("~/Dropbox/Zettelkasten/ndd.org" :maxlevel . 2)
     ("~/Dropbox/Zettelkasten/journal.org" :maxlevel . 2)
     ("~/Dropbox/Zettelkasten/personal.org" :maxlevel . 2)
     ("~/Dropbox/Zettelkasten/lis.org" :maxlevel . 2))))
 '(org-refile-use-cache t)
 '(org-remove-highlights-with-change nil)
 '(org-reverse-note-order t)
 '(org-show-context-detail
   (quote
    ((agenda . ancestors)
     (bookmark-jump . ancestors)
     (isearch . ancestors)
     (default . ancestors))))
 '(org-special-ctrl-a/e (quote (t . t)))
 '(org-startup-folded t)
 '(org-startup-shrink-all-tables t)
 '(org-table-default-size "2x2")
 '(org-tag-alist nil)
 '(org-tag-faces
   (quote
    (("admin" :inherit org-tag :foreground "yellow")
     ("focus" :inherit org-tag :foreground "magenta")
     ("home" :inherit org-tag :foreground "cyan"))))
 '(org-tags-column 0)
 '(org-timer-display (quote both))
 '(org-todo-keyword-faces
   (quote
    (("NEXT" :weight bold :inherit org-todo :foreground "magenta")
     ("?" :weight bold :underline nil :inherit org-todo :foreground "yellow")
     ("IN-PROGRESS" :weight bold :underline nil :inherit org-todo :foreground "cyan1")
     ("HOLD" :weight regular :underline nil :inherit org-todo :foreground "midnight blue")
     ("TODO" :weight regular :underline nil :inherit org-todo :foreground "green yellow"))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "NEXT(n)" "IN-PROGRESS(i)" "?(w)" "|" "DONE(d)" "x(c)")
     (choose "HOLD(h)"))))
 '(org-treat-insert-todo-heading-as-state-change t)
 '(org-use-fast-tag-selection (quote auto))
 '(org-use-tag-inheritance t)
 '(org-wikinodes-active nil)
 '(package-selected-packages (quote nil))
 '(pdf-annot-default-annotation-properties
   (quote
    ((t
      (label . "Betsy"))
     (text
      (color . "#ff0000")
      (icon . "Note"))
     (highlight
      (color . "green yellow"))
     (underline
      (color . "magenta"))
     (squiggly
      (color . "purple1"))
     (strike-out
      (color . "red")))))
 '(pdf-view-continuous nil)
 '(pdf-view-display-size (quote fit-width))
 '(pdf-view-midnight-colors (cons "#282c34" "#bbc2cf"))
 '(pop-up-frame-alist (quote ((height . 80) (width . 80))))
 '(pop-up-windows nil)
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" ".emacs.d" ".stversions" "\".git\"")))
 '(projectile-globally-ignored-file-suffixes (quote (".org~" ".org#" "/.dropbox")))
 '(projectile-mode t nil (projectile))
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(show-smartparens-global-mode t)
 '(smartparens-global-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(unibyte-display-via-language-environment t)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c8805d801780")
     (60 . "#bec073400bc0")
     (80 . "#b58900")
     (100 . "#a5008e550000")
     (120 . "#9d0091000000")
     (140 . "#950093aa0000")
     (160 . "#8d0096550000")
     (180 . "#859900")
     (200 . "#66aa9baa32aa")
     (220 . "#57809d004c00")
     (240 . "#48559e556555")
     (260 . "#392a9faa7eaa")
     (280 . "#2aa198")
     (300 . "#28669833af33")
     (320 . "#279993ccbacc")
     (340 . "#26cc8f66c666")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(visual-fill-column-center-text t)
 '(warning-minimum-level :emergency)
 '(wdired-create-parent-directories nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"])
 '(yankpad-respect-current-org-level nil)
 '(yas-global-mode t)
 '(yas-snippet-dirs
   (quote
    ("/home/betsy/.emacs.d/snippets" yasnippet-snippets-dir))))
