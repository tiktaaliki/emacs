(set-fringe-mode '(25 . 25))
(fset 'yes-or-no-p 'y-or-n-p)
                                        ;  (setq confirm-kill-emacs (quote y-or-n-p))
(setq confirm-kill-emacs nil
      visible-bell nil
      inhibit-startup-screen t
      org-support-shift-select t
      ring-bell-function (quote ignore)
      split-width-threshold 100
      )


(add-to-list 'default-frame-alist '(fullscreen . maximized))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(set-language-environment "UTF-8")

(use-package helm
                           :config (helm-mode +1)
                           :bind (("M-x"   . helm-M-x)
                                  ([f3] . helm-buffers-list)       
                                  ("<Hangul> x" . helm-M-x)
                                  ([f9] . helm-occur )
                                  ))
                         (use-package projectile
                           :config
                           (projectile-mode +1))

                         (use-package helm-projectile
                           :bind    ([f5] . helm-projectile))

                         (use-package bufler
                           :custom
                           (bufler-column-name-width 70)
                           (bufler-filter-buffer-modes nil))

                         (setq org-special-ctrl-a/e (quote (t . t)))

                         (add-hook 'bufler-list-mode-hook
                                   (lambda ()
                                     (visual-line-mode -1)
                                     (toggle-truncate-lines 1)))

 ;                   (use-package ace-jump-mode)
;                             (global-set-key (kbd "M-z") 'ace-jump-mode)
     (global-unset-key (kbd "C-z"))
          (global-set-key (kbd "C-z") 'ace-jump-helm-line)
(global-unset-key (kbd "C-v"))
(setq tab-bar-mode nil)

(use-package deft
  :ensure t
  :bind
  ([f8] . deft))
(setq deft-directory "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/"
      deft-default-extension "org"
      deft-time-format " %b-%Y %H:%M"
      deft-use-filename-as-title t
      deft-new-file-format "%Y%b%d"
      deft-text-mode 'org-mode
      deft-recursive t
      deft-extensions '("org" "txt" "emacs" "bib" "ledger" "el" "tex")
      deft-auto-save-interval 15.0
      deft-file-naming-rules '((noslash . "-")
                               (nospace . "-")
                               (case-fn . downcase))) 



(add-hook 'after-init-hook 'deft)
(add-hook 'deft-mode-hook #'visual-line-mode)
  (global-set-key (kbd "M-o") 'other-window)

(use-package s)
    (use-package org
      ;:ensure org-plus-contrib
      :ensure org-contrib
      )
    (use-package unkillable-scratch
      :config
      (unkillable-scratch 1))


    (use-package aggressive-indent
      :custom (global-aggressive-indent-mode t)
      )

    ;;(straight-use-package '(org-plus-contrib :includes org))


    (setq org-modules
          (quote
          (ol-bibtex ol-docview ol-eww org-habit org-id org-inlinetask org-protocol org-tempo ol-w3m org-annotate-file ol-bookmark org-checklist org-collector org-depend org-invoice org-notify org-registry)))


  (defun kdm/html2org-clipboard ()
    "Convert clipboard contents from HTML to Org and then paste (yank)."
    (interactive)
    (kill-new (shell-command-to-string "xclip -o -t text/html | pandoc -f html -t json | pandoc -f json -t org --wrap=none"
))
    (yank))



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

(global-set-key (kbd "C-c C-x C-o") 'org-clock-out)
    (global-set-key (kbd "C-c <f2>") 'org-clock-out)
(global-set-key (kbd "C-c c") 'kill-ring-save)
    (global-set-key (kbd "<f1>") 'org-capture)
    (global-set-key (kbd "C-c C-x C-j") 'org-clock-goto)
    (define-key org-mode-map (kbd "C-a") 'org-beginning-of-line)
    (define-key org-mode-map (kbd "C-e") 'org-end-of-line)
    (bind-keys
  ("C-c r" . org-clock-report)
     ("C-c l" . org-store-link)
     ("C-c C-l" . org-insert-link)
     ("C-c b" . list-bookmarks)
     ("C-a" . org-beginning-of-line) 
     ("C-e" . end-of-line) 
     ("C-k" . org-kill-line)
     ("C-."   . org-todo)
     ("C-x /" . shrink-window-horizontally)
     ("C-x ." . org-archive-subtree-default)

     ([f1] . org-capture)
     ([f2] . org-clock-in)
     ;;f3 is helm
     ([f4] . org-refile)
     ;;f5 is projectile
     ([f6] . helm-bibtex-with-local-bibliography)
     ([f7] . org-agenda)
     
     ;;f8 is deft
    ; ([f10] . org-tree-to-indirect-buffer)
     ([f11] . org-id-goto)
     ([f12] . bury-buffer)     )


  (global-set-key (kbd "<f10>") (lambda ()
                                (interactive)
                                (let ((current-prefix-arg '(4)))
                                  (call-interactively #'org-tree-to-indirect-buffer))))

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
                                          ;    (cfw:cal-create-source "light goldenrod") ; diary source
      ))) 
  (add-hook 'cfw:calendar-mode-hook (lambda () (visual-fill-column-mode 0)))
                                          ;   (setq calendar-daylight-savings-starts '(3 11 year))
                                          ;  (setq calendar-daylight-savings-ends: '(11 4 year))
  (setq calendar-week-start-day 1)

  (setq diary-file "~/Dropbox/Zettelkasten/diary")



  (use-package org-gcal)
  (setq org-gcal-client-id "217294084435-7e5idjaji94bamhu6n5mnchamfl5it6r.apps.googleusercontent.com"
        org-gcal-client-secret "OlIZFIll-Md3n6NxVkpSWr-3"
        org-gcal-fetch-file-alist '(
      ("betsy.yoon@gmail.com" . "~/Dropbox/Zettelkasten/events.org" )
;      ("ua08veaq1ei5a9li8s2tiiecbg@group.calendar.google.com" . "~/Dropbox/Zettelkasten/time.org")
      ))

  (setq org-gcal-recurring-events-mode 'top-level)

(setq backup-directory-alist '(("." . "c:/Users/byoon/Dropbox (Personal)/emacs/baruch-backups"))
      backup-by-copying 1
      delete-old-versions -1
      version-control t
      vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "c:/Users/byoon/Dropbox (Personal)/emacs/baruch-backups/auto-save-list/" t)))

(setq org-startup-indented t
            org-hide-emphasis-markers t
            org-startup-folded t
            org-ellipsis " ↯ "
            org-hide-leading-stars t)
      (use-package doom-themes
        :config
        ;; Global settings (defaults)
        (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
              doom-themes-enable-italic t) ; if nil, italics is universally disabled
        (load-theme 'doom-one t)
        ;; Corrects (and improves) org-mode's native fontification.
        (doom-themes-org-config)
        )
    (visual-line-mode 1)
     
    (use-package unicode-fonts)
      (setq org-tags-column 0)
      
    (prefer-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (set-selection-coding-system 'utf-8)
  (set-file-name-coding-system 'utf-8)
  (set-clipboard-coding-system 'utf-8)
  (set-buffer-file-coding-system 'utf-8) 

(use-package org-superstar
  :config
  (setq org-superstar-headline-bullets-list '("❋" "➥" "ᐅ" "✦" "♡")
        org-superstar-item-bullet-alist (quote ((42  . 33) (43 . 62) (45 . 45)))
        )
  (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1))))

(setq-default mode-line-format '("%e"  mode-line-front-space
                                 mode-line-mule-info
                                   mode-line-modified
                                   mode-line-misc-info 
                                   mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
  (vc-mode vc-mode)
  "  " mode-line-modes  mode-line-end-spaces)
              )
  (display-time-mode 1)

(setq org-directory "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/"
      org-default-notes-file "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/inbox.org"
      org-archive-location "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/journal.org::datetree/"
      org-contacts-files (quote ("c:/Users/byoon/Dropbox (Personal)/Zettelkasten/contacts.org"))
      org-roam-directory "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/Zettels/"
      )
(setq org-archive-reversed-order nil
      org-reverse-note-order t
      org-refile-use-cache t
      org-refile-allow-creating-parent-nodes 'confirm
      org-refile-use-outline-path 'file
      org-refile-targets '((org-agenda-files :maxlevel . 4)) 
      org-outline-path-complete-in-steps nil
      )


(defun my-org-refile-cache-clear ()
  (interactive)
  (org-refile-cache-clear))
(define-key org-mode-map (kbd "C-0 C-c C-w") 'my-org-refile-cache-clear)




                                        ; Refile in a single go

                                        ;  (global-set-key (kbd "<f4>") 'org-refile)


(setq org-id-link-to-org-use-id t
      org-id-method (quote org)
      org-return-follows-link t
      org-link-keep-stored-after-insertion nil
      org-goto-interface (quote outline-path-completion)
      org-clock-mode-line-total 'current)

                                        ;   (add-hook 'org-mode-hook (lambda () (org-sticky-header-mode 1)))


(setq global-visible-mark-mode t)

(use-package org-auto-tangle
                :hook (org-mode . org-auto-tangle-mode)

                )
  (setq org-html-head "<link rel=\"stylesheet\" href=\"\\c:\\Users\\byoon\\Dropbox (Personal)\\Zettelkasten\\css\\tufte.css\" type=\"text/css\" />")
  (setq org-agenda-export-html-style "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/css/tufte.css")
(setq org-export-with-toc nil)
(setq org-export-initial-scope 'subtree)

(setq org-tag-alist '(
                              (:startgroup . nil)
                        ("ndd" . ?n)
                        ("health" . ?m)
                        ("baruch" . ?b)
                        ("finances" . ?i)
                        ("sysadmin" . ?y)
                        ("home" . ?h)
                        (:endgroup . nil)

                        (:startgroup . nil)
                        ("lc" . ?e)
                        ("tongsol" . ?g)
                        ("keep" . ?k)
                        ("archives" . ?v) 
                        (:endgroup . nil)

                        (:startgroup . nil)
                        ("librarianship" . ?l)
                        ("service" . ?v)
                        ("scholarship" . ?s)
                        ("tenure" . ?t)
                        (:endgroup . nil)

))

  (setq org-complete-tags-always-offer-all-agenda-tags nil)
  (setq org-tags-column 0)

(setq org-capture-templates
        '(
          ("a" "current activity" entry (file+olp+datetree "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/journal.org") "** %? \n" :clock-in t :clock-keep t :kill-buffer nil )
  
          ("b" "current activity" entry (file+olp+datetree "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/baruch.org") "** %? \n" :clock-in t :clock-keep t :kill-buffer nil )
         
  
            ("c" "calendar" entry (file+headline "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/inbox.org" "Events") "** %^{EVENT}\n%^t\n%a\n%?")
  
          ("e" "emacs log" item (id "config") "%U %a %?" :prepend t) 
  
          ("f" "Anki basic" entry (file+headline "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/anki.org" "Dispatch Shelf") "* %<%H:%M>   \n:PROPERTIES:\n:ANKI_NOTE_TYPE: Basic (and reversed card)\n:ANKI_DECK: Default\n:END:\n** Front\n%^{Front}\n** Back\n%^{Back}%?")
  
          ("F" "Anki cloze" entry (file+headline "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/anki.org" "Dispatch Shelf") "* %<%H:%M>   \n:PROPERTIES:\n:ANKI_NOTE_TYPE: Cloze\n:ANKI_DECK: Default\n:END:\n** Text\n%^{Front}%?\n** Extra")
  
          ("j" "journal" entry (file+olp+datetree "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/journal.org") "** journal :journal: \n%U  \n%?\n\n"   :clock-in t :clock-resume t :clock-keep nil :kill-buffer nil :append t) 
  ("r" "research consultation" entry (file+headline "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/baruch.org" "Consultations") "*** email \n:PROPERTIES:\n:PROFESSOR:\n:COURSE_NUMBER:\n:COURSE_TITLE:\n:END:\n
- [ ] email student\n- [ ] send calendar invite\n- [ ] review materials\n- [ ] prep consult\n- [ ] report consult\n\n%?
" :clock-in t :prepend t)
          ("t" "todo" entry (file "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/inbox.org") "* TODO %? \nSCHEDULED: %t\n%a\n" :prepend nil)
  
          ("w" "org-protocol" entry (file "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/inbox.org")
           "* %a \nSCHEDULED: %t %?\n%:initial" )
          ("x" "org-protocol" entry (file "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/inbox.org")
           "* TODO %? \nSCHEDULED: %t\n%a\n\n%:initial" )
          ("p" "org-protocol" table-line (id "pens")
           "|%^{Pen}|%A|%^{Price}|%U|" )
  
          ("y" "org-protocol" item (id "resources")
           "[ ] %a %U %:initial" )
  
          ))

(use-package org-mru-clock
  :bind     ("M-<f2>" . org-mru-clock-in)
  :config
  (setq org-mru-clock-how-many 80)
  (setq org-mru-clock-keep-formatting t)
  (setq org-mru-clock-completing-read 'helm--completing-read-default)
  )

(setq org-clock-mode-line-total 'current)

(use-package org-alert)
(use-package chronos
  :config
  (setq chronos-expiry-functions '(chronos-sound-notify
                                   chronos-dunstify
                                   chronos-buffer-notify
                                   ))
  (setq chronos-notification-wav "c:/Users/byoon/Dropbox (Personal)/emacs/.emacs.d/sms-alert-1-daniel_simon.wav")
  )
(use-package helm-chronos
  :config
  (setq helm-chronos-standard-timers
        '(
          ;;tuesday shift
          "=10:00/OER shift + -1/oer 1 min + -4/oer in 5 + =14:00/aal shift + -5/aal shift in 5 + 4/1 min! + =18:00/end shift + -5/end shift in 5 + 4/1 min!"
          ;;wednesday shift
          "=10:00/csi oer + -5/csi shift in 5 + =15:00/end shift + -5/end shift in 5"
          ;;thursday shift
          "=9:00/nyu backup shift + -5/shift in 5 + 4/1 min! + =12:00/switch to aal + -5/switch in 5 + 4/1 min! + =13:00/shift over + 4/1 min! + =18:00/csi reference + -5/shift in 5 + 4/1 min! + =22:00/end shift + -5/end shift in 5 + 4/1 min!"
          ;;intermittent fasting
          "=13:00/end fast + =21:00/begin fast"

          ))

  )

 (setq chronos-shell-notify-program "mpv"
          chronos-shell-notify-parameters '("c:/Users/byoon/Dropbox (Personal)/emacs/.emacs.d/sms-alert-1-daniel_simon.wav")


)

(use-package org-pomodoro)
(setq org-pomodoro-ticking-sound-p t)
(setq org-pomodoro-finished-sound-p nil)
(setq org-pomodoro-overtime-sound "c:/Users/byoon/Dropbox (Personal)/emacs/.emacs.d/sms-alert-1-daniel_simon.wav")
(setq org-pomodoro-short-break-sound "c:/Users/byoon/Dropbox (Personal)/emacs/.emacs.d/sms-alert-1-daniel_simon.wav")
(setq org-pomodoro-long-break-sound  "c:/Users/byoon/Dropbox (Personal)/emacs/.emacs.d/sms-alert-1-daniel_simon.wav")
(setq org-pomodoro-keep-killed-pomodoro-time t)
(setq org-pomodoro-manual-break t)
(setq org-pomodoro-ticking-sound-states '(:pomodoro :overtime))
(setq org-pomodoro-length 25)

(setq org-list-demote-modify-bullet
      '(("+" . "-") ("-" . "+") ))

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
                  (unless (string-equal todo-state "*")
                    (org-todo 'todo)))
              (if (and (> (match-end 2) (match-beginning 2))
                       (equal (match-string 2) (match-string 3)))
                  (unless (string-equal todo-state "DONE")
                    (org-todo 'done))
                (unless (string-equal todo-state "*")
                  (org-todo 'todo)))))))))

(add-hook 'org-checkbox-statistics-hook 'my/org-checkbox-todo)

(setq org-enforce-todo-dependencies t
      org-clock-out-when-done t
      )

(setq org-log-into-drawer t)

(setq org-todo-keywords
      (quote
       ((sequence "TODO(t)" "NEXT(n)" "IN-PROG(i)" "|" "DONE(d)"  "x(c)" )
        (type    "HABIT(h)" "PROJ(p)"  "WAIT(w)" "|" "DONE(d)")     )))

(setq org-todo-keyword-faces
      '(("WAIT" :weight regular :underline nil :inherit org-todo :foreground "yellow")
                                        ;          ("TODO" :weight regular :underline nil :inherit org-todo :foreground "#89da59")
        ("TODO" :weight regular :underline nil :inherit org-todo )
        ("NEXT" :weight regular :underline nil :inherit org-todo :foreground "#c7d800")
        ("IN-PROG" :weight bold :underline nil :inherit org-todo :foreground "#fa4032")
         ("HABIT" :weight bold :underline nil :inherit org-todo :foreground "forestgreen")
        ("PROJ" :foreground "magenta")
        ("HOLD" :weight bold :underline nil :inherit org-todo :foreground "#336b87")))


(use-package org-edna)
(org-edna-mode 1)
(setq org-log-done 'time)

(setq org-agenda-overriding-columns-format "%40ITEM %SCHEDULED %DEADLINE ")
  (add-hook 'org-agenda-mode-hook
                                        (lambda ()
                                          (visual-line-mode -1)
                                          (toggle-truncate-lines 1)))  

(setq org-agenda-prefix-format
      '((agenda . " %i %-12:c%?-12t% s")
	(todo . " %i %-12:c")
	(tags . " %i %-12:c")
	(search . " %i %-12:c")))

(setq org-agenda-with-colors t
      org-agenda-start-on-weekday nil  ;; this allows agenda to start on current day
      org-agenda-current-time-string "****"
      org-agenda-start-with-clockreport-mode t
      org-agenda-dim-blocked-tasks t
      org-agenda-window-setup 'only-window
      )


;;skips
(setq org-agenda-skip-scheduled-if-done nil
      org-agenda-skip-deadline-if-done nil
      org-agenda-skip-timestamp-if-done nil
      org-agenda-skip-deadline-prewarning-if-scheduled t
      )

(setq org-agenda-clockreport-parameter-plist
      (quote
       (:link t :maxlevel 4 :narrow 30 :tags t :tcolumns 1 :indent t :hidefiles t :fileskip0 t)))

(setq org-agenda-overriding-columns-format "%40ITEM %SCHEDULED %DEADLINE ")

   (setq org-agenda-files '("c:/Users/byoon/Dropbox (Personal)/Zettelkasten/journal.org"
                            "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/inbox.org"
                            "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/readings.org"
                            "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/contacts.org"
                            "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/events.org"
                            "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/ndd.org"
                          "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/baruch.org"
                            "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/personal.org"
                            "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/lis.org"
                           "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/habits.org"
                            "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/recipes.org"
                            "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/sysadmin.org" 
                           "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/zettels.org"
                            "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/editing.org"                           
                            ))


   (setq org-agenda-prefix-format
         '((agenda . " %i %-12:c%?-12t% s")
           (todo . " %i %-12:c")
           (tags . " %i %-12:c")
           (search . " %i %-12:c")))

   (setq org-agenda-with-colors t
         org-agenda-start-on-weekday nil  ;; this allows agenda to start on current day
         org-agenda-current-time-string "*****"
         org-agenda-start-with-clockreport-mode t
         org-agenda-dim-blocked-tasks t
         org-agenda-window-setup 'only-window
         )


   ;;skips
   (setq org-agenda-skip-scheduled-if-done t
         org-agenda-skip-deadline-if-done t
         org-agenda-skip-timestamp-if-done t
         org-agenda-skip-deadline-prewarning-if-scheduled t
         )

   (setq org-agenda-clockreport-parameter-plist
         (quote
          (:link t :maxlevel 4 :narrow 30 :tags t :tcolumns 1 :indent t :hidefiles t :fileskip0 t)))

     ;this makes it so that habits show up in the time grid
;   (setq org-agenda-sorting-strategy
 ;'((agenda time-up priority-down category-keep)
  ; (todo   priority-down category-keep)
  ; (tags   priority-down category-keep)
  ; (search category-keep)))

(setq org-agenda-exporter-settings
    '((ps-number-of-columns 2)
      (ps-landscape-mode t)
      (org-agenda-add-entry-text-maxlines 5)
      (htmlize-output-type 'css)))



(use-package yasnippet)
    
          (defhydra hydra-yasnippet (:color red :hint nil)
            "
                           ^YASnippets^
             --------------------------------------------
               Modes:    Load/Visit:    Actions:
    
              _g_lobal  _d_irectory    _i_nsert
              _m_inor   _f_ile         _t_ryout
              _e_xtra   _l_ist         _n_ew
                       reload _a_ll
             "
            ("n" down "done")
            ("p" down "up")
            ("N" outline-next-visible-heading "next heading")
            ("P" outline-previous-visible-heading "prev heading")
            ("d" yas-load-directory)
            ("e" yas-activate-extra-mode)
            ("i" yas-insert-snippet)
            ("f" yas-visit-snippet-file :color blue)
            ("n" yas-new-snippet)
            ("t" yas-tryout-snippet)
            ("l" yas-describe-tables)
            ("g" yas-global-mode :color red)
            ("m" yas-minor-mode :color red)
            ("a" yas-reload-all))
    
    
    (eval-after-load "yas"
    '(progn
      ;; The following is optional.
  (define-key yas-minor-mode-map [backtab]     'yas-expand)
  
  ;; Strangely, just redefining one of the variations below won't work.
  ;; All rebinds seem to be needed.
  (define-key yas-minor-mode-map [(tab)]        nil)
  (define-key yas-minor-mode-map (kbd "TAB")    nil)
  (define-key yas-minor-mode-map (kbd "<tab>")  nil)
))

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

(use-package olivetti)
(use-package nov
:config
  (setq nov-post-html-render-hook  (lambda () (visual-line-mode 1)))
  (add-hook 'nov-post-html-render-hook 'olivetti-mode)
)

(use-package pdf-view-restore)

             (setq pdf-view-continuous t)
          (add-hook 'pdf-view-mode-hook 'pdf-view-restore-mode)
 (add-hook 'pdf-view-mode-hook (lambda () (visual-fill-column-mode 0)))

;    (load "org-pdfview")

                                            ;     (add-hook 'pdf-view-mode-hook (lambda () (visual-fill-column-mode 0)))




    (add-to-list 'org-file-apps 
                 '("\\.pdf\\'" . (lambda (file link)
                                   (org-pdfview-open link))))

(use-package org-roam
:bind 
   ("C-c <f1>" . org-roam-capture))

  (setq org-roam-capture-templates '(("d" "default" plain #'org-roam--capture-get-point "* ${title}\n:PROPERTIES:\n:VISIBILITY: all\n:CREATED: %U\n:CATEGORY: zettels\n:CONTEXT: %a\n:END:\n%?\n\n
- What is the purpose of this zettel?\n
- What is the nature of the content I wish to include in this zettel?\n
- How does it relate to the existing network?\n
- How do I wish to discover this information in the future?\n

" :file-name "%(format-time-string \"%Y%m%d-%H%M_${slug}\" (current-time) )"
                                      "#+title: ${title}" :unnarrowed t :kill-buffer t)))
(setq org-roam-completion-system 'helm)



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

(use-package org-ref)
(setq reftex-default-bibliography '("c:/Users/byoon/Dropbox (Personal)/Zettelkasten/references.bib"))

;; see org-ref for use of these variables
(setq org-ref-bibliography-notes "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/readings.org"
      org-ref-default-bibliography '("c:/Users/byoon/Dropbox (Personal)/Zettelkasten/references.bib")
      org-ref-pdf-directory "c:/Users/byoon/Dropbox (Personal)/Library/BIBTEX/"
      org-ref-prefer-bracket-links t
      )

(setq bibtex-completion-bibliography "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/references.bib"
      bibtex-completion-notes-path "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/readings.org")

;; open pdf with system pdf viewer (works on mac)
(setq bibtex-completion-pdf-open-function
      (lambda (fpath)
        (start-process "open" "*open*" "open" fpath)))


                                        ;  (setq pdf-view-continuous nil)

                                        ;  (setq bibtex-autokey-year-title-separator "")
                                        ; (setq bibtex-autokey-titleword-length 0)


(setq bibtex-completion-notes-template-one-file "\n* ${author} (${year}). /${title}/.\n:PROPERTIES:\n:Custom_ID: ${=key=}\n:ID: ${=key=}\n:CITATION: ${author} (${year}). /${title}/. /${journal}/, /${volume}/(${number}), ${pages}. ${publisher}. ${url}\n:DISCOVERY:\n:DATE_ADDED: %t\n:READ_STATUS:\n:INGESTED:\n:FORMAT:\n:TYPE:\n:AREA:\n:END:")

(setq bibtex-maintain-sorted-entries t)

(use-package org-noter
  :ensure t
  :defer t
  :config
  (setq org-noter-property-doc-file "INTERLEAVE_PDF"
        org-noter-property-note-location "INTERLEAVE_PAGE_NOTE"
        org-noter-default-notes-file-names "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/readings.org"
        org-noter-notes-search-path "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/"
        ;;org noter windows
        org-noter-always-create-frame nil
        org-noter-notes-window-location (quote horizontal-split)
        org-noter-doc-split-fraction (quote (0.75 . 0.75))
        org-noter-kill-frame-at-session-end nil

        org-noter-auto-save-last-location t
        org-noter-default-heading-title "$p$: "
        org-noter-insert-note-no-questions t
        org-noter-insert-selected-text-inside-note t
        ))
                                        ;       (setq org-noter-notes-window-location 'other-frame)
                                        ;      (setq org-noter-default-heading-title "p. $p$")

(setq bibtex-autokey-additional-names "etal"
      bibtex-autokey-name-separator "-"
      bibtex-autokey-name-year-separator "_"
      bibtex-autokey-names 2
      bibtex-autokey-titleword-length 0
            bibtex-autokey-titleword-separator ""
    bibtex-autokey-year-length 4
  bibtex-autokey-name-case-convert-function 'capitalize
      )

(use-package avy)
     (define-key dired-mode-map (kbd "C-c z") 'avy-goto-char)
(font-lock-add-keywords 'org-mode '(
				    
				    ("\"[^\"]*\"" . 'org-warning)
			            
				    ))

(find-file "c:/Users/byoon/AppData/Roaming/.emacs")
(find-file "c:/Users/byoon/Dropbox (Personal)/emacs/baruch_config.org")
;  (find-file "c:/Users/byoon/Dropbox (Personal)/Zettelkasten/inbox.org")


  (set-face-attribute 'default nil :family "Consolas" :height 170 :weight 'normal  :foreground "#ebdcb2");

(use-package org-super-agenda)
  (org-super-agenda-mode 1)
  (setq org-super-agenda-mode 1)
  (setq org-agenda-custom-commands
        '(
          ("l" . "just todo lists") ;description for "l" prefix
          ("lt" tags-todo "untagged todos" "-{.*}")
          ("ls" alltodo "all unscheduled" (
                                           (org-agenda-todo-ignore-scheduled t)
                                           (org-super-agenda-groups
                                            '(
                     (:discard (:todo "HABIT"))
                                                                                                         ;   (:name "leadership" :and (:tag "lc"))
                                                                                                          ;  (:name "tongsol" :and (:tag "tongsol"))
                                                                                                           ; (:name "keep" :and (:tag "keep"))
                                                                                                          ;  (:name "archives" :and (:tag "archives"))
                                                                                                            (:name "ndd" :and (:tag "ndd"))
                                                                                                   ;         (:name "scholarship" :and (:tag "schol"))
                                                                                                            (:name "baruch scholarship" :and (:tag "baruch" :tag "scholarship"))
                                                                                                            (:name "baruch librarianship" :and (:tag "baruch" :tag "librarianship"))
                                                                                                            (:name "baruch tenure" :and (:tag "baruch" :tag "tenure"))

                                                                                                            (:name "baruch service" :and (:tag "baruch" :tag "service"))
                                                                                                            (:name "baruch" :and (:tag "baruch"))
                                                                                                            (:name "finances" :and (:tag "finances"))
                                                                                                            (:name "health" :and (:tag "health"))
                                                                                                            (:name "home" :and (:tag "home"))
                                                                                                            (:name "admin" :and (:tag "sysadmin")) 
                                              ))

                                           (org-agenda-skip-function
                                            '(org-agenda-skip-entry-if 'todo '("??" "HOLD"  "PROJ" "AREA")) )
                                           ))
          ("lx" "With deadline columns" alltodo "" 
           ((org-agenda-overriding-columns-format "%40ITEM %SCHEDULED %DEADLINE %EFFORT " )
            (org-agenda-view-columns-initially t)
            (org-agenda-sorting-strategy '(timestamp-up))
            (org-agenda-skip-function '(org-agenda-skip-entry-if 'todo '("??" "HOLD" "WAIT" )) ) )      )
          ("la" "all todos" ((alltodo "" ((org-agenda-overriding-header "")
                                          (org-super-agenda-groups
                                           '(
                                             (:discard (:todo "HABIT"))
                                             (:name "TO READ" :and (:tag "read"))
                                             (:name "Meetings" :and (:tag "meetings"))
                                             (:name "TO WRITE" :and (:tag "write"))
                                             (:name "TO PROCESS" :and (:tag "process"))
                                             (:name "look up" :and (:tag "lookup"))
                                             (:name "focus" :and (:tag "focus"))
                                             (:name "quick" :and (:tag "quick"))

                                             (:name "away from computer" :and (:tag "analog"))



                                             ))))))


          ("g" "all UNSCHEDULED NEXT|TODAY|IN-PROG"
           ((agenda "" ((org-agenda-span 2)
                        (org-agenda-clockreport-mode nil)))
            (todo "NEXT|TODAY|IN-PROG"))
           ((org-agenda-todo-ignore-scheduled t)))



          ("z" "super agenda" ((agenda "" ((org-agenda-span 'day)
                                           (org-super-agenda-groups
                                            '((:name "Day" :time-grid t :order 1)
                                                   (:name "ndd" :and (:tag "ndd") :order 3)
                                                   (:name "baruch" :and (:tag "baruch") :order 2)
                                              ))))
                               (alltodo "" ((org-agenda-overriding-header "")
                                            (org-super-agenda-groups '(
                     (:discard (:todo "HABIT"))
                                                                                                         ;   (:name "leadership" :and (:tag "lc"))
                                                                                                          ;  (:name "tongsol" :and (:tag "tongsol"))
                                                                                                            ; (:name "keep" :and (:tag "keep"))
                                                                                                          ;  (:name "archives" :and (:tag "archives"))
                                                                                                            (:name "ndd" :and (:tag "ndd"))
                                                                                                   ;         (:name "scholarship" :and (:tag "schol"))
                                                                                                            (:name "baruch scholarship" :and (:tag "baruch" :tag "scholarship"))
                                                                                                            (:name "baruch librarianship" :and (:tag "baruch" :tag "librarianship"))
                                                                                                            (:name "baruch tenure" :and (:tag "baruch" :tag "tenure"))

                                                                                                            (:name "baruch service" :and (:tag "baruch" :tag "service"))
                                                                                                            (:name "baruch" :and (:tag "baruch"))
                                                                                                            (:name "finances" :and (:tag "finances"))
                                                                                                            (:name "health" :and (:tag "health"))
                                                                                                            (:name "home" :and (:tag "home"))
                                                                                                            (:name "admin" :and (:tag "sysadmin")) 

                                             )))))
           ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo '("??" "HOLD"  "AREA")) )
            (org-agenda-todo-ignore-scheduled t) )
           nil ("c:/Users/byoon/Dropbox (Personal)/Zettelkasten/agenda.html"))
)

        )

(add-to-list 'org-agenda-custom-commands '(
                                           "o" "three-month view" agenda "" ((org-agenda-span 90))
                                           ))
  (add-to-list 'org-agenda-custom-commands '(
                                           "p" todo "PROJ" ))
