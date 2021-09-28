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

                    (use-package ace-jump-mode)
                             (global-set-key (kbd "M-z") 'ace-jump-mode)
     (global-unset-key (kbd "C-z"))
          (global-set-key (kbd "C-z") 'ace-jump-helm-line)
(setq tab-bar-mode nil)

(use-package deft
  :ensure t
  :bind
  ([f8] . deft))
(setq deft-directory "c:/Users/eyoon/Dropbox (Personal)/Zettelkasten/"
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

(setq org-startup-indented t
        org-hide-emphasis-markers t
        org-startup-folded t
        org-ellipsis " [...] "
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

(setq-default mode-line-format '("%e"  mode-line-front-space
                                 mode-line-mule-info
                                   mode-line-modified
                                   mode-line-misc-info 
                                   mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
  (vc-mode vc-mode)
  "  " mode-line-modes  mode-line-end-spaces)
              )
  (display-time-mode 1)

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

(setq org-directory "c:/Users/eyoon/Dropbox (Personal)/Zettelkasten/"
      org-default-notes-file "c:/Users/eyoon/Dropbox (Personal)/Zettelkasten/inbox.org"
      org-archive-location "c:/Users/eyoon/Dropbox (Personal)/Zettelkasten/journal.org::datetree/"
      org-contacts-files (quote ("c:/Users/eyoon/Dropbox (Personal)/Zettelkasten/contacts.org"))
      org-roam-directory "c:/Users/eyoon/Dropbox (Personal)/Zettelkasten/Zettels/"
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


(setq org-id-link-to-org-use-id t
      org-id-method (quote org)
      org-return-follows-link t
      org-link-keep-stored-after-insertion nil
      org-goto-interface (quote outline-path-completion)
      org-clock-mode-line-total 'current)

                                        ;   (add-hook 'org-mode-hook (lambda () (org-sticky-header-mode 1)))


(setq global-visible-mark-mode t)

(setq org-agenda-overriding-columns-format "%40ITEM %SCHEDULED %DEADLINE ")


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
(setq org-agenda-skip-scheduled-if-done t
      org-agenda-skip-deadline-if-done t
      org-agenda-skip-timestamp-if-done t
      org-agenda-skip-deadline-prewarning-if-scheduled t
      )

(setq org-agenda-clockreport-parameter-plist
      (quote
       (:link t :maxlevel 4 :narrow 30 :tags t :tcolumns 1 :indent t :hidefiles t :fileskip0 t)))
