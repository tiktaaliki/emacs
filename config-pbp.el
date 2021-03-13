(use-package org-superstar)
   (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
   (setq org-superstar-headline-bullets-list '("◉" "❤""✼" "♢"    "⭆" ) )
;(setq org-superstar-item-bullet-alist (quote ((42 . 2023) (43 . 10148) (45 . 8226))))

   (setq org-list-demote-modify-bullet
         '(("+" . "*") ("-" . "+") ("*" . "-")))
                                           ;  (setq org-list-demote-modify-bullet
                                           ;       '(("+" . "-") ("-" . "+") ))
   (setq org-list-allow-alphabetical t)
   (setq org-list-indent-offset 1)
(setq org-superstar-prettify-item-bullets t)
   (setq org-list=description-max-indent 5)
                                           ;  (setq org-bullets-bullet-list (quote ( "⚫" "⧽" "○" "⯌"     "◆"  "☆"            "⚬" )))
                                           ;   "•"    "‣"    "⏵""▷"   "♦""◇"    "◉" "⬤"〇⭕ "⨀"  "★" "⬤" "ᐅ"  "〇"     "⟐"     "⚬" )))
                                           ;○◔◑◕●⌾⭗☉⌾◎◉⨀◎⌾◉◍⊗⊛•○∙∙⊛⁕✱ ൦❄⊕⊖⊗⊘⊙⊚⊛⊜⊝∘∙◉⏺○◍◎●◐◑◒◓◔◕◦◯◴◵◶◷☉⚪⚫⚬◐

                                           ; too tall: "⬥"  "⯈" "⚫" "∙" ⬤ ✶ "✧" "▸" "⯏"  "⭗"   "⛭" "⚪"  "⭐"  "⏵" 
   (setq org-inlinetask-min-level 7)
   (setq org-checkbox-hierarchical-statistics nil)

(setq org-startup-indented t)
(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))
(add-hook 'org-mode-hook (lambda () (visual-line-mode 1)))
(add-hook 'org-mode-hook (lambda () (auto-revert-mode 1)))
(setq org-hide-emphasis-markers t)
(setq org-hide-leading-stars t) 
(setq org-startup-with-inline-images t)
(setq org-startup-align-all-tables t)
(setq org-startup-folded t)
(setq org-special-ctrl-a/e (quote (t . t)))
                                        ;   (use-package org-bullets)
                                        ;  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-catch-invisible-edits (quote smart))
(setq org-cycle-separator-lines 0)
(setq org-support-shift-select t) 
(setq org-show-context-detail '(
                                (agenda . canonical)
                                (bookmark-jump . canonical)
                                (isearch . canonical)
                                (default . minimal)

                                ))

(setq org-agenda-window-setup 'current-window)

      (setq  org-agenda-sorting-strategy 
             '((agenda time-up)
               (todo priority-down category-keep)
               (tags priority-down category-keep)
               (search category-keep)))
      (setq org-agenda-tags-todo-honor-ignore-options t)
      (setq org-agenda-use-tag-inheritance t)

   (setq org-agenda-skip-deadline-if-done t)
      (setq org-agenda-skip-timestamp-if-done t)
      (setq org-agenda-skip-scheduled-if-done t)
      (setq org-agenda-current-time-string "✸✸✸✸✸")

      (setq org-agenda-start-with-clockreport-mode t)
      (setq org-agenda-span (quote day))
      (setq org-agenda-jump-prefer-future t)

      (setq org-agenda-with-colors t)
      (setq org-agenda-skip-deadline-prewarning-if-scheduled t)
      (setq org-agenda-start-on-weekday nil)


      (setq org-agenda-clockreport-parameter-plist
            (quote
             (:link t :maxlevel 4 :narrow 30 :tags t :tcolumns 1 :indent t :hidefiles t :fileskip0 t)))
      (setq org-agenda-dim-blocked-tasks 'invisible)
      (setq org-agenda-files
            (quote
             ("~/Dropbox/Zettelkasten/inbox.org" 
              "~/Dropbox/Zettelkasten/cal.org"
              "~/Dropbox/Zettelkasten/recipes.org"
              "~/Dropbox/Zettelkasten/ndd.org"
              "~/Dropbox/Zettelkasten/readings.org"
              "~/Dropbox/Zettelkasten/journal.org"
              "~/Dropbox/Zettelkasten/lis.org"
	            "~/Dropbox/Zettelkasten/personal.org"
              "~/Dropbox/Zettelkasten/sysadmin.org"   
"~/Dropbox/Zettelkasten/contacts.org"
              )))
      (setq org-agenda-include-diary nil)
      (setq org-agenda-inhibit-startup nil)
      (setq org-agenda-time-grid
            (quote
             ((daily weekly today remove-match)
              (900  1200 1500  1800  2100 )
              "......" "----------------")))

(setq org-agenda-custom-commands '(

                                       ("h" "Habits" tags-todo "STYLE=\"habit\""  ((org-agenda-overriding-header "Habits")))

                                       ("b" "today's habits" ((agenda ""  ((org-agenda-span 1) )) (tags-todo "STYLE=\"habit\"+SCHEDULED<=\"<today>\""       )))                                   

                                       ("k" "all untagged TODOs" tags-todo "-{.*}")  ;RETURN ANY TODO ITEMS WTIHOUT TAGS

                                       ("x" "With deadline columns" alltodo "" 
                                        ((org-agenda-overriding-columns-format "%40ITEM %SCHEDULED %DEADLINE " )
                                         (org-agenda-view-columns-initially t)
                                         (org-agenda-sorting-strategy '(timestamp-up))
                                         (org-agenda-skip-function '(org-agenda-skip-entry-if 'todo '("습관" "HOLD" "WAIT" "PROJ")) ) ))

                                       ("l" "all todos"
                                        ((agenda ""  ((org-agenda-span 1) ))
                                         (alltodo "" ((org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled 'todo '("AREA" "습관" "HOLD" "WAIT" "PROJ")) ))
                                                  (org-agenda-sorting-strategy '(priority-down)) )))

				       ("r" "stuff to read" tags-todo "read") 
                                       ("h" "all HOLD/WAIT items" todo "HOLD|WAIT")

                                       ("g" "all UNSCHEDULED NEXT|TODAY|IN-PROG" ((agenda "" ((org-agenda-span 2)  (org-agenda-clockreport-mode nil)))
                                                                                  (todo "NEXT|TODAY|IN-PROG"))
                                        ((org-agenda-todo-ignore-scheduled t)))

                                       ("u" "all UNSCHEDULED" alltodo ""                                                          


(    (org-agenda-skip-function '(org-agenda-skip-entry-if 'todo '("습관" "HOLD"  "PROJ" "AREA")) )
     (org-agenda-todo-ignore-scheduled t) )

                                        )
 ))

(setq org-habit-graph-column 80)
(setq org-habit-show-habits nil)
(setq org-habit-show-all-today nil)
(setq org-habit-show-habits-only-for-today nil)

(defvar my/org-habit-show-graphs-everywhere t
  "If non-nil, show habit graphs in all types of agenda buffers.

   Normally, habits display consistency graphs only in
   \"agenda\"-type agenda buffers, not in other types of agenda
   buffers.  Set this variable to any non-nil variable to show
   consistency graphs in all Org mode agendas.")

(defun my/org-agenda-mark-habits ()
  "Mark all habits in current agenda for graph display.

   This function enforces `my/org-habit-show-graphs-everywhere' by
   marking all habits in the current agenda as such.  When run just
   before `org-agenda-finalize' (such as by advice; unfortunately,
   `org-agenda-finalize-hook' is run too late), this has the effect
   of displaying consistency graphs for these habits.

   When `my/org-habit-show-graphs-everywhere' is nil, this function
   has no effect."
  (when (and my/org-habit-show-graphs-everywhere
             (not (get-text-property (point) 'org-series)))
    (let ((cursor (point))
          item data) 
      (while (setq cursor (next-single-property-change cursor 'org-marker))
        (setq item (get-text-property cursor 'org-marker))
        (when (and item (org-is-habit-p item)) 
          (with-current-buffer (marker-buffer item)
            (setq data (org-habit-parse-todo item))) 
          (put-text-property cursor
                             (next-single-property-change cursor 'org-marker)
                             'org-habit-p data))))))

(advice-add #'org-agenda-finalize :before #'my/org-agenda-mark-habits)

(defun my/org-checkbox-todo ()
  "Switch header TODO state to DONE when all checkboxes are ticked, to TODO otherwise"
  (let ((todo-state (org-get-todo-state)) beg end)
    (unless (not todo-state)
      (save-excursion
        (org-back-to-heading t)
        (setq beg (point))
        (end-of-line)
        (setq end (point))
        (goto-char beg)
        (if (re-search-forward "\\[\\([0-9]*%\\)\\]\\|\\[\\([0-9]*\\)/\\([0-9]*\\)\\]"
                               end t)
            (if (match-end 1)
                (if (equal (match-string 1) "100%")
                    (unless (string-equal todo-state "DONE")
                      (org-todo 'done))
                  (unless (string-equal todo-state "✶")
                    (org-todo 'todo)))
              (if (and (> (match-end 2) (match-beginning 2))
                       (equal (match-string 2) (match-string 3)))
                  (unless (string-equal todo-state "DONE")
                    (org-todo 'done))
                (unless (string-equal todo-state "✶")
                  (org-todo 'todo)))))))))

(add-hook 'org-checkbox-statistics-hook 'my/org-checkbox-todo)

(setq org-log-into-drawer t)
(use-package org-clock-split)
   (setq org-clock-continuously nil)
   (setq org-log-note-clock-out t)
   (defun insert-timestamp (prefix)
     "Insert the current date. With prefix-argument, use ISO format. With
            two prefix arguments, write out the day and month name."
     (interactive "P")
     (let ((format (cond
                    ((not prefix) "%Y.%m%d")
                    ((Equal prefix '(4)) "%Y-%m-%d-%H%M")
                    ((equal prefix '(16)) "%A, %d. %B %Y")))
           )
       (insert (format-time-string format))))

   (setq org-mru-clock-how-many 80)
   (setq org-mru-clock-keep-formatting t)
   (defun my-org-clock-select-task ()
     (interactive)
     (org-clock-select-task))

   (define-key org-mode-map (kbd "C-<f2>") #'my-org-clock-select-task)





   (setq org-drawers (quote ("PROPERTIES" "LOGBOOK")))
   (setq org-clock-into-drawer t)
   (setq org-clock-out-remove-zero-time-clocks t)
                                           ;(setq org-clock-in-resume nil)

   (setq org-clock-out-when-done t)


   (setq org-clock-report-include-clocking-task t)


   (setq org-clock-mode-line-total (quote current))

   (setq org-clock-clocked-in-display (quote both))
   (setq org-clock-clocktable-default-properties
         (quote
          (:maxlevel 4 :block today :hidefiles t :tcolumns 1 :narrow 30 :level nil :link t)))
   (setq org-clock-history-length 15)


                                           ;      (setq org-clock-in-resume t)


   (setq org-clock-in-switch-to-state nil)
   (setq org-clock-persist 'history)
                                           ;      (org-clock-persistence-insinuate)
   (setq org-clock-persist-query-resume nil)
   (setq org-clock-sound t)
   (setq org-clocktable-defaults (quote (:maxlevel 4 :scope subtree)))

(setq org-refile-allow-creating-parent-nodes (quote confirm))
(setq org-refile-use-outline-path (quote file))
(setq org-archive-location
      "~/Dropbox/Zettelkasten/journal.org::datetree/")
(setq org-archive-reversed-order nil)
(setq org-refile-use-cache t)

(defun my-org-refile-cache-clear ()
  (interactive)
  (org-refile-cache-clear))
(define-key org-mode-map (kbd "C-0 C-c C-w") 'my-org-refile-cache-clear)


(setq org-refile-targets (quote (("~/Dropbox/Zettelkasten/ndd.org" :maxlevel . 3)
                                 ("~/Dropbox/Zettelkasten/sysadmin.org" :maxlevel . 1)
                                 ("~/Dropbox/Zettelkasten/readings.org" :maxlevel . 1)
                                 ("~/Dropbox/Zettelkasten/inbox.org" :maxlevel . 2)
				     ("~/Dropbox/Zettelkasten/recipes.org" :maxlevel . 1)
                                 ("~/Dropbox/Zettelkasten/personal.org" :maxlevel . 2)
                                 ("~/Dropbox/Zettelkasten/journal.org" :maxlevel . 3)
                                 ("~/Dropbox/Zettelkasten/cal.org" :maxlevel . 2)
                                 ("~/Dropbox/Zettelkasten/lis.org" :maxlevel . 2))))

(setq org-outline-path-complete-in-steps nil) 

                                        ; Refile in a single go

                                        ;  (global-set-key (kbd "<f4>") 'org-refile)

(setq org-refile-allow-creating-parent-nodes 'confirm)

(use-package org-chef
  :defer t
  )

(use-package org-ref
     :defer t)
   (setq reftex-default-bibliography '("~/Dropbox/Zettelkasten/references.bib"))

   ;; see org-ref for use of these variables
   (setq org-ref-bibliography-notes "~/Dropbox/Zettelkasten/readings.org"
         org-ref-default-bibliography '("~/Dropbox/Zettelkasten/references.bib")
         org-ref-pdf-directory "~/Dropbox/Library/BIBTEX/")
   (setq org-ref-pdf-directory "~/Dropbox/Library/BIBTEX/")
   (setq bibtex-completion-bibliography "~/Dropbox/Zettelkasten/references.bib"

         bibtex-completion-notes-path "~/Dropbox/Zettelkasten/readings.org")
   (setq org-ref-prefer-bracket-links t)
   ;; open pdf with system pdf viewer (works on mac)
   (setq bibtex-completion-pdf-open-function
         (lambda (fpath)
           (start-process "open" "*open*" "open" fpath)))


                                           ;  (setq pdf-view-continuous nil)

                                           ;  (setq bibtex-autokey-year-title-separator "")
                                           ; (setq bibtex-autokey-titleword-length 0)


   (setq bibtex-completion-notes-template-one-file "\n* ${author} (${year}). /${title}/.\n:PROPERTIES:\n:Custom_ID: ${=key=}\n:CITATION: ${author} (${year}). /${title}/. /${journal}/, /${volume}/(${number}), ${pages}. ${publisher}. ${url}\n:DATE_ADDED: %t\n:READ_STATUS:\n:INGESTED:\n:FORMAT:\n:TYPE:\n:AREA:\n:END:")

   (setq bibtex-maintain-sorted-entries t)

   (use-package org-noter
     :ensure t
     :defer t
     :config (setq org-noter-property-doc-file "INTERLEAVE_PDF")
     (setq org-noter-property-note-location "INTERLEAVE_PAGE_NOTE") 
                                           ;       (setq org-noter-notes-window-location 'other-frame)
                                           ;      (setq org-noter-default-heading-title "p. $p$") 
     (setq org-noter-auto-save-last-location t))

   (use-package interleave 
     :defer t
     )
   (setq org-noter-always-create-frame nil)
   (setq org-noter-auto-save-last-location t)
   (setq org-noter-default-heading-title "$p$: ")
   (setq org-noter-default-notes-file-names (quote ("~/Dropbox/Zettelkasten/readings.org")))
   (setq org-noter-doc-split-fraction (quote (0.75 . 0.75)))
   (setq org-noter-insert-note-no-questions t)
   (setq org-noter-kill-frame-at-session-end nil)
   (setq org-noter-notes-search-path (quote ("~/Dropbox/Zettelkasten/")))
   (setq org-noter-notes-window-location (quote horizontal-split))
(setq org-noter-insert-selected-text-inside-note t)

(server-start)
  (require 'org-protocol)
  (require 'org-protocol-capture-html)
  (setq org-protocol-default-template-key "w")

  (setq org-capture-templates
        '(
          ("a" "current activity" entry (file+olp+datetree "~/Dropbox/Zettelkasten/journal.org") "** %? \n" :clock-in t :clock-keep t :kill-buffer nil ) 

          ("c" "calendar" entry (file "~/Dropbox/Zettelkasten/cal.org") "* %^{EVENT}\n%^t\n%a\n%?")

          ("d" "download" table-line (id "reading") "|%^{Author} | %^{Title} | %^{Format}|"  )
          ("e" "emacs log" item (id "config") "%U %a %?" :prepend t) 

          ("f" "Anki basic" entry (file+headline "~/Dropbox/Zettelkasten/anki.org" "Dispatch Shelf") "* %<%H:%M>   \n:PROPERTIES:\n:ANKI_NOTE_TYPE: Basic (and reversed card)\n:ANKI_DECK: Default\n:END:\n** Front\n%^{Front}\n** Back\n%^{Back}%?")

          ("F" "Anki cloze" entry (file+headline "~/Dropbox/Zettelkasten/anki.org" "Dispatch Shelf") "* %<%H:%M>   \n:PROPERTIES:\n:ANKI_NOTE_TYPE: Cloze\n:ANKI_DECK: Default\n:END:\n** Text\n%^{Front}%?\n** Extra")

          ("j" "journal" entry (file+olp+datetree "~/Dropbox/Zettelkasten/journal.org") "** journal :journal: \n%U  \n%?\n\n"   :clock-in t :clock-resume t :clock-keep nil :kill-buffer nil :append t) 
          ("l" "look up" item (id "5br4n6815pi0") "[ ] %? %U %a" :prepend nil)
          ("m" "meditation" table-line (id "meditation") "|%u | %^{Time} | %^{Notes}|" :table-line-pos "II-1" )

          ("t" "todo" entry (file "~/Dropbox/Zettelkasten/inbox.org") "* TODO %? \nSCHEDULED: %t\n%a\n" :prepend nil)
          ("s" "to buy" item (id "shopping") "[ ] %?" :prepend t) 
          ("z" "zettel" entry (file "~/Dropbox/Zettelkasten/zettels.org") "* %^{TOPIC}\n%U\n %? \n%a\n\n\n" :prepend nil :unarrowed t)

          ("w" "org-protocol" entry (file "~/Dropbox/Zettelkasten/inbox.org")
           "* %a \nSCHEDULED: %t %?\n%:initial" )
 ("x" "org-protocol" entry (file "~/Dropbox/Zettelkasten/inbox.org")
           "* TODO %? \nSCHEDULED: %t\n%a\n\n%:initial" )

("y" "org-protocol" item (id "resources")
           "[ ] %a %U %:initial" )

          ))


  (defun my-org-capture-place-template-dont-delete-windows (oldfun args)
    (cl-letf (((symbol-function 'delete-other-windows) 'ignore))
      (apply oldfun args)))

                                          ;this prevents org-capture from replacing any windows. it just adds.

;   (setq org-id-link-to-org-use-id (quote create-if-interactive))
   (setq org-id-link-to-org-use-id (quote create-if-interactive))

   (setq org-id-method (quote org))
   (setq org-return-follows-link t)
   (setq org-goto-interface (quote outline-path-completion))
                                           ;   (add-hook 'org-mode-hook (lambda () (org-sticky-header-mode 1)))


   (setq global-visible-mark-mode t)

(setq org-modules
      (quote
       (ol-bibtex ol-eww org-habit org-id org-protocol ol-w3m ol-bookmark org-checklist org-depend org-registry)))
(require 'cl) 
(setq org-babel-load-languages '((emacs-lisp . t)
                                 (css . t)
                                 (latex . t)
                                 ))
(setq org-edit-src-content-indentation 3)
                                        ;   If non-nil, the effect of TAB in a code block is as if it were issued in the language major mode buffer.
(setq org-src-tab-acts-natively t)
(add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))
(setq org-attach-id-dir "/home/betsy/Dropbox/Zettelkasten/attachments")
(setq org-attach-method (quote ln))
(setq org-attach-store-link-p t)
(setq org-remove-highlights-with-change nil)
(setq org-reverse-note-order nil)
(setq org-columns-default-format "%50ITEM %TODO %3PRIORITY %TAGS")
(setq org-columns-default-format-for-agenda "%50ITEM %TODO %3PRIORITY %TAGS %CLOCKSUM")
(setq org-ctrl-k-protect-subtree (quote error))
(setq org-directory "~/Dropbox/Zettelkasten")
(setq org-ellipsis " ⬎ ")
(setq org-export-with-author nil)
(setq org-export-with-toc nil)
(setq org-export-initial-scope 'subtree)
(setq org-export-with-section-numbers nil)

(setq org-complete-tags-always-offer-all-agenda-tags nil)
(setq org-tags-match-list-sublevels (quote indented))
(setq tags-add-tables nil)
(setq org-fast-tag-selection-single-key t)
(setq org-use-fast-tag-selection (quote auto))

(setq org-tag-persistent-alist '( 
                                 (:startgroup)
                                 ("ndd" . ?n)
                                 ("sysadmin" . ?s)
                                 ("home" . ?h)
                                 ("lis" . ?l)
                                 ("mentat" . ?m)
                                 ("editing" . ?e)
                                 (:endgroup)



                                 (:startgroup)
                                 ("admin" . ?a)
                                 ("focus" . ?f)
                                 (:endgroup)
                                 (:startgroup)
                                 ("email")
                                 ("discovery" . ?d)
                                 ("intake" . ?i)
                                 ("integrate")
                                 (:endgroup)

                                 (:startgrouptag)
                                 ("lis" . ?l)
                                 (:grouptags)

                                 ("csi")
                                 ("job")
                                 (:endgrouptag)

                                 (:startgrouptag)
                                 ("intake")
                                 (:grouptags)
                                 ("listen")
                                 ("read" . ?r)
                                 ("watch" . ?w)
                                 (:endgrouptag)

                                 (:startgrouptag)
                                 ("home" . ?h)
                                 (:grouptags)
                              ("habit")
                                 ("cooking")
                                 ("cleaning")
                                 (:endgrouptag)



                                 ))

(setq org-tag-faces '(
                      ("ndd" :inherit org-tag :foreground "yellow green")
                      ("sysadmin" :inherit org-tag :foreground "yellow green")
                      ("lis" :inherit org-tag :foreground "yellow green")
                      ("mentat" :inherit org-tag :foreground "yellow green")
                      ("editing" :inherit org-tag :foreground "yellow green")
                      ("self" :inherit org-tag :foreground "yellow green")
                      ("home" :inherit org-tag :foreground "yellow green")
                                        ;group2
                      ("journal" :inherit org-tag :foreground "dark orange")
                      ("job" :inherit org-tag :foreground "dark orange")
                      ("csi" :inherit org-tag :foreground "dark orange")
		       ("read" :inherit org-tag :foreground "dodger blue")

                      ))

(setq org-todo-keywords
      (quote
       ((sequence "TODO(t)" "NEXT(n)" "IN-PROG(i)" "WAIT(w)" "|" "DONE(d)"  "x(c)" )
        (type "AREA(a)"  "습관(h)"   "HOLD(l)"  "|" "DONE(d)")     )))


(setq org-log-done (quote time))
(setq org-enforce-todo-checkbox-dependencies nil)
(setq org-enforce-todo-dependencies t)

(defhydra hydra-zoom (:color red)  "zoom"
  ("=" text-scale-increase "in")
  ("-" text-scale-decrease "out")
  ("0" (text-scale-adjust 0) "reset")
  ("o" (other-window) "other window")
  ("q" nil "quit" :color blue))

(global-set-key (kbd "C-=") 'hydra-zoom/body)

(use-package deft
  :ensure t)
(setq deft-directory "~/Dropbox/Zettelkasten/")
(setq deft-default-extension "org")
(setq deft-time-format " %b-%Y %H:%M")
(setq deft-use-filename-as-title t)
(setq deft-new-file-format "%Y%b%d")
(setq deft-text-mode 'org-mode)
(setq deft-file-naming-rules '((noslash . "-")
                               (nospace . "-")
                               (case-fn . downcase))) 
(setq deft-recursive t)
(setq deft-extensions '("org" "txt" "emacs" "bib" "ledger" "el" "tex"))
(setq deft-auto-save-interval 5.0)
(add-hook 'after-init-hook 'deft)
(add-hook 'deft-mode-hook #'visual-line-mode)

(use-package helm
  :ensure t
  :config (helm-mode 1))
(setq history-delete-duplicates t)
(setq helm-M-x-always-save-history t)
(setq helm-M-x-reverse-history nil)
(setq helm-bibtex-full-frame nil)
(setq helm-display-buffer-default-height 22)
(setq helm-full-frame nil)
(setq helm-help-full-frame nil)
(setq helm-move-to-line-cycle-in-source nil)
(setq helm-org-rifle-show-path nil)
                                        ;(setq helm-split-window-inside-p nil)

(setq bookmark-save-flag 1)
(use-package ido
  :ensure t
  :defer t
  )
(ido-mode t)

(setq ido-file-extensions-order '(".org" ".txt" ".emacs" ".el" ".ini" ".cfg" ".cnf"))

(use-package projectile
  :ensure t
  )
(use-package helm-projectile
  :ensure t
  )

(projectile-mode +1)
(setq zoom-mode t)

(defun size-callback ()
  (cond ((> (frame-pixel-width) 1280) '(90 . 0.75))
        (t                            '(0.5 . 0.5))))

(custom-set-variables
 '(zoom-size 'size-callback))

(custom-set-variables
 '(zoom-ignored-major-modes '(dired-mode markdown-mode))
 '(zoom-ignored-buffer-names '("zoom.el" "init.el"))
 '(zoom-ignored-buffer-name-regexps '("^*calc"))
 '(zoom-ignore-predicates '((lambda () (> (count-lines (point-min) (point-max)) 20)))))

(custom-set-variables
 '(temp-buffer-resize-mode t))

                                        ;If you want to mark a folder manually as a project just create an empty .projectile file in it.

;   (eyebrowse-mode t)
                                        ;undo and redo changes in window configuration eg go to previous buffer 


(defun transpose-windows ()
  (interactive)
  (let ((this-buffer (window-buffer (selected-window)))
        (other-buffer (prog2
                          (other-window +1)
                          (window-buffer (selected-window))
                        (other-window -1))))
    (switch-to-buffer other-buffer)
    (switch-to-buffer-other-window this-buffer)
    (other-window -1)))



(setq frame-title-format (list (format "%s %%S: %%j " (system-name))
                               '(buffer-file-name "%f" (dired-directory dired-directory "%b"))
                               ))

(defun window-split-toggle ()
  "Toggle between horizontal and vertical split with two windows."
  (interactive)
  (if (> (length (window-list)) 2)
      (error "Can't toggle with more than 2 windows!")
    (let ((func (if (window-full-height-p)
                    #'split-window-vertically
                  #'split-window-horizontally)))
      (delete-other-windows)
      (funcall func)
      (save-selected-window
        (other-window 1)
        (switch-to-buffer (other-buffer))))))

(eval-after-load "helm"
  '(define-key helm-map (kbd "C-'") 'ace-jump-helm-line))

(setq debug-on-error nil)

(defun test-emacs ()
  "Test if emacs starts correctly."
  (interactive)
  (if (eq last-command this-command)
      (save-buffers-kill-terminal)
    (require 'async)
    (async-start
     (lambda () (shell-command-to-string
                 "emacs --batch --eval \"
(condition-case e
    (progn
      (load \\\"~/.emacs.d/init.el\\\")
      (message \\\"-OK-\\\"))
  (error
   (message \\\"ERROR!\\\")
   (signal (car e) (cdr e))))\""))
     `(lambda (output)
        (if (string-match "-OK-" output)
            (when ,(called-interactively-p 'any)
              (message "All is well"))
          (switch-to-buffer-other-window "*startup error*")
          (delete-region (point-min) (point-max))
          (insert output)
          (search-backward "ERROR!"))))))

(defun my-set-eww-buffer-title ()
  (let* ((title (plist-get eww-data :title))
         (url   (plist-get eww-data :url))
         (result (concat "*eww-" 
                         (or title Norton Guide reader     
                             (if (string-match "://" url)
                                 (substring url (match-beginning 0))
                               url)) "*")))
    (rename-buffer result t)))

(add-hook 'eww-after-render-hook 'my-set-eww-buffer-title)
(add-hook 'eww-after-render-hook 'visual-fill-column-mode)
(add-hook 'eww-after-render-hook 'visual-line-mode)


(eval-after-load 'shr  
  '(progn (setq shr-width -1)  
          (defun shr-fill-text (text) text)  
          (defun shr-fill-lines (start end) nil)  
          (defun shr-fill-line () nil)))

(setq browse-url-browser-function (quote browse-url-default-browser))
(setq browse-url-firefox-new-window-is-tab t)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(setq inhibit-eol-conversion nil)

(add-to-list 'file-coding-system-alist '("\\.tex" . utf-8-unix) )
(add-to-list 'file-coding-system-alist '("\\.txt" . utf-8-unix) )
(add-to-list 'file-coding-system-alist '("\\.el" . utf-8-unix) )
(add-to-list 'file-coding-system-alist '("\\.scratch" . utf-8-unix) )
(add-to-list 'file-coding-system-alist '("user_prefs" . utf-8-unix) )

(add-to-list 'process-coding-system-alist '("\\.txt" . utf-8-unix) )

(add-to-list 'network-coding-system-alist '("\\.txt" . utf-8-unix) )

(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(setq-default buffer-file-coding-system 'utf-8-unix)

;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;; mnemonic for utf-8 is "U", which is defined in the mule.el
(setq eol-mnemonic-dos ":CRLF")
(setq eol-mnemonic-mac ":CR")
(setq eol-mnemonic-undecided ":?")
(setq eol-mnemonic-unix ":LF")

(defalias 'read-buffer-file-coding-system 'lawlist-read-buffer-file-coding-system)
(defun lawlist-read-buffer-file-coding-system ()
  (let* ((bcss (find-coding-systems-region (point-min) (point-max)))
         (css-table
          (unless (equal bcss '(undecided))
            (append '("dos" "unix" "mac")
                    (delq nil (mapcar (lambda (cs)
                                        (if (memq (coding-system-base cs) bcss)
                                            (symbol-name cs)))
                                      coding-system-list)))))
         (combined-table
          (if css-table
              (completion-table-in-turn css-table coding-system-alist)
            coding-system-alist))
         (auto-cs
          (unless find-file-literally
            (save-excursion
              (save-restriction
                (widen)
                (goto-char (point-min))
                (funcall set-auto-coding-function
                         (or buffer-file-name "") (buffer-size))))))
         (preferred 'utf-8-unix)
         (default 'utf-8-unix)
         (completion-ignore-case t)
         (completion-pcm--delim-wild-regex ; Let "u8" complete to "utf-8".
          (concat completion-pcm--delim-wild-regex
                  "\\|\\([[:alpha:]]\\)[[:digit:]]"))
         (cs (completing-read
              (format "Coding system for saving file (default %s): " default)
              combined-table
              nil t nil 'coding-system-history
              (if default (symbol-name default)))))
    (unless (zerop (length cs)) (intern cs))))

(use-package magit
  :ensure t
  :init (progn
          (setq magit-repository-directories '("~/Dropbox/" ))))

(setq auto-save-default t)
(setq auto-save-visited-file-name t)
(setq auto-save-visited-mode t)
(setq dired-auto-revert-buffer (quote dired-directory-changed-p))
(setq auto-save-interval 10)
(setq auto-save-timeout 5)
(setq global-auto-revert-mode t)

(pdf-tools-install)

(add-hook 'pdf-view-mode-hook 'pdf-view-restore-mode)

(use-package pdf-tools :defer t)

(use-package multiple-cursors
     :ensure t
     :bind (("C->" . mc/mark-all-like-this)
	 ("C-<" . mc/mark-next-like-this)
("C-c 1" . mc/insert-numbers)
("C-S-'" . mc/edit-lines)
("C-M-." . mc/mark-pop)
            ("C-S-<mouse-1>" . mc/add-cursor-on-click)))

      (use-package smartparens
        :ensure t
        :defer t
        :init
        (show-smartparens-global-mode 1))
      (smartparens-global-mode 1)
      (setq show-paren-style 'expression)

      (sp-local-pair 'org-mode "/" "/" :actions '(wrap))
      (sp-local-pair 'org-mode "_" "_" :actions '(wrap))
      (sp-local-pair 'org-mode "*" "*" :actions '(wrap))
      (sp-local-pair 'org-mode "+" "+" :actions '(wrap))
      (sp-local-pair 'org-mode "~" "~" :actions '(wrap))
      (sp-local-pair 'org-mode "=" "=" :actions '(wrap))
      (sp-local-pair 'org-mode "-" "-" :actions '(wrap))
      (sp-pair "'" nil :actions :rem)


      (setq blink-matching-paren-dont-ignore-comments nil)

                                              ;autocompletion
      (use-package company
        :ensure t
        :init (global-company-mode)
        :config (company-mode 1))     

                                              ;spellcheck
      (use-package flyspell-correct-helm)

(setq select-enable-clipboard t
      x-select-enable-primary nil)
(use-package anki-editor
  :after org
  :hook (org-capture-after-finalize . anki-editor-reset-cloze-number) ; Reset cloze-number after each capture.
  :config
  (setq anki-editor-create-decks t)
  (defun anki-editor-cloze-region-auto-incr (&optional arg)
    "Cloze region without hint and increase card number."
    (interactive)
    (anki-editor-cloze-region my-anki-editor-cloze-number "")
    (setq my-anki-editor-cloze-number (1+ my-anki-editor-cloze-number))
    (forward-sexp))
  (defun anki-editor-cloze-region-dont-incr (&optional arg)
    "Cloze region without hint using the previous card number."
    (interactive)
    (anki-editor-cloze-region (1- my-anki-editor-cloze-number) "")
    (forward-sexp))
  (defun anki-editor-reset-cloze-number (&optional arg)
    "Reset cloze number to ARG or 1"
    (interactive)
    (setq my-anki-editor-cloze-number (or arg 1)))
  (defun anki-editor-push-tree ()
    "Push all notes under a tree."
    (interactive)
    (anki-editor-push-notes '(4))
    (anki-editor-reset-cloze-number))
  ;; Initialize
  (anki-editor-reset-cloze-number)
  )

(use-package org-alert)
   (use-package chronos)
(use-package helm-chronos)

(use-package openwith
  :defer t
  :config (progn
            (when (require 'openwith nil 'noerror)
              (setq openwith-associations
                    (list
                                        ;                   (list (openwith-make-extension-regexp
                                        ;                           '("mpg" "mpeg" "mp3" "mp4"
                                        ;                           "avi" "wmv" "wav" "mov" "flv"
                                        ;                          "ogm" "ogg" "mkv"))
                                        ;                      "audacious"
                                        ;                     '(file))
                                        ;                    (list (openwith-make-extension-regexp
                                        ;                          '("xbm" "pbm" "pgm" "ppm" "pnm"
                                        ;                           "png" "bmp" "tif" "jpeg" "jpg"))
                                        ;                       "gpicview"
                                        ;                      '(file))
                                        ;                       (list (openwith-make-extension-regexp
                                        ;                             '("pdf"))
                                        ;                           "zathura"
                                        ;                          '(file))
                     (list (openwith-make-extension-regexp
                            '("doc" "docx" "ppt" "xls" "xlsx" "pptx"))
                           "LibreOffice"
                           '(file))

                     ))
              (openwith-mode 1)))
  :ensure t)
(add-to-list  'mm-inhibit-file-name-handlers 'openwith-file-handler)

(use-package org-roam)

        (setq org-roam-capture-templates '(("d" "default" plain #'org-roam--capture-get-point "* ${title}\n:PROPERTIES:\n:VISIBILITY: all\n:END:\n%?" :file-name "%(format-time-string \"%Y%m%d-%H%M_${slug}\" (current-time) )"
      "#+title: ${title}" :unnarrowed t :kill-buffer t)))


        (setq org-roam-directory "~/Dropbox/Zettelkasten/Zettels/")

   (defun my/org-roam--title-to-slug (title) ;;<< changed the name
     "Convert TITLE to a filename-suitable slug."
     (cl-flet* ((nonspacing-mark-p (char)
                                   (eq 'Mn (get-char-code-property char 'general-category)))
                (strip-nonspacing-marks (s)
                                        (apply #'string (seq-remove #'nonspacing-mark-p
                                                                    (ucs-normalize-NFD-string s))))
                (cl-replace (title pair)
                            (replace-regexp-in-string (car pair) (cdr pair) title)))
       (let* ((pairs `(("[^[:alnum:][:digit:]]" . "-")  ;; convert anything not alphanumeric << nobiot underscore to hyphen
                       ("__*" . "-")  ;; remove sequential underscores << nobiot underscore to hyphen
                       ("^_" . "")  ;; remove starting underscore
                       ("_$" . "")))  ;; remove ending underscore
              (slug (-reduce-from #'cl-replace (strip-nonspacing-marks title) pairs)))
         (downcase slug))))


(setq org-roam-title-to-slug-function 'my/org-roam--title-to-slug)

(global-unset-key (kbd "M-o"))
         (global-set-key (kbd "M-o") 'other-window)

         (global-unset-key (kbd "C-z"))
         (global-set-key (kbd "M-n") 'toggle-input-method)
         (global-set-key (kbd "C-<f1>") 'set-input-method)

                                                 ;   (global-unset-key (kbd "M-c"))
                                                 (global-unset-key (kbd "C-v "))

                                                 ; (define-key org-mode-map (kbd "C-a") 'org-beginning-of-line)
         (define-key org-mode-map (kbd "C-a") 'org-beginning-of-line)
         (define-key org-mode-map (kbd "C-e") 'org-end-of-line)
         (define-key org-mode-map (kbd "C-y") 'yank)
         (global-unset-key (kbd "S-SPC"))
         (global-set-key (kbd "C-c C-x C-o") 'org-clock-out)
         (global-set-key (kbd "C-c <f2>") 'org-clock-out)

         (global-set-key (kbd "<f1>") 'org-capture)
         (define-key dired-mode-map (kbd "<f1>") 'org-capture)
        ; (define-key dired-mode-map (kbd "M-z") 'ace-jump-mode)
       ;  (define-key dired-mode-map (kbd "<Hangul>-z") 'ace-jump-mode)
      (global-set-key (kbd "C-c C-x C-j") 'org-clock-goto)
         (bind-keys 
                                                 ;("C-+"   . text-scale-increase)
          ("C-c p" . org-set-property)
("C-y" . yank)                                  ;   a      ("C--"   . text-scale-decrease)
          ("C-c l" . org-store-link)
      ("M-<f3>" . sl-store-link)
        ("C-c <f3>" . sl-insert-link)

       ("M-z" . helm-swoop-without-pre-input)
;          ("<Hangul>-z" . ace-jump-mode)
                                           ;                 ("C-c k" . toggle-korean-input-method)
          ("C-."   . org-todo)
                                                 ;              ("C-x /" . shrink-window-horizontally)
          ("C-x ." . org-archive-subtree-default)
                                                 ;       ("C-c n" . org-schedule)

          ("M-="   . count-words)
          ("M-x"   . helm-M-x)
   ("<Hangul> x" . helm-M-x)
          ("C-c b" . list-bookmarks)
                                                 ;    ("C-a" . org-beginning-of-line)
               ("M-<f2>" . org-mru-clock-in)                                  ;          ([menu] . toggle-input-method)
                ("M-<f4>" . org-time-stamp-inactive)
                       ("M-<f5>" . org-time-stamp)      
                                              ;   ("C-e" . org-end-of-line)
          ("C-k" . org-kill-line)
                                                 ;              ("C-<kp-6>" . xah-select-block)
          ("C-x C-b" . bufler-list)                              ;   ("C-x j" . helm-org-in-buffer-headings)
          ("C-x b" . bufler-switch-buffer)
          ("C-c i" . insert-timestamp)
                                                 ;  ("C-c a" . helm-org-agenda-files-headings)
          ("C-c C-x C-r" . org-clock-report)
      ("C-c <f1>" . org-roam-capture)
          ("M-[" . org-metaleft)
                    ("M-]" . org-metaright)
                    ("M-{" . org-shiftmetaleft)
                    ("M-}" . org-shiftmetaright)
          ([f1] . org-capture)
          ([f2] . org-clock-in)
      ;    ([f3] . frog-jump-buffer)           
        ([f3] . helm-buffers-list)           
          ([f4] . org-refile)
          ([f5] . helm-projectile)
          ([f6] . helm-bibtex-with-local-bibliography)
          ([f7] . org-agenda)
          ([f8] . deft)
          ([f9] . helm-swoop-without-pre-input)
          ([f10] . org-narrow-to-subtree)
          ([f11] . org-id-goto)
          ([f12] . bury-buffer)

          )



                                                 ;   (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
                                                 ;  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

         (define-key key-translation-map (kbd "C-c <up>") (kbd "🡑"))
         (define-key key-translation-map (kbd "C-c <down>") (kbd "🡓"))
         (define-key key-translation-map (kbd "C-c =") (kbd "≠"))
         (define-key key-translation-map (kbd "C-c <right>") (kbd "→"))
         (define-key key-translation-map (kbd "C-c m") (kbd "—"))
         (define-key key-translation-map (kbd "C-_") (kbd "–"))

         (define-key key-translation-map (kbd "C-c d") (kbd "Δ"))
         (define-key key-translation-map (kbd "C-c C-<right>")  (kbd "🡆"))
         (define-key key-translation-map (kbd "C-c z")  (kbd "∴"))

(use-package doom-themes
   :ensure t
     :config
     ;; Global settings (defaults)
     (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
           doom-themes-enable-italic t) ; if nil, italics is universally disabled
     (load-theme 'doom-one t)

     ;; Enable flashing mode-line on errors
   ;  (doom-themes-visual-bell-config)

     ;; Enable custom neotree theme (all-the-icons must be installed!)
     (doom-themes-neotree-config)
     ;; or for treemacs users
     (setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
     (doom-themes-treemacs-config)

     ;; Corrects (and improves) org-mode's native fontification.
    (doom-themes-org-config)
   )

   (find-file "~/Dropbox/emacs/config-pbp.org")
(find-file "~/Dropbox/Zettelkasten/inbox.org")
   (find-file "~/.emacs")

(setq visible-bell nil)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq inhibit-startup-screen t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq initial-major-mode 'org-mode)

(delete-selection-mode) ;allows to delete selected text by typing

(fset 'yes-or-no-p 'y-or-n-p)

(setq confirm-kill-emacs (quote y-or-n-p))


(set-fringe-mode '(100 . 100))
(setq ring-bell-function (quote ignore))

(defvar symbola-font (if (eq system-type 'gnu/linux)
                            (font-spec :name "Symbola" :size 14.5)
                          "Symbola-14"))


    (set-fontset-font "fontset-default" '(#x2000 . #x206F)
                        '("Symbola" . "unicode-bmp" ))

    (set-fontset-font "fontset-default" '(#x2190 . #x21FF)
                        '("Symbola" . "unicode-bmp" ))

   (set-fontset-font "fontset-default" '(#x2200 . #x22FF)
                        '("Symbola" . "unicode-bmp" ))

 (set-fontset-font "fontset-default" '(#x25A0 . #x25FF)
                        '("Symbola" . "unicode-bmp" ))

     (set-fontset-font "fontset-default" '(#x2600 . #x26FF)
                        '("Symbola" . "unicode-bmp" ))
    (set-fontset-font "fontset-default" '(#x2700 . #x27BF)
                        '("Symbola" . "unicode-bmp" ))

                                                  ;  (set-fontset-font "fontset-default" '(#x2091 . #x21ff)     
                                              ;                   (font-spec :size 30)) 

;https://www.reddit.com/r/emacs/comments/8tz1r0/how_to_set_font_according_to_languages_that_i/e1bjce6?utm_source=share&utm_medium=web2x&context=3
(when (fboundp #'set-fontset-font)
  (set-fontset-font t 'korean-ksc5601	
                    ;; Noto Sans CJK: https://www.google.com/get/noto/help/cjk/
                    (font-spec :family "Nanum Gothic Coding")))
(dolist (item '(("Nanum Gothic Coding" . 1.0)))
  (add-to-list 'face-font-rescale-alist item))

      (setq use-default-font-for-symbols nil)

      (use-package unicode-fonts
        :ensure t
        :defer t
        :init (unicode-fonts-setup))
(setq fill-column 70)

      (setq global-visual-fill-column-mode t)
      (setq global-visual-line-mode t)


      (eval-after-load "flyspell"
        '(define-key flyspell-mode-map (kbd "C-.") nil))
