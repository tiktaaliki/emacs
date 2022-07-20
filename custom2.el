
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
   '("3319c893ff355a88b86ef630a74fad7f1211f006d54ce451aab91d35d018158f" "5a611788d47c1deec31494eb2bb864fde402b32b139fe461312589a9f28835db" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "74b9e99a8682c86659b8ace1610c4556c4619e6ca812a37b32d2c5f844fdafca" "c4063322b5011829f7fdd7509979b5823e8eea2abf1fe5572ec4b7af1dd78519" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" default))
 '(default-input-method "korean-hangul")
 '(fill-column 100)
 '(global-visual-line-mode t)
 '(mu4e-attachment-dir "/home/betsy/Dropbox/2022")
 '(olivetti-body-width 0.8)
 '(org-agenda-columns-add-appointments-to-effort-sum t)
 '(org-agenda-dim-blocked-tasks 'invisible)
 '(org-agenda-exporter-settings '((org-agenda-remove-tags t) (org-agenda-with-colors nil)))
 '(org-agenda-prefix-format
   '((agenda . " %i %-12:c %?-12t% s")
     (todo . " %i %-12:c")
     (tags . " %i %-12:c")
     (search . " %i %-12:c")))
 '(org-agenda-scheduled-leaders '("" "Sch.%2dx: "))
 '(org-agenda-tags-column -80)
 '(org-cite-global-bibliography '("~/Dropbox/Zettelkasten/references.bib"))
 '(org-columns-default-format "%25ITEM %TODO %3PRIORITY %EFFORT %TAGS")
 '(org-columns-default-format-for-agenda "%25ITEM %TODO %SCHEDULED %EFFORT")
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
 '(org-gcal-auto-archive nil)
 '(org-global-properties '(("EFFORT_ALL" . "5 10 15 20 25 30 35 40 45 50 55 60")))
 '(org-habit-show-habits-only-for-today t)
 '(org-id-link-to-org-use-id 'create-if-interactive)
 '(org-image-actual-width '(400))
 '(org-pomodoro-ticking-sound-states '(:pomodoro))
 '(package-selected-packages
   '(modus-themes org-projectile org-projectile-helm citeproc-org ov org-ref-prettify mu4e org pdf-tools helm async helm-bibtex org-gcal transient pomm yas yasnippet-snippets org-time-budgets org-timeline org-pomodoro zoom yankpad xml+ workgroups2 worf which-key wc-mode wc-goal-mode w3m visual-fill-column visible-mark uptimes unkillable-scratch unicode-fonts undo-tree ssh-agency spray speed-type smartparens scrollkeeper rainbow-delimiters quelpa-use-package powerthesaurus pdf-view-restore pdf-continuous-scroll-mode pandoc-mode ox-tufte ox-pandoc ox-clip org-wild-notifier org-web-tools org-wc org-superstar org-sticky-header org-ref org-recent-headings org-plus-contrib org-pdfview org-noter-pdftools org-msg org-mru-clock org-edna org-drill org-download org-clock-today org-clock-split org-clock-convenience org-cliplink org-chef org-bookmark-heading org-auto-tangle org-analyzer org-alert org-ac openwith on-screen olivetti nov mw-thesaurus multiple-cursors mu4e-conversation most-used-words mixed-pitch markdown-preview-eww markdown-mode magit-popup magit ledger-mode latex-preview-pane korean-holidays keychain-environment interleave image+ html2org hl-anything highlight helm-unicode helm-swoop helm-projectile helm-org-rifle helm-org-ql helm-flyspell helm-chronos helm-bufler helm-bibtexkey gnuplot-mode gnuplot gnu-elpa-keyring-update frog-jump-buffer flyspell-correct-helm expand-region doom-themes dired-toggle-sudo diminish deft define-word csv-mode crux counsel copyit-pandoc company-org-roam company-bibtex company-auctex clean-buffers centered-cursor-mode calibredb calfw-org calfw-cal calfw auto-complete-auctex anki-editor anki-connect amread-mode all-the-icons aggressive-indent activity-watch-mode ace-window ace-jump-mode ace-jump-helm-line ace-jump-buffer ac-helm 2048-game))
 '(pdf-annot-default-annotation-properties
   '((t
      (label . "Betsy"))
     (text
      (color . "#ff0000")
      (icon . "Note"))
     (highlight
      (color . "spring green"))
     (underline
      (color . "blue"))
     (squiggly
      (color . "orange"))
     (strike-out
      (color . "red"))))
 '(safe-local-variable-values
   '((org-download-image-dir . "/home/betsy/.local/share/Anki2/User 1/collection.media")
     (org-reverse-note-order)))
 '(user-mail-address "betsy.yoon@baruch.cuny.edu")
 '(visual-fill-column-center-text t)
 '(warning-suppress-types '((use-package)))
 '(yas-global-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(modus-themes-heading-1 ((t (:inherit bold :foreground "#ffffff" :weight normal))) t)
 '(modus-themes-heading-3 ((t (:inherit bold :foreground "#c6eaff" :weight normal))) t)
 '(modus-themes-heading-4 ((t (:inherit bold :foreground "#bfebe0" :weight normal))) t)
 '(org-block ((t (:inherit modus-themes-fixed-pitch :extend t :background "gray14" :foreground "#ffffff"))))
 '(org-date ((t (:inherit (modus-themes-link-symlink modus-themes-fixed-pitch) :foreground "#D7BA7D" :weight normal))))
 '(org-done ((t (:inherit modus-themes-grue :foreground "dim gray" :strike-through nil :weight normal))))
 '(org-ellipsis ((t (:foreground "LightGoldenrod"))))
 '(org-level-1 ((t (:inherit modus-themes-heading-1 :weight normal))))
 '(org-level-2 ((t (:inherit modus-themes-heading-2 :weight normal))))
 '(org-todo ((t (:foreground "Pink" :weight normal)))))
