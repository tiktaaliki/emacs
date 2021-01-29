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
 '(alert-default-style 'notifications)
 '(bibtex-autokey-additional-names "-etal")
 '(bibtex-autokey-name-case-convert-function 'identity)
 '(bibtex-autokey-name-separator "-")
 '(bibtex-autokey-name-year-separator "_")
 '(bibtex-autokey-names 2)
 '(bibtex-autokey-names-stretch 1)
 '(bibtex-autokey-titleword-length 0)
 '(bibtex-autokey-year-length 4)
 '(bmkp-last-as-first-bookmark-file "/home/betsy/.emacs.d/bookmarks")
 '(browse-url-secondary-browser-function 'eww-browse-url)
 '(default-input-method "korean-hangul")
 '(display-time-mode t)
 '(eyebrowse-mode t)
 '(fill-column 120)
 '(line-spacing 0.25)
 '(ls-lisp-dirs-first t)
 '(mc/insert-numbers-default 1)
 '(mode-line-format
   '("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote " " mode-line-misc-info mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
     (vc-mode vc-mode)
     "  " mode-line-modes mode-line-end-spaces))
 '(mouse-wheel-scroll-amount '(2 ((shift) . 1) ((control))))
 '(mu4e-bookmarks
   '((:name "inbox" :query "maildir:/gmail/INBOX" :key 105)
     (:name "Unread messages" :query "flag:unread AND maildir:/gmail/INBOX" :key 117)
     (:name "Today's messages" :query "date:today..now" :key 116)
     (:name "Last 7 days" :query "date:7d..now" :hide-unread t :key 119)
     (:name "Messages with images" :query "mime:image/*" :key 112)))
 '(mu4e-maildir-shortcuts
   '(("/gmail/INBOX" . 105)
     ("/Sent" . 115)
     ("/Trash" . 116)
     ("/All" . 97)))
 '(nov-text-width 20)
 '(on-screen-auto-update t)
 '(on-screen-delay 1)
 '(on-screen-drawing-threshold 1)
 '(on-screen-global-mode t)
 '(on-screen-highlight-method 'shadow)
 '(on-screen-inverse-flag t)
 '(openwith-associations
   '(("\\.\\(?:docx?\\|pptx?\\|xls?\\)$" "libreoffice"
      (file))))
 '(org-agenda-export-html-style
   "<link rel=\"stylesheet\" href=\"\\home\\betsy\\Dropbox\\Zettelkasten\\css\\tufte.css\" type=\"text/css\" />")
 '(org-clock-clocktable-default-properties
   '(:maxlevel 4 :hidefiles t :tags t :tcolumns 1 :narrow 30 :level nil :link t) t)
 '(org-clock-in-resume nil)
 '(org-download-delete-image-after-download t)
 '(org-download-image-dir "/home/betsy/Dropbox/Zettelkasten/images")
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
 '(org-html-head
   " <link rel=\"stylesheet\" href=\"\\home\\betsy\\Dropbox\\Zettelkasten\\css\\tufte.css\" type=\"text/css\" /><link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Lobster Two|Jura|Gentium Basic\">")
 '(org-html-head-include-default-style nil)
 '(org-image-actual-width '(600))
 '(org-link-file-path-type 'absolute)
 '(org-log-note-headings
   '((done . "CLOSING NOTE %t")
     (state . "State %-12s from %-12S %t")
     (note . "%t")
     (reschedule . "Rescheduled from %S on %t")
     (delschedule . "Not scheduled, was %S on %t")
     (redeadline . "New deadline from %S on %t")
     (deldeadline . "Removed deadline, was %S on %t")
     (refile . "Refiled on %t")
     (clock-out . "")))
 '(org-modules
   '(ol-bibtex ol-eww org-habit org-id org-protocol org-tempo ol-w3m org-collector org-notify))
 '(org-org-htmlized-css-url "\"~/Dropbox/emacs/css.org\"")
 '(org-pomodoro-keep-killed-pomodoro-time t)
 '(org-pomodoro-ticking-sound-states '(:pomodoro))
 '(org-recent-headings-mode t)
 '(org-src-fontify-natively t)
 '(org-sticky-header-full-path 'full)
 '(org-sticky-header-heading-star "##")
 '(org-superstar-item-bullet-alist '((42 . 8226) (43 . 8900) (45 . 9205)))
 '(org-superstar-prettify-item-bullets t)
 '(org-support-shift-select t)
 '(org-todo-keyword-faces
   '(("WAIT" :weight regular :underline nil :inherit org-todo :foreground "yellow")
     ("TODO" :weight regular :underline nil :inherit org-todo :foreground "#89da59")
     ("슴관" :weight regular :underline nil :inherit org-todo :foreground "#f98866")
     ("NEXT" :weight regular :underline nil :inherit org-todo :foreground "magenta")
     ("IN-PROG" :weight bold :underline t :inherit org-todo :foreground "#5bcbac")
     ("AREA" :weight bold :underline t :inherit org-todo :foreground "#73605b")))
 '(org-todo-repeat-to-state t)
 '(org-web-tools-pandoc-sleep-time 1.0)
 '(org-wild-notifier--alert-severity 'high)
 '(org-wild-notifier-alert-time '(10))
 '(org-wild-notifier-keyword-whitelist nil)
 '(org-wild-notifier-mode t)
 '(package-selected-packages
   '(worf ox-tufte wc-goal-mode org-wc helm-org-ql calibredb amread-mode copyit-pandoc image+ org-alert org-wild-notifier workgroups2 org-analyzer org-drill frog-jump-buffer org-super-links helm-org dired-x dired-toggle-sudo ac-helm org-clock-today org-clock-split auto-complete-auctex zoom helm-bufler visible-mark spray scrollkeeper org-noter-pdftools org-pdftools org-ac mu4e-conversation on-screen uptimes unkillable-scratch mw-thesaurus most-used-words korean-holidays helm-unicode helm-flyspell clean-buffers org-mru-clock undo-tree xml+ use-package olivetti quail quelpa activity-watch-mode org company-org-roam org-roam org-roam-bibtex org-msg nov org-superstar yasnippet-snippets org-clock-convenience org-pomodoro org-plus-contrib crux org-noter pdf-view-restore anki-editor anki-connect ace-jump-buffer helm-org-rifle org-download which-key ace-jump-helm-line ace-link expand-region yankpad w3m visual-fill-column unicode-fonts ssh-agency speed-type smartparens rainbow-delimiters powerthesaurus pandoc-mode pandoc ox-pandoc ox-clip ov org-web-tools org-sticky-header org-ref org-recent-headings org-pdfview org-edna org-cliplink org-chef org-bookmark-heading openwith multiple-cursors mixed-pitch markdown-preview-eww markdown-mode magit-popup magit ledger-mode latex-preview-pane keychain-environment interleave html2org hl-anything highlight helm-swoop helm-projectile helm-bibtexkey gnuplot-mode gnuplot gnu-elpa-keyring-update flyspell-correct-helm doom-themes diminish deft define-word counsel company-bibtex company-auctex centered-cursor-mode calfw-org calfw-cal calfw bufler all-the-icons aggressive-indent ace-window 2048-game))
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
 '(safe-local-variable-values
   '((org-download-image-dir . "/home/betsy/.local/share/Anki2/User 1/collection.media")))
 '(sentence-end-double-space nil)
 '(temp-buffer-resize-mode t)
 '(tooltip-mode nil)
 '(unicode-fonts-block-font-mapping
   '(("Aegean Numbers"
      ("Noto Sans Symbols" "Aegean" "Symbola" "Quivira" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ahom"
      ("AhomUnicode"))
     ("Alchemical Symbols"
      ("Noto Sans Symbols" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Alphabetic Presentation Forms"
      ("DejaVu Sans:width=condensed" "Arial Unicode MS" "Cardo" "Code2000" "Quivira" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Anatolian Hieroglyphs"
      ("Anatolian"))
     ("Ancient Greek Musical Notation"
      ("Cardo" "Noto Sans Symbols" "Aegean" "New Athena Unicode" "Musica" "Symbola" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ancient Greek Numbers"
      ("Noto Sans Symbols" "Apple Symbols" "New Athena Unicode" "Cardo" "Aegean" "Quivira" "Symbola" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ancient Symbols"
      ("Noto Sans Symbols" "Analecta" "New Athena Unicode" "Cardo" "Aegean" "Quivira" "Symbola" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Arabic"
      ("Courier New" "Simplified Arabic Fixed" "Simplified Arabic" "Amiri" "Aldhabi" "Adobe Arabic" "Urdu Typesetting" "Geeza Pro" "Baghdad" "Damascus" "Al Bayan" "Andalus" "Arabic Typesetting" "Traditional Arabic" "Scheherazade" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Nadeem" "Microsoft Uighur" "Tahoma" "Microsoft Sans Serif" "MPH 2B Damase" "KufiStandardGK" "DecoType Naskh" "Koodak" "FreeMono" "Code2000"))
     ("Arabic Extended-A"
      ("Scheherazade" "Amiri"))
     ("Arabic Mathematical Alphabetic Symbols"
      ("Amiri"))
     ("Arabic Presentation Forms-A"
      ("Geeza Pro" "Amiri" "Arial Unicode MS" "Microsoft Sans Serif" "Tahoma" "KufiStandardGK" "Andalus" "Arabic Typesetting" "Urdu Typesetting" "Adobe Arabic" "DecoType Naskh" "Al Bayan" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "MPH 2B Damase" "Code2000"))
     ("Arabic Presentation Forms-B"
      ("DejaVu Sans Mono" "Geeza Pro" "Amiri" "Adobe Arabic" "Traditional Arabic" "Urdu Typesetting" "Arial Unicode MS" "Microsoft Sans Serif" "KufiStandardGK" "DejaVu Sans:width=condensed" "FreeMono" "DecoType Naskh" "Code2000"))
     ("Arabic Supplement"
      ("Courier New" "Simplified Arabic Fixed" "Amiri" "Simplified Arabic" "Geeza Pro" "Damascus" "Andalus" "Arabic Typesetting" "Traditional Arabic" "Scheherazade" "Adobe Arabic" "Microsoft Uighur" "Tahoma" "Microsoft Sans Serif" "MPH 2B Damase"))
     ("Armenian"
      ("DejaVu Sans Mono" "Noto Sans Armenian" "Mshtakan" "Sylfaen" "DejaVu Sans:width=condensed" "Quivira" "MPH 2B Damase" "Code2000" "Arial Unicode MS" "Everson Mono:weight=bold" "FreeMono"))
     ("Arrows"
      ("DejaVu Sans Mono" "Apple Symbols" "Cambria Math" "Segoe UI Symbol" "DejaVu Sans:width=condensed" "Asana Math" "Arial Unicode MS" "BabelStone Modern" "Symbola" "Quivira" "Code2000" "Noto Sans Symbols" "Everson Mono:weight=bold" "FreeMono"))
     ("Avestan"
      ("Noto Sans Avestan" "Ahuramzda:weight=bold" "ALPHABETUM Unicode"))
     ("Balinese"
      ("Noto Sans Balinese:weight=bold" "Aksara Bali"))
     ("Bamum"
      ("Noto Sans Bamum"))
     ("Bamum Supplement"
      ("Noto Sans Bamum"))
     ("Batak"
      ("Batak-Unicode" "Noto Sans Batak"))
     ("Bengali"
      ("Bangla Sangam MN" "Noto Sans Bengali" "Noto Sans Bengali UI" "Nirmala UI" "Vrinda" "Mukti Narrow" "Akaash" "Arial Unicode MS" "Code2000" "ALPHABETUM Unicode"))
     ("Block Elements"
      ("DejaVu Sans Mono" "Noto Sans Symbols" "FreeMono" "DejaVu Sans:width=condensed" "Apple Symbols" "Segoe UI Symbol" "BabelStone Modern" "Symbola" "Quivira" "Code2000" "Everson Mono:weight=bold"))
     ("Bopomofo"
      ("Lantinghei TC" "MingLiU" "SimHei" "LiSong Pro" "FangSong" "SimSun" "DFKai-SB" "WenQuanYi Zen Hei Mono" "Microsoft JhengHei" "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI" "Lantinghei SC" "HAN NOM A" "Arial Unicode MS" "BabelStone Han" "Code2000" "ALPHABETUM Unicode"))
     ("Bopomofo Extended"
      ("MingLiU" "SimHei" "FangSong" "SimSun" "DFKai-SB" "Microsoft JhengHei" "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "Code2000"))
     ("Box Drawing"
      ("DejaVu Sans Mono" "FreeMono" "DejaVu Sans" "Everson Mono" "Quivira" "Code2000" "Noto Sans Symbols" "Segoe UI Symbol" "Symbola"))
     ("Brahmi"
      ("Segoe UI Historic" "Noto Sans Brahmi" "Adinatha Tamil Brahmi" "ALPHABETUM Unicode"))
     ("Braille Patterns"
      ("Quivira" "Apple Braille" "DejaVu Sans:width=condensed" "Apple Symbols" "Segoe UI Symbol" "Symbola" "Noto Sans Symbols" "FreeMono" "Code2000" "Everson Mono:weight=bold"))
     ("Buginese"
      ("Noto Sans Buginese" "MPH 2B Damase" "Monlam Uni Sans Serif" "Code2000"))
     ("Buhid"
      ("Noto Sans Buhid" "Quivira" "Code2000"))
     ("Byzantine Musical Symbols"
      ("Noto Sans Symbols" "Musica" "Symbola" "FreeSerif"))
     ("CJK Compatibility"
      ("SimHei" "FangSong" "SimSun" "MingLiU" "Meiryo" "Microsoft JhengHei" "Microsoft JhengHei UI" "Lantinghei SC" "Lantinghei TC" "HAN NOM A" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "Code2000"))
     ("CJK Compatibility Forms"
      ("WenQuanYi Zen Hei Mono" "Lantinghei SC" "SimHei" "FangSong" "SimSun" "LiSong Pro" "Baoli SC" "Microsoft YaHei" "Microsoft YaHei UI" "Lantinghei TC" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "Symbola" "Xingkai SC" "DFKai-SB" "Code2000"))
     ("CJK Compatibility Ideographs"
      ("SimHei" "FangSong" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "WenQuanYi Zen Hei Mono" "BabelStone Han" "UnBatang" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "Arial Unicode MS" "Lantinghei SC" "HanaMinA"))
     ("CJK Compatibility Ideographs Supplement"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "SimSun" "MingLiU" "HanaMinA" "Hiragino Kaku Gothic Pro" "Hiragino Maru Gothic Pro" "Hiragino Mincho Pro" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM B" "LiSong Pro"))
     ("CJK Radicals Supplement"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "HanaMinA" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "DFKai-SB" "Apple Symbols" "Code2000"))
     ("CJK Strokes"
      ("WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "Code2000"))
     ("CJK Symbols and Punctuation"
      ("Lantinghei SC" "SimHei" "FangSong" "SimSun" "HanaMinA" "WenQuanYi Zen Hei Mono" "LiSong Pro" "STFangsong" "Microsoft YaHei" "Microsoft YaHei UI" "Lantinghei TC" "MingLiU" "HAN NOM A" "Arial Unicode MS" "PCMyungjo" "BabelStone Han" "Osaka:spacing=m" "Code2000"))
     ("CJK Unified Ideographs"
      ("WenQuanYi Zen Hei Mono" "Lantinghei SC" "Songti SC" "SimHei" "FangSong" "STFangsong" "SimSun" "LiSong Pro" "Baoli SC" "HanaMinA" "BabelStone Han" "Apple LiGothic" "Lantinghei TC" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "DFKai-SB" "Arial Unicode MS" "Xingkai SC" "GB18030 Bitmap" "UnBatang"))
     ("CJK Unified Ideographs Extension A"
      ("SimHei" "FangSong" "STFangsong" "SimSun" "Songti SC" "Microsoft YaHei" "Microsoft YaHei UI" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HanaMinA" "HAN NOM A" "Code2000" "DFKai-SB" "BabelStone Han" "GB18030 Bitmap"))
     ("CJK Unified Ideographs Extension B"
      ("SimHei" "FangSong" "SimSun" "LiSong Pro" "Microsoft YaHei" "Microsoft YaHei UI" "HanaMinB" "HAN NOM B" "Code2002" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "BabelStone Han" "DFKai-SB"))
     ("CJK Unified Ideographs Extension C"
      ("HanaMinB" "BabelStone Han" "HAN NOM B"))
     ("CJK Unified Ideographs Extension D"
      ("HanaMinB" "BabelStone Han"))
     ("CJK Unified Ideographs Extension E"
      ("HanaMinB" "BabelStone Han"))
     ("Carian"
      ("Segoe UI Historic" "Noto Sans Carian" "Aegean" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Chakma"
      ("Ribeng"))
     ("Cham"
      ("Noto Sans Cham" "Cham OI_Tangin" "Cham OI_Kulbleng" "Cham OI_Kul" "Code2000"))
     ("Cherokee"
      ("Aboriginal Sans" "Aboriginal Serif" "Plantagenet Cherokee" "Noto Sans Cherokee" "Gadugi" "MPH 2B Damase" "Quivira" "Everson Mono:weight=bold" "FreeMono" "Code2000"))
     ("Cherokee Supplement"
      ("Everson Mono:weight=bold"))
     ("Combining Diacritical Marks"
      ("Monaco" "Consolas" "Noto Sans" "Cambria Math" "Charis SIL" "Doulos SIL" "Courier New" "DejaVu Sans:width=condensed" "DejaVu Sans Mono" "Cardo" "Code2000" "Gentium Plus" "Junicode" "Tahoma" "Microsoft Sans Serif" "Arial" "Quivira" "Symbola" "Everson Mono" "FreeMono" "Arial Unicode MS" "ALPHABETUM Unicode"))
     ("Combining Diacritical Marks Extended"
      ("Monlam Uni Sans Serif"))
     ("Combining Diacritical Marks Supplement"
      ("Cardo" "FreeSerif" "Junicode" "Doulos SIL" "DejaVu Sans:width=condensed" "Noto Sans" "Segoe UI" "Code2000" "Everson Mono" "ALPHABETUM Unicode"))
     ("Combining Diacritical Marks for Symbols"
      ("Cambria Math" "Segoe UI Symbol" "Noto Sans Symbols" "Symbola" "Code2000" "Everson Mono" "Arial Unicode MS"))
     ("Combining Half Marks"
      ("Consolas" "DejaVu Sans:width=condensed" "Everson Mono:weight=bold" "Symbola"))
     ("Common Indic Number Forms"
      ("Noto Sans Kaithi" "Nirmala UI" "Siddhanta"))
     ("Control Pictures"
      ("Apple Symbols" "BabelStone Modern" "Noto Sans Symbols" "Segoe UI Symbol" "Arial Unicode MS" "Symbola" "Quivira" "FreeMono" "Code2000" "Everson Mono:weight=bold"))
     ("Coptic"
      ("Noto Sans Coptic" "Antinoou" "New Athena Unicode" "Segoe UI Historic" "Segoe UI Symbol" "Quivira" "Analecta" "Nilus" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Coptic Epact Numbers"
      ("Nilus" "Symbola"))
     ("Counting Rod Numerals"
      ("WenQuanYi Zen Hei Mono" "Noto Sans Symbols" "BabelStone Modern" "Symbola" "Quivira" "Apple Symbols" "Code2001"))
     ("Cuneiform"
      ("Segoe UI Historic" "Noto Sans Cuneiform" "Noto Sans Sumero-Akkadian Cuneiform" "Akkadian"))
     ("Cuneiform Numbers and Punctuation"
      ("Akkadian" "Segoe UI Historic" "Noto Sans Cuneiform" "Noto Sans Sumero-Akkadian Cuneiform"))
     ("Currency Symbols"
      ("Monaco" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Consolas" "Noto Sans Symbols" "Noto Sans" "Segoe UI" "Apple Symbols" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono"))
     ("Cypriot Syllabary"
      ("Segoe UI Historic" "Noto Sans Cypriot" "Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Cyrillic"
      ("Consolas" "Monaco" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Noto Sans" "Courier New" "Calibri" "Microsoft Sans Serif" "Code2000" "Arial Unicode MS" "Charis SIL" "Doulos SIL" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono" "Charcoal CY" "Geneva CY" "ALPHABETUM Unicode"))
     ("Cyrillic Extended-A"
      ("Quivira" "Everson Mono:weight=bold" "FreeSerif" "ALPHABETUM Unicode"))
     ("Cyrillic Extended-B"
      ("Quivira" "Code2000" "Everson Mono:weight=bold"))
     ("Cyrillic Supplement"
      ("Consolas" "Courier New" "Calibri" "Noto Sans" "DejaVu Sans:width=condensed" "Charis SIL" "Doulos SIL" "Symbola" "Quivira" "Code2000" "Everson Mono:weight=bold"))
     ("Deseret"
      ("Noto Sans Deseret" "Apple Symbols" "Segoe UI Symbol" "Analecta" "Code2001" "Everson Mono:weight=bold"))
     ("Devanagari"
      ("Annapurna SIL" "Noto Sans Devanagari" "Devanagari Sangam MN" "Devanagari MT" "Nirmala UI" "Mangal" "Samyak Devanagari" "Samyak" "Siddhanta" "Aparajita" "Code2000" "Arial Unicode MS" "ALPHABETUM Unicode"))
     ("Devanagari Extended"
      ("Annapurna SIL" "Siddhanta" "FreeSerif"))
     ("Dingbats"
      ("Apple Color Emoji" "DejaVu Sans Mono" "Segoe UI Symbol" "Zapf Dingbats" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Noto Sans Symbols" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Domino Tiles"
      ("DejaVu Sans:width=condensed" "Symbola" "Quivira" "Segoe UI Symbol" "Noto Sans Symbols" "Code2001" "Everson Mono:weight=bold"))
     ("Early Dynastic Cuneiform"
      ("Akkadian"))
     ("Egyptian Hieroglyphs"
      ("Segoe UI Historic:weight=bold" "Noto Sans Egyptian Hieroglyphs:weight=bold" "Aegyptus:weight=bold" "Gardiner"))
     ("Elbasan"
      ("Albanian" "Everson Mono:weight=bold"))
     ("Emoticons"
      ("Apple Color Emoji" "Segoe UI Symbol" "Symbola" "Quivira"))
     ("Enclosed Alphanumeric Supplement"
      ("Segoe UI Symbol" "Noto Sans Symbols" "Symbola" "Quivira" "BabelStone Han" "BabelStone Modern"))
     ("Enclosed Alphanumerics"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Junicode" "Arial Unicode MS" "Symbola" "Quivira" "Code2000" "BabelStone Han" "WenQuanYi Zen Hei Mono" "BabelStone Modern" "HAN NOM A" "Everson Mono:weight=bold"))
     ("Enclosed CJK Letters and Months"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "MingLiU" "Arial Unicode MS" "HanaMinA" "Meiryo" "BabelStone Han" "Quivira" "Code2000" "UnBatang" "HAN NOM A"))
     ("Enclosed Ideographic Supplement"
      ("Segoe UI Symbol" "Noto Sans Symbols" "HanaMinA" "BabelStone Han" "Symbola"))
     ("Ethiopic"
      ("Kefa" "Noto Sans Ethiopic" "Nyala" "Abyssinica SIL" "Ethiopia Jiret" "Ethiopic WashRa SemiBold" "Ethiopic Yebse" "Code2000"))
     ("Ethiopic Extended"
      ("Kefa" "Noto Sans Ethiopic" "Nyala" "Abyssinica SIL" "Code2000"))
     ("Ethiopic Extended-A"
      ("Kefa" "Noto Sans Ethiopic" "Abyssinica SIL"))
     ("Ethiopic Supplement"
      ("Kefa" "Noto Sans Ethiopic" "Nyala" "Abyssinica SIL" "Code2000"))
     ("General Punctuation"
      ("Symbola" "Monaco" "Apple Symbols" "Segoe UI Symbol" "Cambria Math" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Charis SIL" "Doulos SIL" "Antinoou" "Symbola" "Code2000" "Quivira" "Noto Sans" "Everson Mono:weight=bold" "FreeMono" "BabelStone Modern"))
     ("Geometric Shapes"
      ("Symbola" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Segoe UI Symbol" "Arial Unicode MS" "Noto Sans Symbols" "Quivira" "BabelStone Modern" "Everson Mono" "FreeMono" "Code2000"))
     ("Geometric Shapes Extended"
      ("Symbola" "Quivira"))
     ("Georgian"
      ("DejaVu Sans Mono" "Noto Sans Georgian" "Noto Serif Georgian" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Quivira" "Sylfaen" "MPH 2B Damase" "Everson Mono:weight=bold"))
     ("Georgian Supplement"
      ("Noto Sans Georgian" "Noto Serif Georgian" "DejaVu Serif:width=condensed" "MPH 2B Damase" "Quivira" "Everson Mono:weight=bold"))
     ("Glagolitic"
      ("Noto Sans Glagolitic" "Segoe UI Historic" "Segoe UI Symbol" "MPH 2B Damase" "Quivira" "FreeSerif" "ALPHABETUM Unicode"))
     ("Gothic"
      ("Noto Sans Gothic" "Segoe UI Historic" "Segoe UI Symbol" "Analecta" "Junicode" "Sadagolthina" "MPH 2B Damase" "FreeSerif" "Code2001" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Greek Extended"
      ("Consolas" "DejaVu Sans Mono" "Courier New" "Antinoou" "Noto Sans" "DejaVu Sans:width=condensed" "Cardo" "Junicode" "New Athena Unicode" "Microsoft Sans Serif" "Gentium Plus Compact" "Gentium Plus" "Arial Unicode MS" "Arial" "Tahoma" "Aegean" "Code2000" "Quivira" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Greek and Coptic"
      ("Consolas" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Antinoou" "Noto Sans" "Segoe UI Historic" "Segoe UI Symbol" "New Athena Unicode" "Calibri" "Microsoft Sans Serif" "Gentium Plus Compact" "Gentium Plus" "Lucida Console" "Arial Unicode MS" "Cardo" "Aegean" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "Noto Sans Coptic"))
     ("Gujarati"
      ("Nirmala UI" "Noto Sans Gujarati" "Noto Sans Gujarati UI" "Gujarati MT" "Shruti" "Samyak Gujarati" "Samyak" "Gujarati Sangam MN" "Code2000" "Arial Unicode MS"))
     ("Gurmukhi"
      ("Gurmukhi Sangam MN" "Gurmukhi MN" "Nirmala UI" "Noto Sans Gurmukhi" "Noto Sans Gurmukhi UI" "Raavi" "Code2000" "Arial Unicode MS" "AnmolUni"))
     ("Halfwidth and Fullwidth Forms"
      ("Meiryo" "Arial Unicode MS" "Microsoft JhengHei" "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "Apple Symbols" "Quivira" "Code2000" "HAN NOM A"))
     ("Hangul Compatibility Jamo"
      ("Nanum Gothic Coding" "NanumBarunpen" "PCMyungjo" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "AppleMyungjo" "UnBatang" "WenQuanYi Zen Hei Mono" "HAN NOM A" "Arial Unicode MS" "Code2000" "HeadLineA"))
     ("Hangul Jamo"
      ("Nanum Gothic Coding" "NanumBarunpen" "UnBatang" "WenQuanYi Zen Hei Mono" "PCMyungjo" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "Arial Unicode MS" "Code2000"))
     ("Hangul Jamo Extended-A"
      ("Nanum Gothic Coding" "NanumBarunpen" "Malgun Gothic" "HanaMinA" "UnBatang"))
     ("Hangul Jamo Extended-B"
      ("Nanum Gothic Coding" "NanumBarunpen" "Malgun Gothic" "HanaMinA" "UnBatang"))
     ("Hangul Syllables"
      ("Nanum Gothic Coding" "NanumBarunpen" "AppleGothic" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "UnBatang" "WenQuanYi Zen Hei Mono" "Arial Unicode MS" "Code2000"))
     ("Hanunoo"
      ("Noto Sans Hanunoo" "MPH 2B Damase" "Quivira" "FreeSerif"))
     ("Hebrew"
      ("Miriam Fixed" "Ezra SIL" "Ezra SIL SR" "Arial Hebrew" "Raanana" "New Peninim MT" "Aharoni" "David" "FrankRuehl" "Gisha" "Levenim MT" "Narkisim" "Rod" "Cardo" "Courier New" "Adobe Hebrew" "Code2000" "Aramaic Imperial Yeb" "Microsoft Sans Serif" "Tahoma" "Lucida Sans Unicode" "Arial Unicode MS" "Arial" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Hiragana"
      ("Osaka:spacing=m" "MS Gothic" "MS Mincho" "MingLiU" "Hiragino Kaku Gothic Pro" "Meiryo" "Arial Unicode MS" "HanaMinA" "BabelStone Han" "Microsoft JhengHei" "Microsoft YaHei" "Microsoft YaHei UI" "HAN NOM A" "Code2000" "ALPHABETUM Unicode"))
     ("IPA Extensions"
      ("Monaco" "Consolas" "DejaVu Sans Mono" "Courier New" "Noto Sans" "Arial Unicode MS" "Arial" "Tahoma" "Microsoft Sans Serif" "Aboriginal Sans" "Cardo" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono" "Code2000" "ALPHABETUM Unicode"))
     ("Ideographic Description Characters"
      ("SimHei" "FangSong" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "AppleMyungjo" "HanaMinA" "HAN NOM A" "Quivira" "DFKai-SB" "Code2000"))
     ("Imperial Aramaic"
      ("Aramaic Imperial Yeb" "Quivira" "Segoe UI Historic" "Noto Sans Imperial Aramaic" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Inscriptional Pahlavi"
      ("ZH Mono" "Segoe UI Historic" "Noto Sans Inscriptional Pahlavi" "ALPHABETUM Unicode" "Ahuramzda:weight=bold"))
     ("Inscriptional Parthian"
      ("ZH Mono" "Segoe UI Historic" "Noto Sans Inscriptional Parthian" "ALPHABETUM Unicode"))
     ("Javanese"
      ("Noto Sans Javanese" "Tuladha Jejeg"))
     ("Kaithi"
      ("Noto Sans Kaithi"))
     ("Kana Supplement"
      ("Meiryo UI" "HanaMinA" "BabelStone Han"))
     ("Kanbun"
      ("SimHei" "FangSong" "SimSun" "Meiryo" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft YaHei" "Microsoft YaHei UI" "HAN NOM A" "Code2000"))
     ("Kangxi Radicals"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "Meiryo" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "HanaMinA" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "DFKai-SB" "AppleMyungjo" "Apple Symbols" "Code2000"))
     ("Kannada"
      ("Kannada Sangam MN" "Noto Sans Kannada" "Noto Sans Kannada UI" "Tunga" "Akshar Unicode" "Kedage" "Nirmala UI" "Kannada MN" "Arial Unicode MS" "Code2000"))
     ("Katakana"
      ("Osaka:spacing=m" "MS Gothic" "MingLiU" "Meiryo" "HanaMinA" "Arial Unicode MS" "BabelStone Han" "Microsoft JhengHei" "Microsoft YaHei" "Microsoft YaHei UI" "HAN NOM A" "Code2000" "ALPHABETUM Unicode"))
     ("Katakana Phonetic Extensions"
      ("MS Gothic" "MingLiU" "Meiryo" "HanaMinA" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "HAN NOM A" "Code2000"))
     ("Kayah Li"
      ("Noto Sans Kayah Li" "Code2000" "FreeMono"))
     ("Kharoshthi"
      ("Segoe UI Historic" "Noto Sans Kharoshthi" "MPH 2B Damase" "ALPHABETUM Unicode"))
     ("Khmer"
      ("Noto Sans Khmer" "Noto Sans Khmer UI" "Noto Serif Khmer" "Khmer Sangam MN" "DaunPenh" "Code2000" "MoolBoran" "Khmer Mondulkiri" "Khmer Busra"))
     ("Khmer Symbols"
      ("Noto Sans Khmer" "Noto Sans Khmer UI" "Noto Serif Khmer" "Khmer Sangam MN" "MoolBoran" "Khmer Mondulkiri" "Khmer Busra" "Code2000"))
     ("Khojki"
      ("KhojkiUnicodeOT"))
     ("Khudawadi"
      ("OldSindhi"))
     ("Lao"
      ("Noto Sans Lao" "Noto Sans Lao UI" "Noto Serif Lao" "Lao Sangam MN" "DokChampa" "DejaVu Sans Mono" "Arial Unicode MS" "Saysettha MX" "DejaVu Sans:width=condensed" "Code2000"))
     ("Latin Extended-C"
      ("DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Noto Sans" "Cambria Math" "Gentium Plus" "Charis SIL" "Doulos SIL" "Code2000" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Latin Extended-D"
      ("FreeMono" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Charis SIL" "Doulos SIL" "Junicode" "Cardo" "Quivira" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Latin Extended-E"
      ("Quivira" "Everson Mono:weight=bold" "HanaMinA"))
     ("Lepcha"
      ("Mingzat" "Noto Sans Lepcha"))
     ("Letterlike Symbols"
      ("Monaco" "Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols" "Cambria Math" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Symbola" "Quivira" "HAN NOM A" "Everson Mono:weight=bold"))
     ("Limbu"
      ("Noto Sans Limbu" "Namdhinggo SIL" "MPH 2B Damase" "Code2000"))
     ("Linear A"
      ("Aegean"))
     ("Linear B Ideograms"
      ("Noto Sans Linear B" "Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "MPH 2B Damase"))
     ("Linear B Syllabary"
      ("Noto Sans Linear B" "Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "MPH 2B Damase" "Penuturesu"))
     ("Lisu"
      ("Lisu Unicode" "Miao Unicode" "Noto Sans Lisu" "Lisu Tzimu" "Quivira" "Everson Mono:weight=bold"))
     ("Lycian"
      ("Segoe UI Historic" "Noto Sans Lycian" "Aegean" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Lydian"
      ("Segoe UI Historic" "Noto Sans Lydian" "Aegean" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Mahjong Tiles"
      ("Segoe UI Symbol" "Symbola" "Noto Sans Symbols" "Quivira" "Everson Mono"))
     ("Malayalam"
      ("Malayalam Sangam MN" "Nirmala UI" "Kartika" "Code2000" "Akshar Unicode" "Samyak Malayalam" "Samyak" "Arial Unicode MS"))
     ("Mandaic"
      ("Noto Sans Mandaic"))
     ("Mathematical Alphanumeric Symbols"
      ("Cambria Math" "Noto Sans Symbols" "Asana Math" "Code2001" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Mathematical Operators"
      ("Symbola" "Monaco" "DejaVu Sans Mono" "Segoe UI Symbol" "Cambria Math" "DejaVu Sans:width=condensed" "Noto Sans Symbols" "Apple Symbols" "Asana Math" "Arial Unicode MS" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono"))
     ("Meetei Mayek"
      ("Noto Sans Meetei Mayek" "Eeyek Unicode" "Meetei Mayek"))
     ("Meetei Mayek Extensions"
      ("Noto Sans Meetei Mayek"))
     ("Meroitic Cursive"
      ("Nilus" "Segoe UI Historic" "Segoe UI Symbol"))
     ("Meroitic Hieroglyphs"
      ("Nilus"))
     ("Miao"
      ("Miao Unicode" "Albanian"))
     ("Miscellaneous Mathematical Symbols-A"
      ("Noto Sans Symbols" "Apple Symbols" "Segoe UI Symbol" "Asana Math" "Code2000" "Symbola" "Quivira" "Cambria Math" "Everson Mono:weight=bold"))
     ("Miscellaneous Mathematical Symbols-B"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols" "Cambria Math" "Asana Math" "Code2000" "Symbola" "Quivira"))
     ("Miscellaneous Symbols"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Symbola" "Quivira" "MS Reference Sans Serif" "Cardo" "Code2000" "Everson Mono:weight=bold"))
     ("Miscellaneous Symbols and Arrows"
      ("Symbola" "Quivira" "Asana Math" "Code2000" "Segoe UI Symbol" "Noto Sans Symbols"))
     ("Miscellaneous Symbols and Pictographs"
      ("Apple Color Emoji" "Segoe UI Symbol" "Symbola" "Quivira"))
     ("Miscellaneous Technical"
      ("Segoe UI Symbol" "Noto Sans Symbols" "Apple Symbols" "Cambria Math" "DejaVu Sans Mono" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Modi"
      ("MarathiCursiveG"))
     ("Modifier Tone Letters"
      ("Apple Symbols" "Noto Sans Symbols" "Gentium Plus" "Code2000" "Quivira" "Charis SIL" "Doulos SIL" "DejaVu Sans Mono"))
     ("Mongolian"
      ("STFangsong" "STHeiti" "STKaiti" "STSong" "Noto Sans Mongolian" "Mongolian Baiti" "Daicing Xiaokai" "Code2000"))
     ("Mro"
      ("Mro Unicode"))
     ("Musical Symbols"
      ("Noto Sans Symbols" "Musica" "FreeSerif" "Symbola" "Quivira"))
     ("Myanmar"
      ("Noto Sans Myanmar" "Noto Sans Myanmar UI" "Myanmar Text" "Myanmar Sangam MN" "Myanmar MN" "TharLon" "Yunghkio" "Myanmar3" "Masterpiece Uni Sans" "Padauk" "Code2000" "Tai Le Valentinium"))
     ("Myanmar Extended-A"
      ("Noto Sans Myanmar" "Noto Sans Myanmar UI" "Myanmar Text" "Padauk" "TharLon" "Yunghkio"))
     ("Myanmar Extended-B"
      ("TharLon" "Yunghkio"))
     ("NKo"
      ("Ebrima" "Conakry" "DejaVu Sans:width=condensed" "Noto Sans NKo" "Code2000"))
     ("Nabataean"
      ("Everson Mono:weight=bold"))
     ("New Tai Lue"
      ("Noto Sans New Tai Lue" "Microsoft New Tai Lue" "Dai Banna SIL Book" "Dai Banna SIL Book:style=Regular"))
     ("Number Forms"
      ("DejaVu Sans:width=condensed" "Asana Math" "Arial Unicode MS" "Junicode" "Symbola" "Quivira" "Charis SIL" "Doulos SIL" "Code2000" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Ogham"
      ("Segoe UI Historic" "Segoe UI Symbol" "Noto Sans Ogham" "DejaVu Sans:width=condensed" "BabelStone Modern" "Code2000" "Aboriginal Serif" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ol Chiki"
      ("Nirmala UI" "Noto Sans Ol Chiki" "Code2000"))
     ("Old Hungarian"
      ("OldHungarian"))
     ("Old Italic"
      ("Segoe UI Historic" "Segoe UI Symbol" "DejaVu Sans:width=condensed" "Cardo" "New Athena Unicode" "Aegean" "Noto Sans Old Italic" "Albanian" "Code2001" "Quivira" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Old North Arabian"
      ("Marib"))
     ("Old Permic"
      ("Everson Mono:weight=bold"))
     ("Old Persian"
      ("Segoe UI Historic" "Noto Sans Old Persian" "MPH 2B Damase" "Aegean" "Code2001" "FreeSans" "ALPHABETUM Unicode"))
     ("Old South Arabian"
      ("Segoe UI Historic" "Noto Sans Old South Arabian" "Quivira" "Qataban" "Everson Mono:weight=bold"))
     ("Old Turkic"
      ("Noto Sans Old Turkic" "Segoe UI Historic" "Segoe UI Symbol" "Quivira" "Everson Mono:weight=bold"))
     ("Optical Character Recognition"
      ("Apple Symbols" "Segoe UI Symbol" "Noto Sans Symbols" "Arial Unicode MS" "Symbola" "Quivira" "FreeMono" "BabelStone Modern" "Code2000" "Everson Mono"))
     ("Oriya"
      ("Noto Sans Oriya" "Oriya Sangam MN" "Nirmala UI" "Kalinga" "Samyak Oriya" "Samyak" "Code2000" "Arial Unicode MS"))
     ("Ornamental Dingbats"
      ("Symbola"))
     ("Osmanya"
      ("Noto Sans Osmanya" "Ebrima" "Andagii" "MPH 2B Damase" "Code2001" "Everson Mono:weight=bold"))
     ("Phags-pa"
      ("BabelStone Phags-pa Book" "BabelStone Phags-pa Book:style=Regular" "Noto Sans Phags-pa" "Microsoft PhagsPa" "Code2000"))
     ("Phaistos Disc"
      ("Aegean" "Noto Sans Symbols" "Symbola" "Everson Mono:weight=bold" "Code2001" "ALPHABETUM Unicode"))
     ("Phoenician"
      ("Segoe UI Historic" "Noto Sans Phoenician" "Aegean" "Quivira" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Phonetic Extensions"
      ("Monaco" "Consolas" "Calibri" "Noto Sans" "Aboriginal Sans" "Charis SIL" "Doulos SIL" "Quivira" "Courier New" "DejaVu Sans:width=condensed" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Phonetic Extensions Supplement"
      ("Consolas" "Calibri" "Courier New" "Noto Sans" "Aboriginal Sans" "Charis SIL" "Doulos SIL" "Quivira" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Playing Cards"
      ("DejaVu Sans:width=condensed" "Symbola" "Noto Sans Symbols" "Segoe UI Symbol" "Quivira"))
     ("Rejang"
      ("Noto Sans Rejang" "Code2000" "Everson Mono:weight=bold"))
     ("Rumi Numeral Symbols"
      ("HanaMinA"))
     ("Runic"
      ("Noto Sans Runic" "Segoe UI Historic" "Segoe UI Symbol" "Aboriginal Serif" "Junicode" "FreeMono" "Quivira" "Code2000" "Cardo" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Samaritan"
      ("Noto Sans Samaritan" "Quivira" "Everson Mono:weight=bold"))
     ("Saurashtra"
      ("Noto Sans Saurashtra" "Code2000" "Sourashtra"))
     ("Sharada"
      ("Albanian"))
     ("Shavian"
      ("Segoe UI Historic" "Noto Sans Shavian" "Andagii" "MPH 2B Damase" "Apple Symbols" "Code2001" "Everson Mono:weight=bold"))
     ("Siddham"
      ("MuktamsiddhamG"))
     ("Sinhala"
      ("Noto Sans Sinhala" "Nirmala UI" "Iskoola Pota" "Akshar Unicode" "Sinhala Sangam MN"))
     ("Small Form Variants"
      ("Apple Symbols" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "Microsoft YaHei" "Microsoft YaHei UI" "Code2000"))
     ("Sora Sompeng"
      ("Nirmala UI"))
     ("Specials"
      ("BabelStone Modern" "Noto Sans Symbols" "Apple Symbols" "Arial Unicode MS" "Symbola" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Quivira" "FreeMono" "BabelStone Han"))
     ("Sundanese"
      ("Noto Sans Sundanese" "Sundanese Unicode"))
     ("Sundanese Supplement"
      ("Noto Sans Sundanese"))
     ("Superscripts and Subscripts"
      ("Consolas" "Monaco" "Apple Symbols" "Cambria Math" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Segoe UI Symbol" "Asana Math" "Charis SIL" "Doulos SIL" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono"))
     ("Supplemental Arrows-A"
      ("Segoe UI Symbol" "Cambria Math" "DejaVu Sans:width=condensed" "Asana Math" "Quivira" "Symbola" "Apple Symbols" "Noto Sans Symbols" "Code2000" "Everson Mono:weight=bold" "FreeMono" "BabelStone Modern"))
     ("Supplemental Arrows-B"
      ("Cambria Math" "Segoe UI Symbol" "Apple Symbols" "Noto Sans Symbols" "Asana Math" "Quivira" "Symbola" "Code2000" "Everson Mono:weight=bold"))
     ("Supplemental Arrows-C"
      ("Symbola"))
     ("Supplemental Mathematical Operators"
      ("Cambria Math" "Segoe UI Symbol" "Noto Sans Symbols" "Apple Symbols" "Asana Math" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Supplemental Punctuation"
      ("DejaVu Sans Mono" "Segoe UI Symbol" "Noto Sans Symbols" "Antinoou" "New Athena Unicode" "Cardo" "Aegean" "Symbola" "Quivira" "Everson Mono:weight=bold" "Code2000" "ALPHABETUM Unicode"))
     ("Supplemental Symbols and Pictographs"
      ("Symbola"))
     ("Syloti Nagri"
      ("Noto Sans Syloti Nagri" "MPH 2B Damase"))
     ("Syriac"
      ("Segoe UI Historic" "Estrangelo Edessa" "Estrangelo Nisibin" "Code2000"))
     ("Tagalog"
      ("Quivira" "Noto Sans Tagalog"))
     ("Tagbanwa"
      ("Noto Sans Tagbanwa" "Quivira"))
     ("Tags"
      ("BabelStone Modern" "BabelStone Han"))
     ("Tai Le"
      ("Microsoft Tai Le" "TharLon" "Noto Sans Tai Le" "Yunghkio" "Tai Le Valentinium" "MPH 2B Damase" "FreeSerif"))
     ("Tai Tham"
      ("Noto Sans Tai Tham" "Lanna Alif" "Chiangsaen Alif" "Lanna Unicode UI" "Monlam Uni Sans Serif"))
     ("Tai Viet"
      ("Tai Heritage Pro" "Noto Sans Tai Viet"))
     ("Tai Xuan Jing Symbols"
      ("WenQuanYi Zen Hei Mono" "Apple Symbols" "Noto Sans Symbols" "Segoe UI Symbol" "BabelStone Han" "DejaVu Sans:width=condensed" "Symbola" "Quivira" "BabelStone Modern" "Code2001" "Everson Mono:weight=bold"))
     ("Takri"
      ("Albanian"))
     ("Tamil"
      ("Latha" "Noto Sans Tamil" "Noto Sans Tamil UI" "Nirmala UI" "Tamil MN" "Tamil Sangam MN" "InaiMathi" "Vijaya" "Maduram" "Akshar Unicode" "Samyak Tamil" "Samyak" "Code2000" "Arial Unicode MS"))
     ("Telugu"
      ("Noto Sans Telugu" "Noto Sans Telugu UI" "Telugu Sangam MN" "Vani" "Nirmala UI" "Gautami" "Akshar Unicode" "Code2000" "Arial Unicode MS"))
     ("Thaana"
      ("MV Boli" "Noto Sans Thaana" "MPH 2B Damase" "Code2000" "Everson Mono:weight=bold"))
     ("Thai"
      ("Thonburi" "DokChampa" "Noto Sans Thai" "Noto Sans Thai UI" "Noto Serif Thai" "Ayuthaya" "Silom" "Krungthep" "Sathu" "Angsana New" "AngsanaUPC" "Code2000" "Tahoma" "Arial Unicode MS" "Quivira" "Everson Mono:weight=bold"))
     ("Tibetan"
      ("Noto Sans Tibetan" "Kailasa" "Kokonor" "Tibetan Machine Uni" "Microsoft Himalaya" "Jomolhari" "Monlam Uni Sans Serif" "Arial Unicode MS"))
     ("Tifinagh"
      ("Noto Sans Tifinagh" "Ebrima" "DejaVu Sans:width=condensed" "Code2000" "Quivira" "Everson Mono:weight=bold"))
     ("Transport and Map Symbols"
      ("Apple Color Emoji" "Segoe UI Symbol" "Symbola"))
     ("Ugaritic"
      ("Segoe UI Historic" "Noto Sans Ugaritic" "Aegean" "Code2001" "Andagii" "Quivira" "Everson Mono:weight=bold" "FreeSans" "ALPHABETUM Unicode"))
     ("Unified Canadian Aboriginal Syllabics"
      ("Aboriginal Sans" "Aboriginal Serif" "Noto Sans Canadian Aboriginal" "Gadugi" "Euphemia UCAS" "Euphemia" "Code2000" "Quivira" "Everson Mono:weight=bold"))
     ("Unified Canadian Aboriginal Syllabics Extended"
      ("Aboriginal Sans" "Aboriginal Serif" "Noto Sans Canadian Aboriginal" "Gadugi" "Euphemia UCAS" "Euphemia" "Quivira" "Everson Mono:weight=bold"))
     ("Vai"
      ("Ebrima" "Noto Sans Vai" "Dukor" "Wakor" "Code2000" "Quivira"))
     ("Variation Selectors"
      ("BabelStone Modern" "BabelStone Han" "Code2000"))
     ("Variation Selectors Supplement"
      ("BabelStone Modern" "BabelStone Han"))
     ("Vedic Extensions"
      ("Siddhanta"))
     ("Vertical Forms"
      ("Microsoft YaHei" "Microsoft YaHei UI" "Symbola"))
     ("Yi Radicals"
      ("Noto Sans Yi" "Nuosu SIL" "Microsoft Yi Baiti" "STFangsong" "Code2000"))
     ("Yi Syllables"
      ("Noto Sans Yi" "Nuosu SIL" "Microsoft Yi Baiti" "STFangsong" "Code2000"))
     ("Yijing Hexagram Symbols"
      ("WenQuanYi Zen Hei Mono" "Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols" "DejaVu Sans:width=condensed" "BabelStone Han" "Symbola" "Quivira" "BabelStone Modern" "Code2000" "Everson Mono:weight=bold"))))
 '(visual-fill-column-width nil)
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
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#282c34" :foreground "#d6c3aa" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 248 :width normal :foundry "PfEd" :family "Fantasque Sans Mono"))))
 '(bold ((t (:foreground "#ba5536" :weight bold))))
 '(bold-italic ((t (:inherit italic))))
 '(diredp-dir-name ((t (:foreground "RoyalBlue2" :weight bold))))
 '(fringe ((t (:background "#282c34"))))
 '(frog-menu-border ((t (:background "RoyalBlue4"))))
 '(frog-menu-posframe-background-face ((t (:background "RoyalBlue4"))))
 '(hi-green ((t (:background "#98be65" :foreground "black"))))
 '(italic ((t (:foreground "#31a9b8" :slant italic))))
 '(on-screen-narrow-line ((t (:underline "dark gray" :width normal))))
 '(org-block ((t (:inherit default :extend t :background "#23272e"))))
 '(org-date ((t (:underline t :height 1.0 :family "monofur"))))
 '(org-done ((t (:inherit org-headline-done))))
 '(org-drawer ((t (:foreground "sky blue" :height 0.8))))
 '(org-ellipsis ((t (:foreground "#a4cabc" :strike-through nil :underline nil))))
 '(org-headline-done ((t (:foreground "#5B6268" :strike-through t))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "#9a9eab" :weight normal :height 0.9))))
 '(org-level-4 ((t (:inherit org-level-3 :foreground "light coral" :height 1.0))))
 '(org-link ((t (:inherit link :foreground "#b38867" :underline nil :weight normal :family "monofur"))))
 '(org-list-dt ((t (:inherit default :foreground "#51afef"))))
 '(org-property-value ((t (:foreground "#83898d" :height 0.9))) t)
 '(org-quote ((t (:background "#23272e" :foreground "sandy brown" :slant normal))))
 '(org-scheduled-previously ((t (:foreground "#fdd475"))))
 '(org-special-keyword ((t (:foreground "#83898d" :height 0.9))))
 '(org-tag ((t (:foreground "#83898d" :weight normal :height 0.8))))
 '(org-tag-group ((t (:inherit nil :foreground "dodger blue"))))
 '(org-todo ((t (:foreground "#98be65" :weight normal :height 0.75 :family "nova mono"))))
 '(outline-1 ((t (:extend t :foreground "#337bae" :weight normal :family "victor mono"))))
 '(underline ((t (:foreground "#89da59" :underline t))))
 '(variable-pitch ((t (:family "KoHo")))))
