(eval-after-load "flyspell"
        '(define-key flyspell-mode-map (kbd "C-.") nil))



      (global-set-key (kbd "C-x |") 'toggle-window-split)

      (global-unset-key (kbd "C-z"))     
      (global-unset-key (kbd "M-c"))

      (global-unset-key (kbd "S-SPC"))
      (bind-keys ("C-+"   . text-scale-increase)
                 ("C--"   . text-scale-decrease)
                 ("C-c l" . org-store-link)
;                 ("C-c k" . toggle-korean-input-method)
                 ("C-."   . org-todo)
                 ("C-x /" . shrink-window-horizontally)
                 ("C-x ." . org-archive-subtree-default)
                 ("C-c n" . org-schedule)
                 ("M-="   . count-words)
                 ("M-x"   . helm-M-x)

                 ("C-c b" . list-bookmarks)
                 ("C-a" . org-beginning-of-line)
                 ("C-e" . org-end-of-line)
                 ("C-k" . org-kill-line)
                 ("C-<kp-6>" . xah-select-block)
              ;   ("C-x j" . helm-org-in-buffer-headings)
                 ("C-c i" . insert-timestamp)
               ;  ("C-c a" . helm-org-agenda-files-headings)
                 ("C-c C-x C-r" . org-clock-report)
                 ([f1] . org-capture)
                 ([f2] . org-clock-in)
                 ([f3] . helm-buffers-list)           
                 ([f4] . org-refile)
                 ([f5] . helm-projectile)
                 ([f6] . helm-bibtex-with-local-bibliography)
                 ([f7] . org-agenda)
                 ([f8] . deft)
                 ([f9] . helm-org-rifle-current-buffer)
                 ([f10] . org-narrow-to-subtree)
                 ([f11] . kill-buffer)
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

(diredp-toggle-find-file-reuse-dir 1)
   (setq bookmark-default-file "~/Dropbox/emacs/bookmarks")
   (setq bookmark-save-flag 1)
   (use-package ido
     :ensure t
     :defer t
     )
   (ido-mode t)

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
   (setq deft-recursive nil)
   (setq deft-extensions '("org" "txt" "emacs" "bib" "ledger" "el" "tex"))
   (setq deft-auto-save-interval 1.0)
   (add-hook 'after-init-hook 'deft)



   (add-hook 'deft-mode-hook #'visual-line-mode)



   (use-package helm
     :ensure t
     :config (helm-mode 1))


 (setq helm-M-x-always-save-history t)
 (setq helm-M-x-reverse-history nil)
 (setq helm-bibtex-full-frame nil)
 (setq helm-display-buffer-default-height 22)
(setq helm-full-frame nil)
 (setq helm-help-full-frame nil)
 (setq helm-move-to-line-cycle-in-source nil)
 (setq helm-org-rifle-show-path nil)
 (setq helm-split-window-inside-p t)

   (use-package projectile
     :ensure t
     )
   (use-package helm-projectile
     :ensure t
     )

   (projectile-mode +1)

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

;undo and redo changes in window configuration eg go to previous buffer 
   (winner-mode 1)

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

(setq org-id-link-to-org-use-id (quote create-if-interactive))
    (setq org-id-method (quote org))
    (setq org-return-follows-link t)
(setq org-goto-interface (quote outline-path-completion))

(setq org-modules
      (quote
       (ol-bibtex ol-eww org-habit org-id org-protocol ol-w3m ol-bookmark org-checklist org-depend org-registry)))
(require 'cl) 
(setq org-babel-load-languages '((emacs-lisp . t)
                                 (css . t)))
(setq org-edit-src-content-indentation 3)
                                        ;   If non-nil, the effect of TAB in a code block is as if it were issued in the language major mode buffer.
(setq org-src-tab-acts-natively t)
(add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))
(setq org-attach-id-dir "/home/betsy/Dropbox/Zettelkasten/attachments")
(setq org-attach-method (quote ln))
(setq org-attach-store-link-p t)
(setq org-remove-highlights-with-change nil)
(setq org-reverse-note-order t)
(setq org-columns-default-format "%50ITEM %TODO %3PRIORITY %TAGS")
(setq org-columns-default-format-for-agenda "%50ITEM %TODO %3PRIORITY %TAGS %CLOCKSUM")
(setq org-ctrl-k-protect-subtree (quote error))
(setq org-directory "~/Dropbox/Zettelkasten")
(setq org-ellipsis " ⬎ ")
    (setq org-export-with-author nil)
(setq org-export-with-toc nil)

(setq org-enforce-todo-dependencies t)

       (setq  org-agenda-sorting-strategy 
              '((agenda time-up)
                (todo priority-down category-keep)
                (tags priority-down category-keep)
                (search category-keep)))


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
             (:link t :maxlevel 4 :narrow 25 :tcolumns 1 :indent t :hidefiles t :fileskip0 t)))
      (setq org-agenda-dim-blocked-tasks t)
      (setq org-agenda-files
            (quote
             ("~/Dropbox/Zettelkasten/inbox.org" "~/Dropbox/Zettelkasten/cal.org" "~/Dropbox/Zettelkasten/journal.org" "~/Dropbox/Zettelkasten/habits.org"   "~/Dropbox/Zettelkasten/projects.org" )))
      (setq org-agenda-include-diary t)
      (setq org-agenda-inhibit-startup nil)
      (setq org-agenda-time-grid
            (quote
             ((daily weekly today remove-match)
              (900  1200 1500  1800  2100 )
              "......" "----------------")))




       (setq org-stuck-projects '("/TODO" ("NEXT") nil ""))
       (setq org-log-note-clock-out nil)



       (setq org-stuck-projects '("/TODO" ("NEXT") nil ""))
       (setq org-log-note-clock-out nil)

       (setq org-agenda-custom-commands


;RETURN ALL NEXT & IN PROGRESS EXCEPT FOR THOSE TAGGED LIS 
             '(

               ("b" "Timeblocking"
                ((agenda "" 
                         ((org-agenda-span 1)
                          (org-agenda-clockreport-mode nil)
                          ))
                 (todo "⟐"))
                )

;RETURN ANY TODO ITEMS WTIHOUT TAGS
               ("k" "all untagged TODOs" tags-todo "-{.*}")

  ;RETURN 2-DAY AGENDA WITH ALL UNSCHEDULED ADMIN ITEMS
             ("d" "2d agenda + undated ADMIN tasks" 
                ((agenda "" 
                         ((org-agenda-span 2)
                          (org-agenda-clockreport-mode nil)
                          (org-agenda-time-grid nil)))
                 (tags-todo "admin|email|browser"))

                ((org-agenda-todo-ignore-scheduled t)))

        ("f" "2d agenda + undated FOCUS tasks" 
                ((agenda "" 
                         ((org-agenda-span 2)
                          (org-agenda-clockreport-mode nil)
                          (org-agenda-time-grid nil)))

(tags-todo "focus")

)

                ((org-agenda-todo-ignore-scheduled t)))


        ("h" "2d agenda + undated HOME & misc tasks" 
                ((agenda "" 
                         ((org-agenda-span 2)
                          (org-agenda-clockreport-mode nil)
                          (org-agenda-time-grid nil)))
           (tags-todo "home")
(tags-todo "-focus-admin-home-lis")
)

                ((org-agenda-todo-ignore-scheduled t)))



;RETURN ALL LIS TASKS
  ("l" "lis"
                ((agenda "" 
                         ((org-agenda-span 1)
                          
                          ))
                 (tags-todo "lis"  ))
                ((org-agenda-todo-ignore-with-date t)))
  




))

(setq org-complete-tags-always-offer-all-agenda-tags nil)
(setq org-tags-match-list-sublevels (quote indented))
(setq tags-add-tables nil)
(setq org-fast-tag-selection-single-key t)
(setq org-use-fast-tag-selection (quote auto))

(setq org-tag-alist '( ("lis" . ?l)
                       (:startgroup)
                       ("focus" . ?f)
                       ("admin" . ?a)
                       ("home" . ?h)
                       (:endgroup)
                       (:startgroup)
                       ("CONSUME")
                       (:grouptags)
                       ("read")
                       ("watch")
                       ("listen")
                       (:endgroup)
                  (:startgroup)
                       ("CREATE")
                       (:grouptags)
                       ("write")
                       ("notes")

                       (:endgroup)
                       (:startgroup)



                       ("email" . ?e)
                       ("browser" . ?b)

                       ("kitchen" . ?k)
                       ("laundry" . ?d)
                       ("cleaning" . ?c)
                       (:endgroup)
                       ))

(setq org-todo-keywords
          (quote
           ((sequence "TODO(t)" "NEXT(n)" "IN-PROGRESS(i)" "WAIT(w)" "|" "DONE(d)" "x(c)")
            (sequence "HOLD(h)" "HABIT(r)" "PROJ(p)" "|" "DONE(d)"))))

(setq org-log-done (quote time))
    (setq org-enforce-todo-checkbox-dependencies nil)

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

(setq org-list-demote-modify-bullet
            '(("+" . "-") ("-" . "+") ))
      (setq org-list-allow-alphabetical t)
      (setq org-list-indent-offset 1)
      (setq org-list=description-max-indent 5)
      (setq org-bullets-bullet-list (quote ( "⚫" "⯌"   "○"   "◆"  "☆"            "⚬" )))
;   "•"    "‣"    "⏵""▷" "⧽"  "♦""◇"    "◉" "⬤"〇⭕ "⨀"  "★" "⬤" "ᐅ"  "〇"     "⟐"     "⚬" )))
;○◔◑◕●⌾⭗☉⌾◎◉⨀◎⌾◉◍⊗⊛•○∙⊛⁕✱ ൦❄⊕⊖⊗⊘⊙⊚⊛⊜⊝∘∙◉⏺○◍◎●◐◑◒◓◔◕◦◯◴◵◶◷☉⚪⚫⚬◐

; too tall: "⬥"  "⯈" "⚫" "∙" ⬤ ✶ "✧" "▸" "⯏"  "⭗"   "⛭" "⚪"  "⭐"  "⏵" 
     (setq org-inlinetask-min-level 7)
     (setq org-checkbox-hierarchical-statistics nil)

(server-start)
    (require 'org-protocol)
    (require 'org-protocol-capture-html)
    (setq org-protocol-default-template-key "w")



          (setq org-capture-templates
                '(
                  ("a" "current activity" entry (file+olp+datetree "~/Dropbox/Zettelkasten/journal.org") "** %<%H:%M> %? \n\n\n\n"  :clock-in t :clock-keep t :kill-buffer nil ) 

                  ("j" "journal" entry (file+olp+datetree "~/Dropbox/Zettelkasten/journal.org") "** journal :journal: \n%U  \n%?\n\n"  :clock-in t :resume t :clock-keep nil :kill-buffer nil :append t) 

                  ("c" "calendar" entry (file "~/Dropbox/Zettelkasten/cal.org") "* %^{EVENT} \n %^t\n%?%a")

                  ("e" "emacs log" item (file+headline "~/Dropbox/Zettelkasten/personal.org" "Emacs config changes") "%U %?" :prepend t) 

("l" "look up" entry (id "5br4n6815pi0") "* %? \n%U\n  \n%a\n\n\n" :prepend nil)



                  ("t" "todo" entry (file "~/Dropbox/Zettelkasten/inbox.org") "* TODO %? \n%a\n\n\n" :prepend nil)

("n" "note" entry (file "~/Dropbox/Zettelkasten/inbox.org") "* %^{TOPIC}\n%U\n %? \n%a\n\n\n" :prepend nil)





                  ("w" "org-protocol" entry (file "~/Dropbox/Zettelkasten/inbox.org")
                   "* TODO %? %a\n%U\n%:initial\n" )


                  ))




                                                  ;this prevents org-capture from replacing any windows. it just adds. 
          (defun my-org-capture-place-template-dont-delete-windows (oldfun args)
            (cl-letf (((symbol-function 'delete-other-windows) 'ignore))
              (apply oldfun args)))

          (with-eval-after-load "org-capture"
            (advice-add 'org-capture-place-template :around 'my-org-capture-place-template-dont-delete-windows))

(setq org-log-into-drawer t)



    (defun insert-timestamp (prefix)
       "Insert the current date. With prefix-argument, use ISO format. With
      two prefix arguments, write out the day and month name."
       (interactive "P")
       (let ((format (cond
                      ((not prefix) "%Y%m%d-%H%M")
                      ((equal prefix '(4)) "%Y-%m-%d")
                      ((equal prefix '(16)) "%A, %d. %B %Y")))
            )
         (insert (format-time-string format))))

   (use-package org-clock-convenience
     :ensure t
     :bind (:map org-agenda-mode-map
		 ("<S-up>" . org-clock-convenience-timestamp-up)
		 ("<S-down>" . org-clock-convenience-timestamp-down)
		 ("e" . org-clock-convenience-fill-gap)
		 ("o" . org-clock-convenience-fill-gap-both)))

(defun dfeich/helm-org-clock-in (marker)
  "Clock into the item at MARKER"
  (with-current-buffer (marker-buffer marker)
    (goto-char (marker-position marker))
    (org-clock-in)))
(eval-after-load 'helm-org
  '(nconc helm-org-headings-actions
          (list
           (cons "Clock into task" #'dfeich/helm-org-clock-in))))



(setq helm-org-headings-actions '(
("Go to heading" . helm-org-goto-marker)
("Clock into task" . dfeich/helm-org-clock-in)
  ("Open in indirect buffer 'C-c i'" . helm-org--open-heading-in-indirect-buffer)
  ("Refile heading(s) (multiple-marked-to-selected, or current-to-selected) 'C-c w'" . helm-org--refile-heading-to)
  ("Insert link to this heading 'C-c l'" . helm-org-insert-link-to-heading-at-marker)
  )
)




   (setq org-drawers (quote ("PROPERTIES" "LOGBOOK")))
   (setq org-clock-into-drawer t)
   (setq org-clock-out-remove-zero-time-clocks t)


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
         "~/Dropbox/Zettelkasten/journal.org::datetree/* Finished tasks")
   (setq org-archive-reversed-order t)
   (setq org-refile-use-cache t)

(setq org-refile-targets (quote (("~/Dropbox/Zettelkasten/notes.org" :maxlevel . 1)
                                 ("~/Dropbox/Zettelkasten/ndd.org" :maxlevel . 1)
                                 ("~/Dropbox/Zettelkasten/inbox.org" :maxlevel . 2)
                                 ("~/Dropbox/Zettelkasten/personal.org" :maxlevel . 1)
                                 ("~/Dropbox/Zettelkasten/someday.org" :maxlevel . 1)
                                 ("~/Dropbox/Zettelkasten/journal.org" :maxlevel . 1)
                                 ("~/Dropbox/Zettelkasten/cal.org" :maxlevel . 2)
                                 ("~/Dropbox/Zettelkasten/lis.org" :maxlevel . 2))))

(setq org-outline-path-complete-in-steps nil) 

                                        ; Refile in a single go

                                        ;  (global-set-key (kbd "<f4>") 'org-refile)

(setq org-refile-allow-creating-parent-nodes 'confirm)

                                        ;(setq org-archive-location "~/Dropbox/Zettelkasten/journal.org::datetree/")
(setq org-archive-location "~/Dropbox/Zettelkasten/journal.org::datetree/* Finished tasks")

(use-package org-chef
:defer t
 )

(use-package org-ref
  :defer t)
(setq reftex-default-bibliography '("~/Dropbox/Zettelkasten/references.bib"))

;; see org-ref for use of these variables
(setq org-ref-bibliography-notes "~/Dropbox/Zettelkasten/notes.org"
      org-ref-default-bibliography '("~/Dropbox/Zettelkasten/references.bib")
      org-ref-pdf-directory "~/Dropbox/Library/")
(setq org-ref-pdf-directory "~/Dropbox/Library")
(setq bibtex-completion-bibliography "~/Dropbox/Zettelkasten/references.bib"

      bibtex-completion-notes-path "~/Dropbox/Zettelkasten/notes.org")
(setq org-ref-prefer-bracket-links t)
;; open pdf with system pdf viewer (works on mac)
(setq bibtex-completion-pdf-open-function
      (lambda (fpath)
        (start-process "open" "*open*" "open" fpath)))


                                        ;  (setq pdf-view-continuous nil)

                                        ;  (setq bibtex-autokey-year-title-separator "")
                                        ; (setq bibtex-autokey-titleword-length 0)


(setq bibtex-completion-notes-template-one-file "\n* ${author} (${year}). ${title}.\n:PROPERTIES:\n:Custom_ID: ${=key=}\n:CITATION: ${author} (${year}). /${title}/. /${journal}/, /${volume}/(${number}), ${pages}. ${address}: ${publisher}. ${url}\n:END:")

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

(use-package calfw)
   (use-package calfw-org)
;   (use-package calfw-gcal)
   (use-package calfw-cal)
   (setq package-check-signature nil)
 ;  (setq org-gcal-down-days '30)
   ;for http400 error, open scratch and evaluate (org-gcal-request-token) using C-x C-e


   (defun my-open-calendar ()
     (interactive)
     (cfw:open-calendar-buffer
      :contents-sources
      (list
       (cfw:org-create-source "pale green")  ; orgmode source
       (cfw:cal-create-source "light goldenrod") ; diary source
      ))) 
(add-hook 'cfw:calendar-mode-hook (lambda () (visual-fill-column-mode 0)))
 ;   (setq calendar-daylight-savings-starts '(3 11 year))
  ;  (setq calendar-daylight-savings-ends: '(11 4 year))
   (setq calendar-week-start-day 1)

(setq diary-file "~/Dropbox/Zettelkasten/diary")

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

(setq browse-url-browser-function 'browse-url-generic
          browse-url-generic-program "brave-browser")

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

(setq browse-url-browser-function (quote eww-browse-url))
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
(setq auto-save-interval 300)
(setq auto-save-timeout 5)
 (setq global-auto-revert-mode t)

(pdf-tools-install)



(use-package pdf-tools :defer t)
(use-package org-pdfview :defer t)
(add-hook 'pdf-view-mode-hook (lambda () (visual-fill-column-mode 0)))
(add-hook 'pdf-view-mode-hook (lambda () (centered-window-mode 0)))
(add-to-list 'org-file-apps '("\\.pdf\\'" . org-pdfview-open))
(add-to-list 'org-file-apps '("\\.pdf::\\([[:digit:]]+\\)\\'" .  org-pdfview-open))

(setq pdf-view-continuous nil)
(add-to-list 'org-file-apps 
             '("\\.pdf\\'" . (lambda (file link)
                               (org-pdfview-open link))))

(use-package company-auctex)
(company-auctex-init)


(use-package tex :ensure auctex)

     (setq TeX-auto-save t)
     (setq TeX-parse-self t)

(use-package yasnippet                  ; Snippets
 )
(use-package yasnippet-snippets         ; Collection of snippets
  :ensure t)



(use-package yankpad
  :ensure t
  :defer 10
  :init
  (setq yankpad-file "~/Dropbox/Zettelkasten/yankpad.org")
 
 
 )

 (setq yankpad-respect-current-org-level nil)
 (setq yas-global-mode t)
 (setq yas-snippet-dirs
   (quote
    ("/home/betsy/.emacs.d/snippets" yasnippet-snippets-dir)))

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
                           "libreoffice"
                           '(file))

                     ))
              (openwith-mode 1)))
  :ensure t)

(set-face-attribute 'default nil :family "Fantasque sans mono" :height 250 :weight 'normal  :foreground "#ebdcb2"); honeydew  d5d6d2 faefd4
     (set-face-attribute 'org-level-1 nil :weight 'regular :foreground "#6ab187" :inherit 'default :height 1.0 :weight 'bold) ;lagoon
     (set-face-attribute 'org-level-2 nil :inherit 'org-level-1 :foreground "#9a9eab" :height 1.0 :weight 'regular) ;  
     (set-face-attribute 'org-level-3 nil :inherit 'org-level-2 :foreground "#68829e" :height 1.0) ; 
     (set-face-attribute 'org-level-4 nil :inherit 'org-level-3 :foreground "#6ab187" :height 1.0) ;    a3bd38
     (set-face-attribute 'org-level-5 nil :inherit 'org-level-4 :foreground "#9a9eab")
     (set-face-attribute 'org-level-6 nil :inherit 'org-level-5 :foreground "#68829e")


     (set-face-attribute 'org-todo nil :weight 'normal :family "nova mono" :height 0.9)
     (set-face-attribute 'org-link nil :weight 'normal :foreground "firebrick" :family "monofur") ;grecian blue  2988bc

     (set-face-attribute 'org-checkbox-statistics-todo nil :inherit 'org-todo :weight 'normal :height 0.8 :foreground "#ff4447") ;raspberry
     (set-face-attribute 'org-checkbox-statistics-done nil :inherit 'org-done :strike-through nil) ;raspberry
     (set-face-attribute 'org-drawer nil :height 0.8 :foreground "sky blue")
     (set-face-attribute 'org-special-keyword nil :height 0.8)
     (set-face-attribute 'org-date nil :underline t :foreground "#a1d6e2" :family "monofur" )
     (set-face-attribute 'bold nil :weight 'bold :foreground "#f0810f") ; f0810f ffbb00 de7a22
     (set-face-attribute 'italic nil :slant 'italic :foreground "#fa6775") ;bubblegum 
     (set-face-attribute 'org-agenda-diary nil :foreground "#a4cabc" )
     (set-face-attribute 'org-ellipsis nil :foreground "#a4cabc" :strike-through nil)
     (set-face-attribute 'org-headline-done nil :foreground "#5B6268" :strike-through t)
  (set-face-attribute 'org-archived nil :foreground "grey32" :strike-through nil)
     (set-face-attribute 'underline nil :foreground "#89da59" :underline t) ;warm gray
     (set-face-attribute 'org-agenda-current-time nil :foreground "magenta") 


(setq org-todo-keyword-faces
           (quote
            (("NEXT" :weight bold :inherit org-todo :foreground "magenta")
             ("?" :weight bold :underline nil :inherit org-todo :foreground "yellow")
             ("IN-PROGRESS" :weight bold :underline nil :inherit org-todo :foreground "#00CFFA")
             ("PROJ" :weight regular :underline nil :inherit org-todo :foreground "purple")
             ("TODO" :weight regular :underline nil :inherit org-todo :foreground "#e8a735")
             ("HABIT" :weight bold :underline nil :inherit org-todo :foreground "coral")
             )))
  ;dismissed colors: 426e86, steel blue

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
  (doom-themes-org-config))
