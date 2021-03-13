(use-package centered-window-mode)
(use-package centered-cursor-mode)

(use-package solarized

  :init (load-theme 'solarized-light 'no-confirm)
  :config
)

(use-package company-auctex)
(company-auctex-init)


(use-package tex :ensure auctex)

     (setq TeX-auto-save t)
     (setq TeX-parse-self t)
(setq-default TeX-master nil)

;(use-package html-preview)

(use-package company-bibtex)
 (add-to-list 'company-backends 'company-bibtex)

 (setq company-bibtex-bibliography
 '("~/Zettelkasten/references.bib"))

(setq visible-bell nil)
(setq org-startup-indented t)
(setq org-hide-emphasis-markers t)
(setq org-hide-leading-stars t) 
(setq org-startup-with-inline-images t)
(setq org-startup-align-all-tables t)
(setq org-startup-folded t)
(setq org-ellipsis " ⬎ " )
(use-package org-bullets
        :init 
        (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))) (setq org-bullets-bullet-list (quote ("◉""»""⚬"  "✧""▸"   ))))
(setq sentence-end-double-space nil)

(setq initial-major-mode 'org-mode)
    (setq org-support-shift-select (quote always))
    (delete-selection-mode) ;allows to delete selected text by typing
    (fset 'yes-or-no-p 'y-or-n-p)
      


	(use-package smartparens
        :init
        (show-smartparens-global-mode 1))
	(smartparens-global-mode 1)
	(setq show-paren-style 'expression)


(setq blink-matching-paren-dont-ignore-comments nil)

(eval-after-load "flyspell"
  '(define-key flyspell-mode-map (kbd "C-.") nil))


      (global-unset-key (kbd "C-z"))     
      (global-unset-key (kbd "M-c"))

      (global-unset-key (kbd "S-SPC"))
      (bind-keys ("C-+"   . text-scale-increase)
                 ("C--"   . text-scale-decrease)
                 ("C-c l" . org-store-link)
	      ("C-c k" . toggle-korean-input-method)
                 ("C-."   . org-todo)
                 ("C-x /" . shrink-window-horizontally)
                 ("C-x ." . org-archive-subtree-default)
                 ("C-c n" . org-schedule)
                 ("M-="   . count-words)
                 ("M-x"   . helm-M-x)
                 ("M-_" . insert-pair)
                 ("M-*" . insert-pair)
                 ("M-\/" . insert-pair)
                 ("C-c b" . list-bookmarks)
                 ("C-c p" . bh/punch-in )
                 ("C-<kp-6>" . xah-select-block)
                 ("C-x j" . helm-org-in-buffer-headings)
                 ("C-c a" . helm-org-agenda-files-headings)
                 ([f1] . org-capture)
                 ([f2] . org-clock-in)
                 ([f3] . helm-buffers-list)           
                 ([f4] . org-refile)
                 ([f5] . helm-projectile)
                 ([f6] . helm-bibtex-with-local-bibliography)
                 ([f7] . org-agenda)
                 ([f8] . deft)
                 ([f9] . org-tree-to-indirect-buffer)
([f12] . bury-buffer)
)


      (define-key key-translation-map (kbd "C-c <up>") (kbd "🡑"))
      (define-key key-translation-map (kbd "C-c <down>") (kbd "🡓"))
      (define-key key-translation-map (kbd "C-c =") (kbd "≠"))
      (define-key key-translation-map (kbd "C-c <right>") (kbd "→"))
      (define-key key-translation-map (kbd "C-c m") (kbd "—"))
      (define-key key-translation-map (kbd "C--") (kbd "–"))

      (define-key key-translation-map (kbd "C-c d") (kbd "Δ"))
      (define-key key-translation-map (kbd "C-c C-<right>")  (kbd "🡆"))
      (define-key key-translation-map (kbd "C-c z")  (kbd "∴"))
     ; (define-key key-translation-map (kbd "C-c s") (kbd "ß"))
    ;  (define-key key-translation-map (kbd "C-c o") (kbd "ö"))

      ;(define-key key-translation-map (kbd "C-c a") (kbd "ä"))
     ; (define-key key-translation-map (kbd "C-c u") (kbd "ü"))

(setq bookmark-default-file "~/Sync/emacs/bookmarks")
   (setq bookmark-save-flag 1)
(use-package dired+)
   (use-package ido)
   (ido-mode t)

   (use-package deft
     :ensure t)
   (setq deft-directory "~/Sync/Zettelkasten/")
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
   (setq deft-auto-save-interval 1.0)
   (add-hook 'after-init-hook 'deft)
   (add-hook 'after-init-hook 'org-clock-persistence-insinuate)

   (use-package helm
     :config (helm-mode 1))
    (use-package projectile)
    (use-package helm-projectile)

(setq org-capture-templates '(("t" "todo" entry (file "~/Sync/Zettelkasten/inbox.org") "* TODO %? \n%a\n\n\n" :prepend t)
                                    ("j" "journal" entry (file+datetree "~/Sync/Zettelkasten/journal.org") "** %? %<%H:%M> \n\n\n\n" :kill-buffer nil :clock-in nil :clock-keep t ) 
                              ;%U is inactive date and timestamp
                              ("l" "emacs log" item (file+headline "~/Sync/Zettelkasten/org.org" "Emacs config changes") "%U %?" :prepend t) 

                              ("h" "health" item (file+headline "~/Sync/Zettelkasten/personal.org" "Health") "%U %?" :prepend t) 

			("f" "finances" item (file+headline "~/Sync/Zettelkasten/inbox.org" "Income/Expenses") "%U %?" :prepend t)


                                    ("c" "calendar" entry (file "~/Sync/Zettelkasten/gcal.org" ) "* %?\n\n%^T\n\n:PROPERTIES:\n\n:link: %a\n:location: %^{location}\n\n\n:END:")

                                    ("e" "expense" table-line (file+headline "~/Sync/Zettelkasten/budget.org" "Expenses to be filed") "|%t|%^{amount}|%a|%^{category|LIS|Food|Transportation|Clothing}|%?|" :append t :kill-buffer nil)
                                    ))


;this prevents org-capture from replacing any windows. it just adds. 
(defun my-org-capture-place-template-dont-delete-windows (oldfun args)
  (cl-letf (((symbol-function 'delete-other-windows) 'ignore))
    (apply oldfun args)))

(with-eval-after-load "org-capture"
  (advice-add 'org-capture-place-template :around 'my-org-capture-place-template-dont-delete-windows))

;   (setq org-special-ctrl-a/e t)
(setq org-cycle-separator-lines 0)
   ;this allows me to collapse a subtree when not on its headline
;   (setq org-cycle-emulate-tab 'white)
    (defun xah-select-current-block ()
      "Select the current block of text between blank lines.

		URL `http://ergoemacs.org/emacs/modernization_mark-word.html'
		Version 2016-07-22"
      (interactive)
      (let (-p1)
	(progn
	  (if (re-search-backward "\n[ \t]*\n" nil "move")
	      (progn (re-search-forward "\n[ \t]*\n")
		     (setq -p1 (point)))
	    (setq -p1 (point)))
	  (re-search-forward "\n[ \t]*\n" nil "move"))
	(set-mark -p1)))

    (defun xah-select-block ()
      "Select the current/next block of text between blank lines.
		If region is active, extend selection downward by block.

		URL `http://ergoemacs.org/emacs/modernization_mark-word.html'
		Version 2016-07-22"
      (interactive)
      (if (region-active-p)
	  (re-search-forward "\n[ \t]*\n" nil "move")
	(xah-select-current-block)))

(use-package yasnippet                  ; Snippets
  :ensure t
  :config
  (validate-setq
   yas-verbosity 1                      ; No need to be so verbose
   yas-wrap-around-region t)

  (with-eval-after-load 'yasnippet
    (validate-setq yas-snippet-dirs '(yasnippet-snippets-dir)))

  (yas-reload-all)
  (yas-global-mode))

(use-package yasnippet-snippets         ; Collection of snippets
  :ensure t)

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



(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
         (next-win-buffer (window-buffer (next-window)))
         (this-win-edges (window-edges (selected-window)))
         (next-win-edges (window-edges (next-window)))
         (this-win-2nd (not (and (<= (car this-win-edges)
                     (car next-win-edges))
                     (<= (cadr this-win-edges)
                     (cadr next-win-edges)))))
         (splitter
          (if (= (car this-win-edges)
             (car (window-edges (next-window))))
          'split-window-horizontally
        'split-window-vertically)))
    (delete-other-windows)
    (let ((first-win (selected-window)))
      (funcall splitter)
      (if this-win-2nd (other-window 1))
      (set-window-buffer (selected-window) this-win-buffer)
      (set-window-buffer (next-window) next-win-buffer)
      (select-window first-win)
      (if this-win-2nd (other-window 1))))))

(global-set-key (kbd "C-x |") 'toggle-window-split)

(defun kill-other-buffers ()
     "Kill all other buffers."
     (interactive)
     (mapc 'kill-buffer 
           (delq (current-buffer) 
                 (remove-if-not 'buffer-file-name (buffer-list)))))

(use-package org-ref)
  (setq reftex-default-bibliography '("~/Sync/Zettelkasten/references.bib"))

  ;; see org-ref for use of these variables
  (setq org-ref-bibliography-notes "~/Sync/Zettelkasten/notes.org"
        org-ref-default-bibliography '("~/Sync/Zettelkasten/references.bib")
        org-ref-pdf-directory "~/Sync/Spring 2019/PDFs/")

  (setq bibtex-completion-bibliography "~/Sync/Zettelkasten/references.bib"

        bibtex-completion-notes-path "~/Sync/Zettelkasten/notes.org")

  ;; open pdf with system pdf viewer (works on mac)
  (setq bibtex-completion-pdf-open-function
    (lambda (fpath)
      (start-process "open" "*open*" "open" fpath)))


;  (setq pdf-view-continuous nil)

;  (setq bibtex-autokey-year-title-separator "")
 ; (setq bibtex-autokey-titleword-length 0)


  (setq bibtex-completion-notes-template-one-file "\n* ${author} (${year}). ${title}.\n:PROPERTIES:\n:Custom_ID: ${=key=}\n:CITATION: ${author} (${year}). /${title}/. /${journal}/, /${volume}/(${number}), ${pages}. ${address}: ${publisher}. ${url}\n:END:")

(use-package org-noter
     :ensure t
     :config (setq org-noter-property-doc-file "INTERLEAVE_PDF")
     (setq org-noter-property-note-location "INTERLEAVE_PAGE_NOTE") 
     (setq org-noter-notes-window-location 'other-frame)
     (setq org-noter-default-heading-title "p. $p$") 
     (setq org-noter-auto-save-last-location t))

(use-package interleave)

(setq ebib-bib-search-dirs '("~/Sync/Zettelkasten"))

(setq org-agenda-files (quote
                               ("~/Sync/Zettelkasten/inbox.org" 
       "~/Sync/Zettelkasten/lis.org"  
                                "~/Sync/Zettelkasten/ndd.org"
                                "~/Sync/Zettelkasten/gcal.org" 
                                "~/Sync/Zettelkasten/journal.org"
                                "~/Sync/Zettelkasten/work.org"
                                "~/Sync/Zettelkasten/budget.org"
                                "~/Sync/Zettelkasten/personal.org"
"~/Sync/Zettelkasten/org.org"
                           "~/Sync/Zettelkasten/notes.org"
)))



       (setq  org-agenda-sorting-strategy 
       '((agenda time-up)
         (todo priority-down category-keep)
         (tags priority-down category-keep)
         (search category-keep)))

       (setq org-log-done 'note)
       (setq org-agenda-skip-deadline-if-done t)
       (setq org-agenda-skip-timestamp-if-done t)
       (setq org-agenda-skip-scheduled-if-done t)
       (setq org-agenda-current-time-string "✸✸✸✸✸✸ NOW ✸✸✸✸✸✸✸✸✸✸")
    ;   (setq org-agenda-time-grid 
     ;        '((daily weekly today require-timed remove-match)
      ;         (800 1000 1200 1400 1600 1800 2000)
       ;        "......" "----------------"))
       (setq org-agenda-start-with-clockreport-mode t)
       (setq org-agenda-span (quote day))
       (setq org-agenda-jump-prefer-future t)
       (setq org-agenda-window-setup (quote only-frame))
       (setq org-agenda-with-colors t)
       (setq org-agenda-skip-deadline-prewarning-if-scheduled t)
       (setq org-agenda-start-on-weekday nil)
    (setq org-deadline-warning-days 4)

(setq org-agenda-custom-commands '(
                                   ("x" agenda)
                                   ("y" agenda*) ;only entries w/times 
                                   ("n" "next/in progress" todo "TODO")
                                   ("u" "Undated tasks" todo "" ((org-agenda-todo-ignore-with-date t)))
                                   ("s" "not yet scheduled" todo "" ((org-agenda-todo-ignore-scheduled t)))
				       ("d" "day + tasks" ((todo "!")(agenda "") (todo "NEXT")(todo "~")))


             ))

                                                         (setq org-stuck-projects '("/PROJECT" ("NEXT") nil ""))
                                              (setq org-log-note-clock-out nil)

(setq org-enforce-todo-dependencies t)

 (defun mm/org-insert-trigger ()
    "Automatically insert chain-find-next trigger when entry becomes NEXT"
    (cond ((equal org-state "NEXT")
           (unless org-depend-doing-chain-find-next
             (org-set-property "TRIGGER" "chain-find-next(NEXT,from-top,todo-only,priority-up,effort-down)")))
          ((not (member org-state org-done-keywords))
           (org-delete-property "TRIGGER"))))

  (add-hook 'org-after-todo-state-change-hook 'mm/org-insert-trigger)

(set-fontset-font "fontset-default" '(#x1100 . #xffdc)
		  '("NanumBarunGothic" . "unicode-bmp" ))
(set-fontset-font "fontset-default" '(#xe0bc . #xf66e) 
		  '("NanumBarunGothic" . "unicode-bmp"))
(set-fontset-font "fontset-default" '(#x2091 . #x21ff)     
		  (font-spec :family "DejaVu Sans Mono" :size 20)) 

(setq use-default-font-for-symbols nil)

(use-package unicode-fonts
  :ensure t
  :disabled t
  :init (unicode-fonts-setup))

(setq frame-title-format (list (format "%s %%S: %%j " (system-name))
			       '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

(find-file "~/Sync/emacs/gallium.org")
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq inhibit-startup-screen t)
					;(setq split-height-threshold nil)
					; prefer horizontal split. 
(setq split-width-threshold 9999)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

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

;  (setq fill-column 100)


     ; (global-visual-line-mode 1) 
      ;(use-package visual-fill-column
;	:ensure t)

      (add-hook 'deft-mode-hook #'visual-line-mode)

 ;     (setq visual-fill-column-center-text t)

  ;   (setq fill-flowed-encode-column 80)
   ;  (setq message-fill-column nil)
    ; (setq visual-fill-column-center-text t)

   ;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph    
       (defun unfill-paragraph (&optional region)
	 "Takes a multi-line paragraph and makes it into a single line of text."
	 (interactive (progn (barf-if-buffer-read-only) '(t)))
	 (let ((fill-column (point-max))
	       ;; This would override `fill-column' if it's an integer.
	       (emacs-lisp-docstring-fill-column t))
	   (fill-paragraph nil region)))

(setq org-table-default-size "2x1")

(setq org-list-demote-modify-bullet
      '(("+" . "-") ("-" . "+") ))
(setq org-list-allow-alphabetical t)
(setq org-list-indent-offset 1)
(setq org-checkbox-hierarchical-statistics t)

(setq org-refile-use-outline-path (quote file))

    (setq org-refile-targets '((nil :maxlevel . 3)
                               (org-agenda-files :maxlevel . 2)
   		     ))

    (setq org-outline-path-complete-in-steps nil) 

  ; Refile in a single go

  ;  (global-set-key (kbd "<f4>") 'org-refile)

    (setq org-refile-allow-creating-parent-nodes 'confirm)

;(setq org-archive-location "~/Sync/Zettelkasten/journal.org::datetree/")
  (setq org-archive-location "~/Sync/Zettelkasten/journal.org::datetree/* Finished tasks")

;autocompletion
   (use-package company
     :ensure t
     :init (global-company-mode)
     :config (company-mode 1))     

					   ;spellcheck
   (use-package flyspell-correct-helm)
;(add-hook 'org-mode-hook 'turn-on-flyspell)

(setq org-return-follows-link nil)

(use-package org-chef
  :ensure t)

(use-package org-trello)


(custom-set-variables '(org-trello-files '("~/Zettelkasten/recipes.org")))

(setq csv-separators '(":" "	"))
 (setq org-image-actual-width 350)
 (setq org-sparse-tree-default-date-type 'all)


					 ;(require 'smart-quotes) 


 (add-to-list 'insert-pair-alist (list ?\* ?\*))
 (add-to-list 'insert-pair-alist (list ?\_ ?\_))
 (add-to-list 'insert-pair-alist (list ?\/ ?\/))
					 ;   (add-to-list 'insert-pair-alist (list ?\" ?\"))

(setq browse-url-browser-function 'browse-url-generic
        browse-url-generic-program "firefox")

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

;  (defun shr-html2text ()
 ;   "Replacement for standard html2text using shr."
  ;  (interactive)
   ; (let ((dom (libxml-parse-html-region (point-min) (point-max)))
    ;      (shr-width fill-column)
    ;      (shr-inhibit-images t)
     ;     (shr-bullet " "))
      ;    (erase-buffer)
       ;   (shr-insert-document dom)
        ;  (goto-char (point-min))))

  (eval-after-load 'shr  
       '(progn (setq shr-width -1)  
               (defun shr-fill-text (text) text)  
               (defun shr-fill-lines (start end) nil)  
               (defun shr-fill-line () nil)))

(setq debug-on-error nil)

(require 'cl) 

;Non-nil means insert state change notes and time stamps into a drawer.
(setq org-log-into-drawer t)


(setq org-agenda-use-tag-inheritance nil)
(setq org-use-tag-inheritance nil)
(require 'org-inlinetask)
(setq org-inlinetask-min-level 7)



(setq org-complete-tags-always-offer-all-agenda-tags t)
;(setq org-tags-column -80)
(setq org-tags-match-list-sublevels (quote indented))
(setq tags-add-tables nil)

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

(setq org-babel-load-languages '((emacs-lisp . t)
				    (css . t)))
     (setq org-edit-src-content-indentation 3)
;   If non-nil, the effect of TAB in a code block is as if it were issued in the language major mode buffer.
    (setq org-src-tab-acts-natively t)

 (add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))

(set-language-environment "UTF-8")
    (set-default-coding-systems 'utf-8)
    (prefer-coding-system 'utf-8)
   (setq-default buffer-file-coding-system 'utf-8)

(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)
    (add-to-list 'file-coding-system-alist '("\\.tex" . utf-8) )
    (add-to-list 'file-coding-system-alist '("\\.txt" . utf-8) )
    (add-to-list 'file-coding-system-alist '("\\.el" . utf-8) )
    (add-to-list 'file-coding-system-alist '("\\.scratch" . utf-8) )
    (add-to-list 'file-coding-system-alist '("user_prefs" . utf-8) )

    (add-to-list 'process-coding-system-alist '("\\.txt" . utf-8) )

    (add-to-list 'network-coding-system-alist '("\\.txt" . utf-8) )




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

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e") 
         ; (use-package mu4e) 
         ; (use-package mu4e-contrib)
       (require 'mu4e)
       (require 'org-mu4e)
          ;; don't save message to Sent Messages, Gmail/IMAP takes care of this
          (setq mu4e-sent-messages-behavior 'delete)
          (setq message-kill-buffer-on-exit t)
          (setq mu4e-change-filenames-when-moving t)
          (setq mu4e-compose-format-flowed t)
          (setq smtpmail-default-smtp-server "smtp.gmail.com")
   (add-hook 'mu4e-view-mode-hook 'visual-line-mode)
   (add-hook 'mu4e-view-mode-hook 'visual-fill-column-mode)

;;  (defun vfcm-on ()
;;  ;turn on visual fill column mode
;;  (visual-fill-column-mode 1))

;; (add-hook 'mu4e-view-mode-hook #'vfcm-on)




;  (setq visual-fill-column-width 100)

 (defun no-auto-fill ()
   "Turn off auto-fill-mode."
   (auto-fill-mode -1))





(defun vcfm-off ()
;turn off visual fill column mode
(visual-fill-column-mode nil))

(add-hook 'mu4e-compose-mode-hook #'no-auto-fill)
(add-hook 'mu4e-headers-mode-hook (lambda ()(visual-line-mode -1)))

;  (setq mu4e-attachment-dir "/home/betsy/Sync/Spring 2019/")




  (setq shr-color-visible-luminance-min 50) 
  (setq shr-color-visible-distance-min 5)
  ;(setq mu4e-view-html-plaintext-ratio-heuristic 'most-positive-fixnum)
  (setq message-yank-prefix ""
        message-yank-empty-prefix ""
        message-yank-cited-prefix "")

  (setq w3m-default-desplay-inline-images t)
    (defun mu4e-action-view-in-w3m ()
      "View the body of the message in emacs w3m."
      (interactive)
      (w3m-browse-url (concat "file://"
          (mu4e~write-body-to-html (mu4e-message-at-point t)))))


  ;; customize the reply-quote-string
  (setq message-citation-line-format "\n\nOn %a %d %b %Y at %R, %f wrote:\n")
  ;; choose to use the formatted string
  (setq message-citation-line-function 'message-insert-formatted-citation-line)


  (setq mu4e-view-scroll-to-next nil)

  (add-hook 'message-mode-hook 'visual-fill-column-mode)


  (use-package bbdb)

  (bbdb-initialize)
  (autoload 'bbdb-insinuate-mu4e "bbdb-mu4e")
  (bbdb-initialize 'message 'mu4e)

  (setq bbdb-mail-user-agent 'mu4e-user-agent)
  ;(setq mu4e-view-mode-hook 'bbdb-mua-auto-update visual-line-mode)
  (setq mu4e-compose-complete-addresses t)
  (setq bbdb-mua-pop-up t)
  (setq bbdb-mua-pop-up-window-size 5)
  (setq mu4e-view-show-addresses t)  
  (setq bbdb-default-country "United States")

(setq org-mu4e-link-query-in-headers-mode nil)
;(setq mu4e-update-interval 60)
;(setq mu4e-index-update-in-background t)
(setq mu4e-view-prefer-html t)
(setq mu4e-headers-skip-duplicates t)
(setq mu4e-headers-auto-update t)
(setq mu4e-view-show-addresses t)
(setq mu4e-headers-date-format "%x")
(setq mu4e-headers-time-format "%H:%M")

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "true")

(setq mu4e-maildir-shortcuts
  '( ("/INBOX"  . ?i)
      ("/Sent"   . ?s)
      ("/Trash"  . ?t)
      ("/All"    . ?a)))

(setq mu4e-drafts-folder "/Drafts")
(setq mu4e-sent-folder   "/Sent")
(setq mu4e-trash-folder  "/Trash")
(setq mu4e-refile-folder "/All")
(setq mu4e-maildir "~/Maildir")
(setq mu4e-attachment-dir "~/Sync")

(use-package calfw)
   (use-package calfw-org)
   (use-package calfw-gcal)
   (use-package calfw-cal)
   (setq package-check-signature nil)
   (setq org-gcal-down-days '120)
   ;for http400 error, open scratch and evaluate (org-gcal-request-token) using C-x C-e


   (defun my-open-calendar ()
     (interactive)
     (cfw:open-calendar-buffer
      :contents-sources
      (list
       (cfw:org-create-source "cornflower blue")  ; orgmode source
;       (cfw:cal-create-source "light goldenrod") ; diary source
      ))) 

 ;   (setq calendar-daylight-savings-starts '(3 11 year))
  ;  (setq calendar-daylight-savings-ends: '(11 4 year))
   (setq calendar-week-start-day 1)

(setq org-modules '(org-bbdb
                      org-gnus
                    org-depend
                      org-info
                      org-jsinfo
                      org-habit
                      org-irc
                      org-mouse
                      org-protocol
                      org-annotate-file
                      org-eval
                      org-expiry
                      org-interactive-query
                      org-man
                      org-collector
                      org-panel
                      org-screen
                      org-toc))

(eval-after-load 'org '(org-load-modules-maybe t))

 (setq org-habit-following-days 5)
   (setq org-habit-show-habits-only-for-today t)
   (setq  org-habit-show-all-today t)
   (setq org-habit-preceding-days 12)
                                           ;   (setq org-habit-completed-glyph 128504)
   (setq org-habit-show-done-always-green t)
   (setq org-habit-graph-column 60)

(use-package magit
  :ensure t
  :init (progn
          (setq magit-repository-directories '("~/Sync/emacs/" "~/Sync/Zettelkasten/"))))

(use-package writeroom-mode)
   (setq writeroom-extra-line-spacing 2)
   (setq writeroom-restore-window-config t)
   (setq writeroom-major-modes '(text-mode org-mode))
(setq writeroom-fullscreen-effect 'maximized)
                                          ;  global-writeroom-mode t

   (use-package olivetti)

(pdf-tools-install)

; (eval-after-load 'org '(require 'org-pdfview))

  (use-package pdf-tools)
  (use-package org-pdfview)

  (add-to-list 'org-file-apps '("\\.pdf\\'" . org-pdfview-open))
  (add-to-list 'org-file-apps '("\\.pdf::\\([[:digit:]]+\\)\\'" .  org-pdfview-open))


  (add-to-list 'org-file-apps 
               '("\\.pdf\\'" . (lambda (file link)
                                       (org-pdfview-open link))))

(setq TeX-auto-save t)
(setq TeX-parse-self t)
     (setq-default TeX-master nil)

(setq TeX-view-program-selection
'(((output-dvi has-no-display-manager)
   "dvi2tty")
  ((output-dvi style-pstricks)
   "dvips and gv")
  (output-dvi "xdvi")
  (output-pdf "PDF Tools")
  (output-html "xdg-open")))

(use-package openwith
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

;; Resume clocking task when emacs is restarted
       (org-clock-persistence-insinuate)
       ;; Show lot of clocking history so it's easy to pick items off the C-F11 list
       ;(setq org-clock-continuously t)
;       (setq org-clock-history-length 302)
       ;; Resume clocking task on clock-in if the clock is open
       ;(setq org-clock-in-resume nil)

       ;; Separate drawers for clocking and logs
       (setq org-drawers (quote ("PROPERTIES" "LOGBOOK")))
       ;; Save clock data and state changes and notes in the LOGBOOK drawer
;       (setq org-clock-persist-file "~/Sync/emacs/.emacs.d/org-clock-save.el")
       ;(setq org-clock-persist-file "~/Sync/emacs/.emacs.d/org-clock-save.el")
       (setq org-clock-into-drawer t)
       ;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks with 0:00 duration

    ;(setq org-clock-in-switch-to-state "--")


       ; C-u C-c C-x C-i d
       (setq org-clock-out-remove-zero-time-clocks t)
       ;; Clock out when moving task to a done state
       (setq org-clock-out-when-done t)
       ;; Save the running clock and all clock history when exiting Emacs, load it on startup
       (setq org-clock-persist t)
       ;; Do not prompt to resume an active clock
       (setq org-clock-persist-query-resume nil)
       ;; Enable auto clock resolution for finding open clocks
       (setq org-clock-auto-clock-resolution (quote when-no-clock-is-running))
       ;; Include current clocking task in clock reports
       (setq org-clock-report-include-clocking-task t)
       (setq org-clock-mode-line-total (quote current))

       (setq org-clock-clocked-in-display (quote both))

       (setq org-clock-clocktable-default-properties '(:scope subtree  :maxlevel 4 :link t :emphasize t :fileskip0 t :block today :narrow 30 :tcolumns 2 ))

       (setq org-agenda-clockreport-parameter-plist '(:link t :maxlevel 2 :tcolumns 2 :fileskip0 t :narrow 30 :block today))
       ;(add-hook 'org-clock-in-hook 'org-add-note)

       (setq org-clocktable-defaults '(:maxlevel 2 :scope subtree :fileskip0 t))

(defun my-org-clock-select-task ()
         (interactive)
         (org-clock-select-task))


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




    (defun bh/punch-in (arg)
      "Start continuous clocking and set the default task to the
    selected task.  If no task is selected set the Organization task
    as the default task."
      (interactive "p")
      (setq bh/keep-clock-running t)
      (if (equal major-mode 'org-agenda-mode)
          ;;
          ;; We're in the agenda
          ;;
          (let* ((marker (org-get-at-bol 'org-hd-marker))
                 (tags (org-with-point-at marker (org-get-tags-at))))
            (if (and (eq arg 4) tags)
                (org-agenda-clock-in '(16))
              (bh/clock-in-organization-task-as-default)))
        ;;
        ;; We are not in the agenda
        ;;
        (save-restriction
          (widen)
          ; Find the tags on the current task
          (if (and (equal major-mode 'org-mode) (not (org-before-first-heading-p)) (eq arg 4))
              (org-clock-in '(16))
            (bh/clock-in-organization-task-as-default)))))

    (defun bh/punch-out ()
      (interactive)
      (setq bh/keep-clock-running nil)
      (when (org-clock-is-active)
        (org-clock-out))
      (org-agenda-remove-restriction-lock))

    (defun bh/clock-in-default-task ()
      (save-excursion
        (org-with-point-at org-clock-default-task
          (org-clock-in))))

    (defun bh/clock-in-parent-task ()
      "Move point to the parent (project) task if any and clock in"
      (let ((parent-task))
        (save-excursion
          (save-restriction
            (widen)
            (while (and (not parent-task) (org-up-heading-safe))
              (when (member (nth 2 (org-heading-components)) org-todo-keywords-1)
                (setq parent-task (point))))
            (if parent-task
                (org-with-point-at parent-task
                  (org-clock-in))
              (when bh/keep-clock-running
                (bh/clock-in-default-task)))))))

    (defvar bh/organization-task-id "admin-task")

    (defun bh/clock-in-organization-task-as-default ()
      (interactive)
      (org-with-point-at (org-id-find bh/organization-task-id 'marker)
        (org-clock-in '(16))))

    (defun bh/clock-out-maybe ()
      (when (and bh/keep-clock-running
                 (not org-clock-clocking-in)
                 (marker-buffer org-clock-default-task)
                 (not org-clock-resolving-clocks-due-to-idleness))
        (bh/clock-in-parent-task)))

    (add-hook 'org-clock-out-hook 'bh/clock-out-maybe 'append)
