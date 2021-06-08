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


  (set-face-attribute 'default nil :family "Fantasque sans mono" :height 200 :weight 'normal  :foreground "#ebdcb2")
  (delete-selection-mode) ;allows to delete selected text by typing
  (global-set-key (kbd "M-o") 'other-window)

;  (setq debug-on-error t)

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

                    (use-package ace-jump-mode)
               ;(define-key dired-mode-map (kbd "M-z") 'ace-jump-mode)
               (global-set-key (kbd "M-z") 'ace-jump-mode)
     (global-unset-key (kbd "C-z"))
          (global-set-key (kbd "C-z") 'ace-jump-helm-line)
(setq tab-bar-mode nil)

(load "dired+")
(define-key dired-mode-map (kbd "<f1>") 'org-capture)
(setq dired-auto-revert-buffer (quote dired-directory-changed-p)
      dired-omit-verbose nil
      dired-omit-files
      (concat dired-omit-files "\\|^.DS_STORE$\\|^.projectile$\\|^.org~$")
      )
(add-hook 'dired-load-hook
          (function (lambda () (load "dired-x"))))

(add-hook 'dired-mode-hook
          (lambda ()
            ;; Set dired-x buffer-local variables here.  For example:
            (dired-omit-mode 1)
            ))

;; toggle `dired-omit-mode' with C-x M-o
(add-hook 'dired-mode-hook #'dired-omit-mode)

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

(use-package deft
  :ensure t
  :bind
  ([f8] . deft))
(setq deft-directory "~/Dropbox/Zettelkasten/"
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

(use-package s)
(use-package org
  :ensure org-plus-contrib)
(use-package unkillable-scratch
  :config
  (unkillable-scratch 1))


(use-package aggressive-indent
  :custom (global-aggressive-indent-mode t)
  )

;;(straight-use-package '(org-plus-contrib :includes org))

(use-package smartparens 
  :defer t 
  :config
  (setq sp-show-pair-from-inside nil)
  (require 'smartparens-config)
  :diminish smartparens-mode
  :custom
  (smartparens-global-mode t)
  (global-highlight-parentheses-mode 1)
  )
(sp-pair "'" nil :actions :rem)
(sp-pair "=" nil :actions :rem)


(setq org-modules
      (quote
       (ol-bibtex ol-eww org-habit org-id org-protocol ol-w3m ol-bookmark org-checklist org-depend org-registry)))

(setq org-indirect-buffer-display 'current-window)
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

(use-package magit
  :init (progn
          (setq magit-repository-directories '("~/Dropbox/" ))))
(setq global-auto-revert-mode t
      auto-save-interval 5)


(add-hook 'org-mode-hook (lambda () (auto-revert-mode 1)))

(server-start)
(require 'org-protocol)
(require 'org-protocol-capture-html)
(setq org-protocol-default-template-key "w")

(global-set-key (kbd "C-c C-x C-o") 'org-clock-out)
  (global-set-key (kbd "C-c <f2>") 'org-clock-out)

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
   ([f10] . org-tree-to-indirect-buffer)
   ([f11] . org-id-goto)
   ([f12] . bury-buffer)     )

(define-key key-translation-map (kbd "C-c <up>") (kbd "🡑"))
(define-key key-translation-map (kbd "C-c <down>") (kbd "🡓"))
(define-key key-translation-map (kbd "C-c =") (kbd "≠"))
(define-key key-translation-map (kbd "C-c <right>") (kbd "→"))
(define-key key-translation-map (kbd "C-c m") (kbd "—"))
(define-key key-translation-map (kbd "C-_") (kbd "–"))
(define-key key-translation-map (kbd "C-c d") (kbd "Δ"))
(define-key key-translation-map (kbd "C-c z")  (kbd "∴"))

(defhydra hydra-org (:color amaranth :columns 3)
  "Org Mode Movements"
  ("n" outline-next-visible-heading "next heading")
  ("p" outline-previous-visible-heading "prev heading")
  ("N" org-forward-heading-same-level "next heading at same level")
  ("P" org-backward-heading-same-level "prev heading at same level")
  ("u" outline-up-heading "up heading")
  ("k" kill-region "kill region")
  ("y" yank "paste")
  ("l" helm-show-kill-ring "list" :color blue)  
  ("r" org-refile "refile")
  ("t" org-todo "todo")
  ("g" org-set-tags-command "tags")
  ("s" show-subtree "expand subtree")
  ("h" hide-subtree "collapse subtree")
  ("a" org-archive-subtree "archive")
  ("G" org-goto "goto" :exit t)
  ("q" nil "quit" :color blue)
  )

(use-package org-superstar
  :config
  (setq org-superstar-headline-bullets-list '("◉" "❤""❄" "☆""♢" "⭆" )
  org-superstar-item-bullet-alist (quote ((42 . 33) (43 . 62) (45 . 45))))
  (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1))))
(setq org-startup-indented t
      org-hide-emphasis-markers t
      org-startup-folded t
      org-ellipsis " ⬎ "
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

(set-face-attribute 'variable-pitch nil :family "Koho")
(set-face-attribute 'mode-line nil :height 0.9 :family "monofur" :foreground "deep sky blue")
(set-face-attribute 'org-checkbox-statistics-todo nil :inherit 'org-todo :weight 'normal :family "Victor Mono" :height 1.0 :foreground "#ff4447") ;raspberry
(set-face-attribute 'org-checkbox-statistics-done nil :inherit 'org-done :strike-through nil) ;raspberry
(set-face-attribute 'org-drawer nil :height 0.8 :foreground "sky blue")
(set-face-attribute 'org-archived nil :foreground "grey32" :strike-through nil)
(set-face-attribute 'org-agenda-current-time nil :foreground "magenta") 

(setq org-tags-column 0)

(defvar symbola-font (if (eq system-type 'gnu/linux)
                         (font-spec :name "Symbola" :size 14)
                       "Symbola"))
(set-fontset-font "fontset-default" '(#x1100 . #xffdc)
                  '("NanumBarunpen" . "unicode-bmp" ))
(set-fontset-font "fontset-default" '(#xe0bc . #xf66e) 
                  '("Nanumbarunpen" . "unicode-bmp"))

(set-fontset-font "fontset-default" '(#x2000 . #x206F)
                  '("Symbola" . "unicode-bmp" ))
                                        ;
(set-fontset-font "fontset-default" '(#x2190 . #x21FF)
                  '("Symbola" . "unicode-bmp" ))
(set-fontset-font "fontset-default" '(#x2B00 . #x2BFF)
                  '("Symbola" . "unicode-bmp" ))

(set-fontset-font "fontset-default" '(#x2200 . #x22FF)
                  '("Symbola" . "unicode-bmp" ))

(set-fontset-font "fontset-default" '(#x25A0 . #x25FF)
                  '("Symbola" . "unicode-bmp" ))

(set-fontset-font "fontset-default" '(#x2600 . #x26FF)
                  '("Symbola" . "unicode-bmp" ))
(set-fontset-font "fontset-default" '(#x2700 . #x27BF)
                  '("Symbola" . "unicode-bmp" ))

(set-fontset-font "fontset-default" '(#x1f800 . #x1f8ff)
                  '("Symbola" . "unicode-bmp" ))

                                        ;https://www.reddit.com/r/emacs/comments/8tz1r0/how_to_set_font_according_to_languages_that_i/e1bjce6?utm_source=share&utm_medium=web2x&context=3
(when (fboundp #'set-fontset-font)
  (set-fontset-font t 'korean-ksc5601	
                    ;; Noto Sans CJK: https://www.google.com/get/noto/help/cjk/
                    (font-spec :family "Nanum Gothic Coding")))
(dolist (item '(("Nanum Gothic Coding" . 1.0)))
  (add-to-list 'face-font-rescale-alist item))

(setq use-default-font-for-symbols nil)

(setq org-src-fontify-natively t
        org-src-tab-acts-natively t)

(setq org-fontify-quote-and-verse-blocks t)

(use-package hydra)
(defhydra hydra-zoom (:color red)  "zoom"
  ("=" text-scale-increase "in")
  ("-" text-scale-decrease "out")
  ("0" (text-scale-adjust 0) "reset")
  ("o" (other-window) "other window")
  ("q" nil "quit" :color blue))

(global-set-key (kbd "C-=") 'hydra-zoom/body)
(use-package visual-fill-column)

(setq org-directory "~/Dropbox/Zettelkasten/"
      org-default-notes-file "~/Dropbox/Zettelkasten/inbox.org"
      org-archive-location "~/Dropbox/Zettelkasten/journal.org::datetree/"
      org-contacts-files (quote ("~/Dropbox/Zettelkasten/contacts.org"))
      org-roam-directory "~/Dropbox/Zettelkasten/Zettels/"
      )
(setq org-archive-reversed-order nil
      org-reverse-note-order t
      org-refile-use-cache t
      org-refile-allow-creating-parent-nodes 'confirm
      org-refile-use-outline-path 'file
      org-refile-targets '((org-agenda-files :maxlevel . 3))
      org-outline-path-complete-in-steps nil
      )


(defun my-org-refile-cache-clear ()
  (interactive)
  (org-refile-cache-clear))
(define-key org-mode-map (kbd "C-0 C-c C-w") 'my-org-refile-cache-clear)




                                        ; Refile in a single go

                                        ;  (global-set-key (kbd "<f4>") 'org-refile)


(setq org-id-link-to-org-use-id (quote create-if-interactive)
      org-id-method (quote org)
      org-return-follows-link t
      org-link-keep-stored-after-insertion nil
      org-goto-interface (quote outline-path-completion)
      org-clock-mode-line-total 'current)

                                        ;   (add-hook 'org-mode-hook (lambda () (org-sticky-header-mode 1)))


(setq global-visible-mark-mode t)

(setq org-agenda-overriding-columns-format "%40ITEM %SCHEDULED %DEADLINE ")
(setq org-agenda-files
      '("~/Dropbox/Zettelkasten/inbox.org"
        "~/Dropbox/Zettelkasten/journal.org"
        "~/Dropbox/Zettelkasten/readings.org"
        "~/Dropbox/Zettelkasten/cal.org"
        "~/Dropbox/Zettelkasten/contacts.org"
        "~/Dropbox/Zettelkasten/lis.org"
        "~/Dropbox/Zettelkasten/recipes.org"
        "~/Dropbox/Zettelkasten/ndd.org"
        "~/Dropbox/Zettelkasten/personal.org"
        "~/Dropbox/Zettelkasten/sysadmin.org"
        ))

(setq org-agenda-with-colors t
      org-agenda-start-on-weekday nil  ;; this allows agenda to start on current day
      org-agenda-current-time-string "✸✸✸✸✸"
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

(setq org-super-agenda-mode 1)
  (setq org-agenda-custom-commands
        '(
          ("z" "super agenda" ((agenda "" ((org-agenda-span 'day)
                                    (org-super-agenda-groups
                                     '((:name "Today"
                                              :time-grid t
                                              :date today
                                              :todo "TODAY"
                                              :scheduled today
                                              :order 1)))))
                        (alltodo "" ((org-agenda-overriding-header "")
                                     (org-super-agenda-groups
                                      '(
                                        (:name "today" :scheduled today)
                                        (:name "Deadlines" 
                                               :and (:deadline t :scheduled nil))
                                        (:name "not scheduled"
                                               :and (:deadline nil :scheduled nil))
                                        (:name "Scheduled" :scheduled future)
(:name csi :category "csi")
                                        ))
                                     ))
                        ))
          ("l" "all todos" (  (alltodo "" ((org-agenda-overriding-header "")
                                     (org-super-agenda-groups
                                      '(
                                        (:name "today" :scheduled today)
                                        (:name "Deadlines" 
                                               :and (:deadline t :scheduled nil))
                                        (:name "not scheduled"
                                               :and (:deadline nil :scheduled nil))
                                        (:name "Scheduled" :scheduled future)

                                      (:name csi :category "csi")
                                      ))
                            )         )))

          )
        )

(setq org-enforce-todo-dependencies t
      org-clock-out-when-done t
      )

(setq org-log-into-drawer t)

(setq org-todo-keywords
      (quote
       ((sequence "TODO(t)" "NEXT(n)" "IN-PROG(i)" "WAIT(w)" "|" "DONE(d)"  "x(c)" )
        (type    "HOLD(l)"  "|" "DONE(d)")     )))

(setq org-todo-keyword-faces
      '(("WAIT" :weight regular :underline nil :inherit org-todo :foreground "yellow")
        ("TODO" :weight regular :underline nil :inherit org-todo :foreground "#89da59")
        ("NEXT" :weight regular :underline nil :inherit org-todo :foreground "magenta")
        ("IN-PROG" :weight bold :underline t :inherit org-todo :foreground "#5bcbac")))

(setq org-capture-templates
      '(
        ("a" "current activity" entry (file+olp+datetree "~/Dropbox/Zettelkasten/journal.org") "** %? \n" :clock-in t :clock-keep t :kill-buffer nil ) 

        ("c" "calendar" entry (file "~/Dropbox/Zettelkasten/cal.org") "* %^{EVENT}\n%^t\n%a\n%?")

        ("e" "emacs log" item (id "config") "%U %a %?" :prepend t) 

        ("f" "Anki basic" entry (file+headline "~/Dropbox/Zettelkasten/anki.org" "Dispatch Shelf") "* %<%H:%M>   \n:PROPERTIES:\n:ANKI_NOTE_TYPE: Basic (and reversed card)\n:ANKI_DECK: Default\n:END:\n** Front\n%^{Front}\n** Back\n%^{Back}%?")

        ("F" "Anki cloze" entry (file+headline "~/Dropbox/Zettelkasten/anki.org" "Dispatch Shelf") "* %<%H:%M>   \n:PROPERTIES:\n:ANKI_NOTE_TYPE: Cloze\n:ANKI_DECK: Default\n:END:\n** Text\n%^{Front}%?\n** Extra")

        ("j" "journal" entry (file+olp+datetree "~/Dropbox/Zettelkasten/journal.org") "** journal :journal: \n%U  \n%?\n\n"   :clock-in t :clock-resume t :clock-keep nil :kill-buffer nil :append t) 

        ("t" "todo" entry (file "~/Dropbox/Zettelkasten/inbox.org") "* TODO %? \nSCHEDULED: %t\n%a\n" :prepend nil)

        ("w" "org-protocol" entry (file "~/Dropbox/Zettelkasten/inbox.org")
         "* %a \nSCHEDULED: %t %?\n%:initial" )
        ("x" "org-protocol" entry (file "~/Dropbox/Zettelkasten/inbox.org")
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
  (setq chronos-notification-wav "~/Dropbox/emacs/.emacs.d/sms-alert-1-daniel_simon.wav")
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

(setq org-list-demote-modify-bullet
      '(("+" . "*") ("-" . "+") ("*" . "-")))

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

(use-package org-auto-tangle
  :hook (org-mode . org-auto-tangle-mode)

  )

(load "annot")
  (require 'annot)

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

(use-package pdf-tools
              :magic ("%PDF" . pdf-view-mode)
              :config
              (pdf-tools-install :no-query))
            (use-package pdf-view-restore)

             (setq pdf-view-continuous t)
          (add-hook 'pdf-view-mode-hook 'pdf-view-restore-mode)

    (load "org-pdfview")

                                            ;     (add-hook 'pdf-view-mode-hook (lambda () (visual-fill-column-mode 0)))




    (add-to-list 'org-file-apps 
                 '("\\.pdf\\'" . (lambda (file link)
                                   (org-pdfview-open link))))

(use-package quelpa)
   (quelpa
    '(quelpa-use-package
      :fetcher git
      :url "https://github.com/quelpa/quelpa-use-package.git"))
   (require 'quelpa-use-package)

      (use-package pdf-continuous-scroll-mode
        :quelpa (pdf-continuous-scroll-mode :fetcher github :repo "dalanicolai/pdf-continuous-scroll-mode.el"))
(add-hook 'pdf-view-mode-hook 'pdf-continuous-scroll-mode)

(use-package org-roam
:bind 
   ("C-c <f1>" . org-roam-capture))

  (setq org-roam-capture-templates '(("d" "default" plain #'org-roam--capture-get-point "* ${title}\n:PROPERTIES:\n:VISIBILITY: all\n:CREATED: %U\n:CONTEXT: %a\n:END:\n%?" :file-name "%(format-time-string \"%Y%m%d-%H%M_${slug}\" (current-time) )"
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
(setq reftex-default-bibliography '("~/Dropbox/Zettelkasten/references.bib"))

;; see org-ref for use of these variables
(setq org-ref-bibliography-notes "~/Dropbox/Zettelkasten/readings.org"
      org-ref-default-bibliography '("~/Dropbox/Zettelkasten/references.bib")
      org-ref-pdf-directory "~/Dropbox/Library/BIBTEX/"
      org-ref-prefer-bracket-links t
      )

(setq bibtex-completion-bibliography "~/Dropbox/Zettelkasten/references.bib"
      bibtex-completion-notes-path "~/Dropbox/Zettelkasten/readings.org")

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
  :config
  (setq org-noter-property-doc-file "INTERLEAVE_PDF"
        org-noter-property-note-location "INTERLEAVE_PAGE_NOTE"
        org-noter-default-notes-file-names "~/Dropbox/Zettelkasten/readings.org"
        org-noter-notes-search-path "~/Dropbox/Zettelkasten/"
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
  (use-package interleave 
    :defer t
    )

(require 'ox-extra)
(ox-extras-activate '(ignore-headlines))


(use-package company-auctex)
(company-auctex-init)


(use-package tex :ensure auctex)

(setq TeX-auto-save t)
(setq TeX-parse-self t)

(find-file "/home/betsy/.emacs")
(find-file "~/Dropbox/Zettelkasten/inbox.org")
(find-file "~/Dropbox/emacs/config-thinkpad-extra.org")
(find-file "~/Dropbox/emacs/thinkpad-general-config.org")
