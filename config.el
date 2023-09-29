(set-fringe-mode '(10 . 10))
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
;   (global-set-key (kbd "M-z") 'ace-jump-mode)
   (global-unset-key (kbd "C-z"))
   (global-set-key (kbd "C-z") 'ace-jump-helm-line)
   (setq tab-bar-mode nil)

(use-package avy)
(global-set-key (kbd "M-z") 'avy-goto-char)

(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
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
  
(setq openwith-associations '(("\\.docx\\'" "com.wps.Office" (file))))

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



;(add-hook 'after-init-hook 'deft)
(add-hook 'deft-mode-hook #'visual-line-mode)

(use-package undo-tree)
(use-package s)
(use-package org
  :ensure t
  :pin gnu)
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
                                 ("yoonbetsy@protonmail.com" . "~/Dropbox/Zettelkasten/events.org")        
           ("ua08veaq1ei5a9li8s2tiiecbg@group.calendar.google.com" . "~/Dropbox/Zettelkasten/time.org")
           ))
   (org-gcal-reload-client-id-secret)
       (setq org-gcal-recurring-events-mode 'top-level)

   (setq plstore-cache-passphrase-for-symmetric-encryption t)

   (require 'plstore)
; (add-to-list 'plstore-encrypt-to '("A922544B1884A3CC"))

    (require 'epa-file)
   ;; And then this setting probably is also the winner.
   (setq epg-pinentry-mode 'loopback)
   (epa-file-enable)

   ;; I don't know if this is necessary. I removed it again.
   ;; Essentially it is the path to the downgrade package I used.
 ;  (setq epg-gpg-program "~/Downloads/gnupg-2.4.0/bin/gpg")

   ;; No clue if I need this. But I kept it.
   (setq plstore-cache-passphrase-for-symmetric-encryption t)
   ;; Same thing here. This is more or less
   ;; lazy copy pasting without reading the descriptions
   (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

   (use-package org-gcal
      ;; This is just to make sure I use the correct version.
      ;; Most likely not needed.
     :elpaca '(org-gcal :host github :repo "kidd/org-gcal.el")
     :init
     (setq org-gcal-client-id "CLIENT_ID_HERE"
           org-gcal-client-secret "CLIENT_SECRET_HERE")
           ...
    )

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

(setq pop-up-windows nil)
(setq switch-to-buffer-obey-display-actions t)

(use-package magit
  :init (progn
          (setq magit-repository-directories '("~/Dropbox/" ))))
(setq global-auto-revert-mode t
      auto-save-interval 5)
(auto-save-visited-mode 1)

(add-hook 'org-mode-hook (lambda () (auto-revert-mode 1)))

(setq vc-follow-symlinks t)

(server-start)
(require 'org-protocol)
(require 'org-protocol-capture-html)
(setq org-protocol-default-template-key "w")

(global-set-key (kbd "C-c C-x C-o") 'org-clock-out)
    (global-set-key (kbd "C-c <f2>") 'org-clock-out)
;    (global-unset-key (kbd "C-v"))

    (global-set-key (kbd "<f1>") 'org-capture)
    (global-set-key (kbd "C-c C-x C-j") 'org-clock-goto)
    (define-key org-mode-map (kbd "C-a") 'org-beginning-of-line)
    (define-key org-mode-map (kbd "C-e") 'org-end-of-line)
    (define-key org-mode-map (kbd "C-.") 'org-todo)
    (bind-keys
     ("C-c r" . org-clock-report)
     ("C-c l" . org-store-link)
     ("C-c C-l" . org-insert-link)
     ("C-c b" . list-bookmarks)
     ("C-a" . org-beginning-of-line) 
     ("C-e" . end-of-line) 
     ("C-k" . org-kill-line)
     ("M->" . end-of-buffer)
     ("C->" . end-of-buffer) ; necessary b/c for some reason emacs in kde plasma doesn't seem to recognize M-< and only see is it as M-.
     ("C-<" . beginning-of-buffer)    ; necessary b/c for some reason emacs in kde plasma doesn't seem to recognize M-< and only see is it as M-.
     ("C-."   . org-todo)
     ("C-x /" . shrink-window-horizontally)
     ("C-x ." . org-archive-subtree-default)
     ("C-c 5" . yas-insert-snippet)
  
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

(define-key key-translation-map (kbd "C-c <up>") (kbd "↑"))
(define-key key-translation-map (kbd "C-c <down>") (kbd "↓"))
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

;; Set the default mode of the scratch buffer to Org
(setq initial-major-mode 'org-mode)
;; and change the message accordingly
(setq initial-scratch-message "\
# This buffer is for notes you don't want to save. You can use
# org-mode markup (and all Org's goodness) to organise the notes.
# If you want to create a file, visit that file with C-x C-f,
# then enter the text in that file's own buffer.

")

(use-package org-superstar
  :config
  (setq org-superstar-headline-bullets-list '("◉" "›" "※" "⌘"  "♡"  "♧" "⟳" "★ ")
        org-superstar-item-bullet-alist (quote ((42  . 33) (43 . 62) (45 . 45)))
        )
  (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1))))

; (use-package emojify
  ;  :hook (after-init . global-emojify-mode))

    (setq org-startup-indented t
          org-hide-emphasis-markers t
          org-startup-folded t
          org-ellipsis " »"
          org-hide-leading-stars t)
   
    (setq org-startup-shrink-all-tables t)

  ;strikethrough org-emphasis-alist
  (require 'cl)   ; for delete*
(setq org-emphasis-alist
      (cons '("+" '(:strike-through t :foreground "gray"))
            (delete* "+" org-emphasis-alist :key 'car :test 'equal)))

(setq-default mode-line-format '("%e"  mode-line-front-space
                                 mode-line-mule-info
                                 mode-line-modified
                                 mode-line-misc-info 
                                 mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
                                 (vc-mode vc-mode)
                                 "  " mode-line-modes  mode-line-end-spaces)
              )
(display-time-mode 1)

(use-package unicode-fonts)
(unicode-fonts-setup)

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

  (set-fontset-font "fontset-default" '(#x3400 . #x4dbf)
                    '("NanumBarunpen" . "unicode-bmp" ))
  (set-fontset-font "fontset-default" '(#x20000 . #x2EBEF)
                    '("NanumBarunpen" . "unicode-bmp" ))  


                                          ;https://www.reddit.com/r/emacs/comments/8tz1r0/how_to_set_font_according_to_languages_that_i/e1bjce6?utm_source=share&utm_medium=web2x&context=3
  (when (fboundp #'set-fontset-font)
    (set-fontset-font t 'korean-ksc5601	
                      ;; Noto Sans CJK: https://www.google.com/get/noto/help/cjk/
                      (font-spec :family "Nanum Gothic Coding")))
  (dolist (item '(("Nanum Gothic Coding" . 1.0)))
    (add-to-list 'face-font-rescale-alist item))

  (setq use-default-font-for-symbols nil)

  (prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)

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
(setq visual-fill-column-center-text t)

(use-package yasnippet)

   (define-key yas-minor-mode-map [backtab]    nil)

  ;; Strangely, just redefining one of the variations below won't work.
  ;; All rebinds seem to be needed.
  (define-key yas-minor-mode-map [(tab)]        nil)
  (define-key yas-minor-mode-map (kbd "TAB")    nil)
  (define-key yas-minor-mode-map (kbd "<tab>")  nil)

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



(use-package flyspell)
(define-key flyspell-mode-map (kbd "C-.") nil)

(use-package ace-jump-helm-line)
(eval-after-load "helm"
  '(define-key helm-map (kbd "C-'") 'ace-jump-helm-line))

(use-package helm-org-rifle)

(use-package org-wc)

(use-package org-auto-tangle
                :hook (org-mode . org-auto-tangle-mode)

                )
  (setq org-html-head "<link rel=\"stylesheet\" href=\"\\home\\betsy\\Dropbox\\Zettelkasten\\css\\tufte.css\" type=\"text/css\" />")
  (setq org-agenda-export-html-style "/home/betsy/Dropbox/Zettelkasten/css/tufte.css")
(setq org-export-with-toc nil)
(setq org-export-initial-scope 'subtree)
  (setq org-export-with-section-numbers nil)
(use-package org-clock-split)

(setq org-directory "~/Dropbox/Zettelkasten/" org-default-notes-file
       "~/Dropbox/Zettelkasten/inbox.org" org-archive-location
       "~/Dropbox/Zettelkasten/journal.org::datetree/" org-contacts-files (quote
       ("~/Dropbox/Zettelkasten/contacts.org")) ) (setq org-archive-reversed-order nil
       org-reverse-note-order t org-refile-use-cache t org-refile-allow-creating-parent-nodes t
       org-refile-use-outline-path 'file org-outline-path-complete-in-steps nil )

 (setq org-refile-targets '( ("~/Dropbox/Zettelkasten/journal.org" :maxlevel . 5)
                            ("~/Dropbox/Zettelkasten/events.org" :maxlevel . 1)
                            ("~/Dropbox/Zettelkasten/inbox.org" :maxlevel . 2)
                            ("~/Dropbox/Zettelkasten/readings.org" :maxlevel . 2)
                            ("~/Dropbox/Zettelkasten/contacts.org" :maxlevel . 1)
;                            ("~/Dropbox/Zettelkasten/projects.org" :maxlevel . 1)
                            ("~/Dropbox/Zettelkasten/ndd.org" :maxlevel . 3)
                            ("~/Dropbox/Zettelkasten/korean.org" :maxlevel . 1)  
                            ("~/Dropbox/Zettelkasten/habits.org" :maxlevel . 1)
                            ("~/Dropbox/Zettelkasten/baruch.org" :maxlevel . 5)
                            ("~/Dropbox/Zettelkasten/personal.org" :maxlevel . 2)
                            ("~/Dropbox/Zettelkasten/lis.org" :maxlevel . 2)
                            ("~/Dropbox/Zettelkasten/recipes.org" :maxlevel . 2)
                            ("~/Dropbox/Zettelkasten/sysadmin.org" :maxlevel . 1)
                            ("~/Dropbox/Zettelkasten/editing.org" :maxlevel . 2)
                            ("~/Dropbox/Zettelkasten/hold.org" :maxlevel . 1)
                            ("~/Dropbox/Baruch/Scholarship/OER-origins/open.org" :maxlevel . 5)
                            ("~/Dropbox/Zettelkasten/zettels.org" :maxlevel . 2) )


       )

 (defun my-org-refile-cache-clear () (interactive) (org-refile-cache-clear)) (define-key org-mode-map
   (kbd "C-0 C-c C-w") 'my-org-refile-cache-clear)




                                         ; Refile in a single go

                                         ;  (global-set-key (kbd "<f4>") 'org-refile)


 (setq org-id-link-to-org-use-id (quote create-if-interactive) org-id-method (quote org)
       org-return-follows-link t org-link-keep-stored-after-insertion nil org-goto-interface (quote
       outline-path-completion) org-clock-mode-line-total 'current)

                                         ;   (add-hook 'org-mode-hook (lambda ()
                                         ;   (org-sticky-header-mode 1)))


 (setq global-visible-mark-mode t)

(add-hook 'org-agenda-mode-hook
                                        (lambda ()
                                          (visual-line-mode -1)
                                          (toggle-truncate-lines 1)))


    (setq org-agenda-overriding-columns-format "%40ITEM %4EFFORT %4CLOCKSUM %16SCHEDULED %16DEADLINE ")
       (setq org-global-properties '(("EFFORT_ALL" . "0:05 0:10 0:15 0:20 0:25 0:30 0:35 0:40 0:45 0:50 0:55 0:60")))


  (setq org-agenda-files '(
                           "~/Dropbox/Zettelkasten/inbox.org"
                           "~/Dropbox/Zettelkasten/contacts.org"
                           "~/Dropbox/Zettelkasten/readings.org"
                           "~/Dropbox/Zettelkasten/journal.org"
                          "~/Dropbox/Zettelkasten/habits.org"
                           "~/Dropbox/Zettelkasten/ndd.org"
                       ;  "~/Dropbox/Zettelkasten/Scholarship/open.org"
                          "~/Dropbox/Zettelkasten/time.org"
                           "~/Dropbox/Zettelkasten/korean.org"     
                           "~/Dropbox/Zettelkasten/baruch.org"
                           "~/Dropbox/Zettelkasten/instruction.org"
                           "~/Dropbox/Zettelkasten/personal.org"
                           "~/Dropbox/Zettelkasten/lis.org"
                           "~/Dropbox/Zettelkasten/recipes.org"
                           "~/Dropbox/Zettelkasten/sysadmin.org"
                           "~/Dropbox/Zettelkasten/events.org"
                           "~/Dropbox/Zettelkasten/editing.org"
                           "~/Dropbox/Zettelkasten/zettels.org"
                           ))



  (setq org-agenda-skip-scheduled-if-done nil
        org-agenda-skip-deadline-if-done t
        org-agenda-skip-timestamp-if-done t
        org-agenda-skip-deadline-prewarning-if-scheduled t
        )

  (setq org-agenda-clockreport-parameter-plist
        (quote
         (:link t :maxlevel 4 :narrow 30 :tcolumns 1 :indent t :tags nil :hidefiles nil :fileskip0 t)))

  (setq org-clock-report-include-clocking-task t)
  (setq org-agenda-prefix-format
        '((agenda . " %i %-12:c%?-12t% s")
          (todo . " %i %-12:c")
          (tags . " %i %-12:c")
          (search . " %i %-12:c")))

  (setq org-agenda-with-colors t
        org-agenda-start-on-weekday nil  ;; this allows agenda to start on current day
        org-agenda-current-time-string "✸✸✸✸✸"
        org-agenda-start-with-clockreport-mode t
        org-agenda-dim-blocked-tasks 'invisible
        org-agenda-window-setup 'only-window
        )


  (setq org-agenda-format-date
        (lambda (date)
          (concat "\n---------------------------------\n" (org-agenda-format-date-aligned date))))


(setq org-agenda-sticky t)

    ;this makes it so that habits show up in the time grid
;    (setq org-agenda-sorting-strategy
 ; '((agenda time-up priority-down category-keep)
  ;  (todo   priority-down category-keep)
  ;  (tags   priority-down category-keep)
   ; (search category-keep))
;  )

(use-package org-super-agenda)
(org-super-agenda-mode 1)
(setq org-super-agenda-mode 1)
(setq org-agenda-custom-commands
      '(
        ("l" . "just todo lists") ;description for "l" prefix
        ("lt" tags-todo "untagged todos" "-{.*}")
        ("ls" alltodo "all unscheduled by type" (
                                         (org-agenda-todo-ignore-scheduled t)
                                         (org-super-agenda-groups
                                          '(
                                            (:discard (:todo "HABIT" :todo "PROJ" ))
                                            (:name "TO READ" :and (:tag "read"))
                                            (:name "Meetings" :and (:tag "meetings"))
                                            (:name "TO WRITE" :and (:tag "write"))
                                            (:name "TO PROCESS" :and (:tag "process"))
                                            (:name "look up" :and (:tag "lookup"))
                                            (:name "focus" :and (:tag "focus"))
                                            (:name "quick" :and (:tag "quick"))
                                            (:name "analog" :and (:tag "analog"))
                                            (:name "waiting" :and (:todo "WAIT"))
                                            )))

         (org-agenda-skip-function
                                        ;                                              '(org-agenda-skip-entry-if 'todo '("습관" "HOLD"  "PROJ" "AREA")) )
          ))

        ("lb" alltodo "all unscheduled by bucket" (
                                         (org-agenda-todo-ignore-scheduled t)
                                         (org-super-agenda-groups
                                          '(
                                            (:discard (:todo "HABIT" :todo "PROJ" ))
                                            (:name "NDD" :and (:tag "ndd"))
                                            (:name "Baruch" :and (:tag "baruch"))
                                            (:name "scholarship" :and (:tag "schol"))
                                            (:name "sysadmin" :and (:tag "sysadmin"))
                                            (:name "finances" :and (:tag "finances"))
                                            (:name "me" :and (:tag "me"))
                                            (:name "home" :and (:tag "home"))
                                            )))

         (org-agenda-skip-function
                                        ;                                              '(org-agenda-skip-entry-if 'todo '("습관" "HOLD"  "PROJ" "AREA")) )
          ))

        ("lx" "With deadline columns" alltodo "" 
         ((org-agenda-overriding-columns-format "%40ITEM %SCHEDULED %DEADLINE %EFFORT " )
          (org-agenda-view-columns-initially t)
          (org-agenda-sorting-strategy '(timestamp-up))
          (org-agenda-skip-function '(org-agenda-skip-entry-if 'todo '("습관" "HOLD" "HABIT" "WAIT" )) ) )      )
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

                                           (:name "waiting" :and (:todo "WAIT"))

                                           ))))))


     ("x" . "agenda + tasks") ;description for "x" prefix

     ("xt" "agenda by task type" ((agenda "" ((org-agenda-span 'day)
                                         (org-super-agenda-groups
                                          '((:name "Day" :time-grid t :order 1)))))
                             (alltodo "" ((org-agenda-overriding-header "")
                                          (org-super-agenda-groups '(

                                                                     (:discard (:todo "HABIT"))
                                                                     (:name "Projects" :and (:todo "PROJ"))
                                                                     (:name "TO READ" :and (:tag "read"))
                                                                     (:name "Meetings" :and (:tag "meetings"))
                                                                     (:name "TO WRITE" :and (:tag "write"))
                                                                     (:name "TO PROCESS" :and (:tag "process"))
                                                                     (:name "look up" :and (:tag "lookup"))
                                                                     (:name "focus" :and (:tag "focus"))
                                                                     (:name "quick" :and (:tag "quick"))

                                                                     (:name "away from computer" :and (:tag "analog"))
                                                                     (:name "waiting" :and (:todo "WAIT"))

                                                                     )))))
         ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo '("습관" "HOLD"  "AREA")) )
          (org-agenda-todo-ignore-scheduled t) ))






        )

      )



;list of projects
 (add-to-list 'org-agenda-custom-commands '(
                                            "p" todo "PROJ" ))
 (add-to-list 'org-agenda-custom-commands '(
                                            "w" todo "WAIT" ))
 (add-to-list 'org-agenda-custom-commands '(
                                            "f" "two-week view" agenda "" ((org-agenda-span 14))
                                            ))

 (add-to-list 'org-agenda-custom-commands '(
                                            "o" "three-week view" agenda "" ((org-agenda-span 21))
                                            ))

 (add-to-list 'org-agenda-custom-commands '(
                                            "u" "3 month" agenda "" ((org-agenda-span 90))
                                            ))

 (add-to-list 'org-agenda-custom-commands  '("z" "agenda + buckets" ((agenda "" ((org-agenda-span 'day)
                                                                                 (org-super-agenda-groups
                                                                                  '((:discard (:todo "WAIT"))
                                                                                    (:name "Day" :time-grid t :order 1)
                                                                                    (:name "PRIORITY" :priority "A" :order 2)
                                                                                    (:name "baruch" :and (:tag "baruch") :order 5)
                                                                                    (:name "ndd" :and (:tag "ndd") :order 10)
                                                                                    (:name "home" :tag "home" :order 15)
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
                                                 ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo '("습관" "HOLD"  "AREA")) )
                                                  (org-agenda-todo-ignore-scheduled t) )))


 (add-to-list 'org-agenda-custom-commands      '("xn" "agenda + ndd" ((agenda "" ((org-agenda-span 'day)
                                                                                  (org-super-agenda-groups
                                                                                   '((:name "Day" :time-grid t :order 1)))))
                                                                      (alltodo "" ((org-agenda-overriding-header "")
                                                                                   (org-super-agenda-groups '(

                                                                                                              (:discard (:todo "HABIT"))
                                                                                                              (:name "leadership" :and (:tag "lc"))
                                                                                                              (:name "tongsol" :and (:tag "tongsol"))
                                                                                                              (:name "keep" :and (:tag "keep"))
                                                                                                              (:name "archives" :and (:tag "archives"))
                                                                                                              (:name "ndd" :and (:tag "ndd"))


                                                                                                              )))))
                                                 ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo '("습관" "HOLD"  "AREA")) )
                                                  (org-agenda-todo-ignore-scheduled t) )))


(add-to-list 'org-agenda-custom-commands '(
                                            "c" "class"
                                           ((agenda "" ((org-agenda-span 'day))
                                             (tags-todo "1015"))
                                            )))

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
        ("IN-PROG" :weight bold :underline nil :inherit org-todo :foreground "#c9e467")
         ("HABIT" :weight bold :underline nil :inherit org-todo :foreground "forestgreen")
        ("PROJ" :foreground "magenta")
        ("HOLD" :weight bold :underline nil :inherit org-todo :foreground "#336b87")))


(use-package org-edna)
(org-edna-mode 1)
(setq org-log-done 'time)

(setq org-capture-templates
        '(
          ("a" "current activity" entry (file+olp+datetree "~/Dropbox/Zettelkasten/journal.org") "** %? \n" :clock-in t :clock-keep t :kill-buffer nil)

          ("c" "calendar" entry (file "~/Dropbox/Zettelkasten/inbox.org" ) "** %^{EVENT}\n%^t\n%a\n%?")

          ("e" "emacs log" item (id "config") "%U %a %?" :prepend t) 
          ("f" "Anki Flashcards")
          ("fb" "Anki basic" entry (file+headline "~/Dropbox/Zettelkasten/anki.org" "Dispatch Shelf") "* %<%H:%M>   \n:PROPERTIES:\n:ANKI_NOTE_TYPE: Basic \n:ANKI_DECK: 위저드\n:END:\n** Front\n%^{Front}\n** Back\n%^{Back}%?")

          ("fc" "Anki cloze" entry (file+headline "~/Dropbox/Zettelkasten/anki.org" "Dispatch Shelf") "* %<%H:%M>   \n:PROPERTIES:\n:ANKI_NOTE_TYPE: Cloze\n:ANKI_DECK: Default\n:END:\n** Text\n%^{Front}%?\n** Extra")

          ("j" "journal" entry (file+olp+datetree "~/Dropbox/Zettelkasten/journal.org") "** journal :journal: \n%U  \n%?\n\n"   :clock-in t :clock-resume t :clock-keep nil :kill-buffer nil :append t ) 
;removed "scheduled" from todo entries
     ;added it back in [2022-07-09 Sat]
          ("t" "todo" entry (file "~/Dropbox/Zettelkasten/inbox.org") "* TODO %? \nSCHEDULED: %t \n%a\n" :prepend nil)
          ("r" "resistance" item (file+headline "~/Dropbox/Zettelkasten/inbox.org" "resistance") "%U\n*What resistance am I facing?*\n%?\n*What should I be working on? / What is my plan?*\n"  )
          ("w" "org-protocol" entry (file "~/Dropbox/Zettelkasten/inbox.org")
           "* %a \nSCHEDULED: %t %?\n%:initial" )
          ("x" "org-protocol" entry (file "~/Dropbox/Zettelkasten/inbox.org")
           "* TODO %? \nSCHEDULED: %t\n%a\n\n%:initial" )
          ("p" "org-protocol" table-line (id "pens")
           "|%^{Pen}|%A|%^{Price}|%U|" )

          ("y" "org-protocol" item (id "resources")
           "[ ] %a %:initial" )

          ))

(setq org-clock-out-remove-zero-time-clocks t)

(use-package org-mru-clock
  :bind     ("M-<f3>" . org-mru-clock-in)
  :config
  (setq org-mru-clock-how-many 80)
  (setq org-mru-clock-keep-formatting t)
  (setq org-mru-clock-completing-read 'helm--completing-read-default)
  )

(setq org-clock-mode-line-total 'current)

(use-package org-alert)

  (setq org-alert-interval 300 ;check agenda every 5 minutes
      org-alert-notify-cutoff 10 ;notify 10 min before event
      org-alert-notify-after-event-cutoff 10) ;stop notifying 10 min after
    (use-package chronos
      :config
      (setq chronos-expiry-functions '(chronos-shell-notify
                                       chronos-dunstify
                                       chronos-buffer-notify
                                       ))
      (setq chronos-notification-wav "~/Dropbox/emacs/.emacs.d/sms-alert-1-daniel_simon.wav")
      )
    (use-package helm-chronos
      :config
      (setq helm-chronos-standard-timers
            '(
              ;;intermittent fasting
              "=13:00/end fast + =21:00/begin fast"
"0:19:30/vineyard"
"0:14:30/lights"
              ))

      )

        (setq chronos-shell-notify-program "mpv"
            chronos-shell-notify-parameters '("~/Dropbox/emacs/.emacs.d/sms-alert-1-daniel_simon.wav")


  )

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

(use-package pomm)
(use-package org-pomodoro)
(setq org-pomodoro-ticking-sound-p t)
(setq org-pomodoro-finished-sound-p t) ;i couldn't remember why this is nil [2021-10-16 Sat]:-- this is nil b/c the short break sound and long break sound signal the end of the pomodoro
(setq org-pomodoro-overtime-sound "/home/betsy/.emacs.d/sms-alert-1-daniel_simon.wav")
(setq org-pomodoro-short-break-sound "/home/betsy/.emacs.d/sms-alert-1-daniel_simon.wav")
(setq org-pomodoro-long-break-sound  "/home/betsy/.emacs.d/sms-alert-1-daniel_simon.wav")
(setq org-pomodoro-finished-sound  "/home/betsy/.emacs.d/sms-alert-1-daniel_simon.wav")

(setq org-pomodoro-keep-killed-pomodoro-time t)
(setq org-pomodoro-manual-break t)
(setq org-pomodoro-ticking-sound-states '(:pomodoro :overtime))
(setq org-pomodoro-length 25
      org-pomodoro-short-break-length 5)

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

(use-package emms)

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
    
                     (setq pdf-view-continuous nil)
                  (add-hook 'pdf-view-mode-hook 'pdf-view-restore-mode)
         (add-hook 'pdf-view-mode-hook (lambda () (visual-fill-column-mode 0)))
    
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
    
;              (use-package pdf-continuous-scroll-mode
 ;               :quelpa (pdf-continuous-scroll-mode :fetcher github :repo "dalanicolai/pdf-continuous-scroll-mode.el"))
  ;      (add-hook 'pdf-view-mode-hook 'pdf-continuous-scroll-mode)
    
    
    ;;to get PDFS to open on a specific page. added 12/27/21 from this link: https://emacs.stackexchange.com/questions/30344/how-to-link-and-open-a-pdf-file-to-a-specific-page-skim-adobe. haven't tested it out yet. 
        (org-add-link-type "pdf" 'org-pdf-open nil)
    
    (defun org-pdf-open (link)
      "Where page number is 105, the link should look like:
       [[pdf:/path/to/file.pdf#page=105][My description.]]"
      (let* ((path+page (split-string link "#page="))
             (pdf-file (car path+page))
             (page (car (cdr path+page))))
        (start-process "view-pdf" nil "evince" "--page-index" page pdf-file)))

(use-package org-roam
    :ensure t
    :init
    (setq org-roam-v2-ack t)
    :custom
    (setq org-roam-directory (file-truename "~/Dropbox/Zettelkasten/Zettels"))
    (org-roam-db-autosync-mode)
    :bind (("C-c n l" . org-roam-buffer-toggle)
           ("C-c n f" . org-roam-node-find)
           ("C-c n i" . org-roam-node-insert))
    :config
    (org-roam-setup))

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
(setq org-roam-directory "~/Dropbox/Zettelkasten/Zettels/")

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
  
  
  (setq bibtex-completion-notes-template-one-file "\n* ${author} (${year}). /${title}/. ${journal}. \n:PROPERTIES:\n:Custom_ID: ${=key=}\n:ID: ${=key=}\n:CITATION: ${author} (${year}). /${title}/. /${journal}/, /${volume}/(${number}), ${pages}. ${publisher}. ${url}\n:DISCOVERY:\n:DATE_ADDED: %t\n:READ_STATUS:\n:INGESTED:\n:FORMAT:\n:INTERLEAVE_PDF: ../Library/BIBTEX/$(=key=).pdf\n:TYPE:\n:AREA:\n:END:")
  
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
          org-noter-insert-note-no-questions nil
          org-noter-insert-selected-text-inside-note t
          ))
                                          ;       (setq org-noter-notes-window-location 'other-frame)
                                          ;      (setq org-noter-default-heading-title "p. $p$") 
;    (use-package interleave 
 ;     :defer t
  ;    )

;; Spell checking (requires the ispell software)
  (add-hook 'bibtex-mode-hook 'flyspell-mode)
  
  ;; Change fields and format
  (setq bibtex-user-optional-fields '(("keywords" "Keywords to describe the entry" "")
                                      ("file" "Link to document file." ":"))
        bibtex-align-at-equal-sign t)
  
    ;; BibLaTeX settings
  ;; bibtex-mode
;  (setq bibtex-dialect 'biblatex)

(setq bibtex-autokey-additional-names "etal"
      bibtex-autokey-name-separator "-"
      bibtex-autokey-name-year-separator "_"
      bibtex-autokey-names 2
      bibtex-autokey-titleword-length 0
            bibtex-autokey-titleword-separator ""
    bibtex-autokey-year-length 4
  bibtex-autokey-name-case-convert-function 'capitalize
      )

(use-package citeproc)
    (use-package org-ref-cite
      :load-path "/home/betsy/Dropbox/emacs/.emacs.d/lisp/org-ref-cite-main/"
      :config
      ;; I like green links
      (set-face-attribute 'org-cite nil :foreground "DarkSeaGreen4")
      (set-face-attribute 'org-cite-key nil :foreground "forest green")
      (setq
       org-cite-global-bibliography bibtex-completion-bibliography
       ;; https://github.com/citation-style-language/styles
       ;; or https://www.zotero.org/styles
       org-cite-csl-styles-dir "/home/betsy/Dropbox/emacs/.emacs.d/lisp/org-ref-cite-main/csl-styles/"
       org-cite-insert-processor 'org-ref-cite
       org-cite-follow-processor 'org-ref-cite
       org-cite-activate-processor 'org-ref-cite
       org-cite-export-processors '((html csl "elsevier-with-titles.csl")
                                    (latex org-ref-cite)
                                    (t basic))))


   ;from https://blog.tecosaur.com/tmio/2021-07-31-citations.html
(require 'oc-natbib)
(require 'oc-csl)
;  (setq org-cite-export-processors 'csl)
  (setq org-cite-csl-styles-dir "~/Zotero/styles")

(require 'ox-extra)
  (ox-extras-activate '(ignore-headlines))



  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
(with-eval-after-load 'ox-latex
(add-to-list 'org-latex-classes
             '("org-plain-latex"
               "\\documentclass{article}
           [NO-DEFAULT-PACKAGES]
           [PACKAGES]
           [EXTRA]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))
 (add-to-list 'org-latex-classes
               '("apa6"
                 "\\documentclass{apa6}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")

(use-package mu4e
:ensure nil
:config

;; This is set to 't' to avoid mail syncing issues when using mbsync
(setq mu4e-change-filenames-when-moving t)

;; Refresh mail using isync every 10 minutes
(setq mu4e-update-interval (* 10 60))
(setq mu4e-get-mail-command "mbsync -a")
(setq mu4e-maildir "/home/betsy/.thunderbird/mgzibeze.default-release/ImapMail/")

(setq mu4e-contexts
      (list
       ;; Work account
       (make-mu4e-context
        :name "Work"
        :match-func
          (lambda (msg)
            (when msg
              (string-prefix-p "/Gmail" (mu4e-message-field msg :maildir))))
        :vars '((user-mail-address . "systemcrafters.test@gmail.com")
                (user-full-name    . "System Crafters Gmail")
                (mu4e-drafts-folder  . "/Gmail/[Gmail]/Drafts")
                (mu4e-sent-folder  . "/Gmail/[Gmail]/Sent Mail")
                (mu4e-refile-folder  . "/Gmail/[Gmail]/All Mail")
                (mu4e-trash-folder  . "/Gmail/[Gmail]/Trash")))))

(setq mu4e-maildir-shortcuts
      '(("/Gmail/Inbox"             . ?i)
        ("/Gmail/[Gmail]/Sent Mail" . ?s)
        ("/Gmail/[Gmail]/Trash"     . ?t)
        ("/Gmail/[Gmail]/Drafts"    . ?d)
        ("/Gmail/[Gmail]/All Mail"  . ?a))))



(load "bookmark+")
(load "clipboard2org")
 (load "hangul")
 (load "org-book")
 (load "org-super-links")
 (load "ov-highlight")
 (load "annot")
 (load "backup-each-save")

   (load "dired+")

(use-package modus-themes)
;  (modus-themes-load-themes)
 (load-theme 'modus-vivendi t)


;to fontify done checkbox items
(font-lock-add-keywords
 'org-mode
 `(("^[ \t]*\\(?:[-+*]\\|[0-9]+[).]\\)[ \t]+\\(\\(?:\\[@\\(?:start:\\)?[0-9]+\\][ \t]*\\)?\\[\\(?:X\\|\\([0-9]+\\)/\\2\\)\\][^\n]*\n\\)" 1 'org-headline-done prepend))
 'append)
