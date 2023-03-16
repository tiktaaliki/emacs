
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
 '(org-level-7 ((t (:inherit org-level-6 :extend nil))))
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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bibtex-completion-format-citation-functions
   '((org-mode . bibtex-completion-format-citation-org-cite)
     (latex-mode . bibtex-completion-format-citation-cite)
     (markdown-mode . bibtex-completion-format-citation-pandoc-citeproc)
     (python-mode . bibtex-completion-format-citation-sphinxcontrib-bibtex)
     (rst-mode . bibtex-completion-format-citation-sphinxcontrib-bibtex)
     (default . bibtex-completion-format-citation-default)))
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(custom-safe-themes
   '("5a611788d47c1deec31494eb2bb864fde402b32b139fe461312589a9f28835db" default))
 '(default-input-method "korean-hangul")
 '(fill-column 100)
 '(global-visual-line-mode t)
 '(mu4e-attachment-dir "/home/betsy/Dropbox/2022")
 '(olivetti-body-width 0.8)
 '(org-agenda-columns-add-appointments-to-effort-sum t)
 '(org-agenda-dim-blocked-tasks t)
 '(org-agenda-exporter-settings '((org-agenda-remove-tags t) (org-agenda-with-colors nil)))
 '(org-agenda-prefix-format
   '((agenda . " %i %-12:c %?-12t% s")
     (todo . " %i %-12:c")
     (tags . " %i %-12:c")
     (search . " %i %-12:c")))
 '(org-agenda-scheduled-leaders '("" "Sch.%2dx: "))
 '(org-agenda-tags-column -80)
 '(org-agenda-time-grid
   '((daily today require-timed remove-match)
     (900 1000 1100 1200 1300 1400 1500 1600 1700)
     " ┄┄┄┄┄ " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄"))
 '(org-cite-global-bibliography '("~/Dropbox/Zettelkasten/references.bib"))
 '(org-columns-default-format "%25ITEM %TODO %3PRIORITY %EFFORT %TAGS")
 '(org-columns-default-format-for-agenda "%25ITEM %TODO %SCHEDULED %EFFORT")
 '(org-deadline-warning-days 3)
 '(org-duration-format '(("p" . t) (special . h:mm)))
 '(org-duration-units
   '(("min" . 1)
     ("h" . 60)
     ("d" . 1440)
     ("w" . 10080)
     ("m" . 43200)
     ("y" . 525960.0)
     ("p" . 25)))
 '(org-ellipsis " »")
 '(org-fast-tag-selection-single-key t)
 '(org-fold-catch-invisible-edits 'smart)
 '(org-gcal-auto-archive nil)
 '(org-gcal-remove-api-cancelled-events t)
 '(org-global-properties '(("EFFORT_ALL" . "5 10 15 20 25 30 35 40 45 50 55 60")))
 '(org-habit-graph-column 50)
 '(org-habit-show-habits-only-for-today t)
 '(org-id-link-to-org-use-id 'create-if-interactive)
 '(org-image-actual-width '(400))
 '(org-log-note-headings
   '((done . "State %-12s from %-12S %t")
     (state . "State %-12s from %-12S %t")
     (note . "Note taken on %t")
     (reschedule . "Rescheduled from %S on %t")
     (delschedule . "Not scheduled, was %S on %t")
     (redeadline . "New deadline from %S on %t")
     (deldeadline . "Removed deadline, was %S on %t")
     (refile . "Refiled on %t")
     (clock-out . "")))
 '(org-pomodoro-ticking-sound-states '(:pomodoro))
 '(org-roam-directory "/home/betsy/Dropbox/Zettelkasten/Zettels" t)
 '(package-selected-packages
   '(org-transclusion mpv emms restart-emacs marginalia modus-vivendi modus-themes org-projectile org-projectile-helm citeproc-org ov org-ref-prettify mu4e org pdf-tools helm async helm-bibtex org-gcal transient pomm yas yasnippet-snippets org-time-budgets org-timeline org-pomodoro zoom yankpad xml+ workgroups2 worf which-key wc-mode wc-goal-mode w3m visual-fill-column visible-mark uptimes unkillable-scratch unicode-fonts undo-tree ssh-agency spray speed-type smartparens scrollkeeper rainbow-delimiters quelpa-use-package powerthesaurus pdf-view-restore pdf-continuous-scroll-mode pandoc-mode ox-tufte ox-pandoc ox-clip org-wild-notifier org-web-tools org-wc org-superstar org-sticky-header org-ref org-recent-headings org-plus-contrib org-pdfview org-noter-pdftools org-msg org-mru-clock org-edna org-drill org-download org-clock-today org-clock-split org-clock-convenience org-cliplink org-chef org-bookmark-heading org-auto-tangle org-analyzer org-alert org-ac openwith on-screen olivetti nov mw-thesaurus multiple-cursors mu4e-conversation most-used-words mixed-pitch markdown-preview-eww markdown-mode magit-popup magit ledger-mode latex-preview-pane korean-holidays keychain-environment interleave image+ html2org hl-anything highlight helm-unicode helm-swoop helm-projectile helm-org-rifle helm-org-ql helm-flyspell helm-chronos helm-bufler helm-bibtexkey gnuplot-mode gnuplot gnu-elpa-keyring-update frog-jump-buffer flyspell-correct-helm expand-region doom-themes dired-toggle-sudo diminish deft define-word csv-mode crux counsel copyit-pandoc company-org-roam company-bibtex company-auctex clean-buffers centered-cursor-mode calibredb calfw-org calfw-cal calfw auto-complete-auctex anki-editor anki-connect amread-mode all-the-icons aggressive-indent activity-watch-mode ace-window ace-jump-mode ace-jump-helm-line ace-jump-buffer ac-helm 2048-game))
 '(pdf-annot-default-annotation-properties
   '((t
      (label . "Betsy"))
     (text
      (color . "#ff0000")
      (icon . "Note"))
     (highlight
      (color . "light green"))
     (underline
      (color . "blue"))
     (squiggly
      (color . "orange"))
     (strike-out
      (color . "red"))))
 '(pdf-annot-list-listed-types
   '(file free-text highlight squiggly strike-out text underline))
 '(safe-local-variable-values
   '((org-download-image-dir . "/home/betsy/.local/share/Anki2/User 1/collection.media")
     (org-reverse-note-order)))
 '(user-mail-address "betsy.yoon@baruch.cuny.edu")
 '(visual-fill-column-center-text t)
 '(warning-suppress-types '((use-package)))
 '(yas-global-mode t))
