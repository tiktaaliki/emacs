

(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(setq org-directory "~/Dropbox/Zettelkasten")
(setq org-mobile-inbox-for-pull "~/Dropbox/Zettelkasten/flagged.org")
(setq org-mobile-checksum-binary "C:\\Users\\betsy\\coreutils\\md5sum.exe")

(use-package org-plus-contrib)
(use-package interleave)
(use-package pdf-tools)
(use-package dash)
(use-package deft)


(use-package org-ref
 :init 
(setq org-ref-default-bibliography
'("~/Dropbox/Zettelkasten/references.bib"))
(setq org-ref-bibliography-notes '("~/Dropbox/Zettelkasten/3.notes.org"))
(setq reftex-default-bibliography '("~/Dropbox/Zettelkasten/references.bib"))
(setq org-ref-pdf-directory '("~/Dropbox/Zettelkasten/pdfs/"))
 :config (require 'org-ref-helm-cite))

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

(use-package helm
:bind (("M-x" . helm-M-x)
	      ([f10] . helm-buffers-list)))

(setq user-full-name "Betsy Yoon"
      user-mail-address "betsy.yoon@gmail.com")

(setq initial-buffer-choice "~/Dropbox/Zettelkasten/1.inbox.org")

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq split-height-threshold nil)
(setq split-width-threshold 0)
(setq inhibit-startup-screen t)

(use-package color-theme :ensure t
 :init (color-theme-initialize)
 (color-theme-clarity)
  )
(setq org-hide-leading-stars t)

(setq my-prefered-font
      (cond ((eq system-type 'windows-nt) "consolas")
            ((eq system-type 'gnu/linux) "mono")
            (t nil)))

(when my-prefered-font
  (set-frame-font my-prefered-font nil t))

(set-face-attribute 'default nil :height 175 :foreground '"lemon chiffon" )

(use-package org-bullets
     :init
     (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
	(setq org-bullets-bullet-list (quote ("◉" "◉" "⏵" "⏵""⚪" "⚪" "»" "»" "⚹"  "⚹""∙"))))

 (setq org-todo-keyword-faces
            '(
            ("[TODO]" :foreground "olivedrab1" :weight bold :family "fantasque sans mono" ) 
            ("[?]"  :foreground "yellow" :weight bold) 
            ( "[✓]"  :foreground "deepskyblue1" :weight bold)
            ( "[☓]"  :foreground "deepskyblue1" :weight bold)
            )
 )

  (use-package unicode-fonts
      :ensure t
      :disabled t
      :init (unicode-fonts-setup))

(setq org-archive-location "~/Dropbox/Zettelkasten/archive.org::")
(setq org-agenda-files (quote
  ("~/Dropbox/Zettelkasten/1.inbox.org" 
   "~/Dropbox/Zettelkasten/2.budget.org"
   "~/Dropbox/Zettelkasten/3.notes.org" 
   "~/Dropbox/Zettelkasten/4.work.org" 
   "~/Dropbox/Zettelkasten/5.journal.org"
   "~/Dropbox/Zettelkasten/6.calendar.org" 
   "~/Dropbox/Zettelkasten/7.lis.org" 
   "~/Dropbox/Zettelkasten/8.personal.org"
   "~/Dropbox/Zettelkasten/9.reference-vault.org"
"~/Dropbox/Zettelkasten/12.ndd.org"
)))
 (setq org-todo-keywords 
           (quote ((sequence "[TODO](t)" "[?](w!)" "|" "[✓](d!)" "[☓](c!)"))))

(global-set-key (kbd "<f1>") 'org-capture)

;; Capture templates for: TODO tasks, Notes, appointments, phone calls, meetings, and org-protocol
 (setq org-capture-templates 
'(("t" "todo" entry (file+headline "~/Dropbox/Zettelkasten/1.inbox.org" "to dos" ) "** [TODO] %?")
  ("j" "journal" entry (file+datetree "~/Dropbox/Zettelkasten/5.journal.org")
              "* %<%H:%M> %?")
  ("e" "event" entry (file+datetree+prompt "~/Dropbox/Zettelkasten/6.calendar.org")
              "* %? 
%^T") ))

(use-package magit
:ensure t)

(setq org-modules '(org-bbdb
                      org-gnus
                      org-drill
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
(eval-after-load 'org
 '(org-load-modules-maybe t))

(add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")
(setq ispell-program-name "aspell")
(require 'ispell)

 (add-hook 'org-mode-hook 'my-org-init)
    (defun my-org-init ()
      (require 'typopunct)
      (typopunct-change-language 'english)
      (typopunct-mode 1))


(use-package visual-fill-column
  :ensure t
  :config
  (progn
    (global-visual-fill-column-mode)))

(setq org-support-shift-select (quote always))


(global-visual-line-mode t)
(setq sentence-end-double-space nil)

 (use-package flyspell-correct-helm )
  (use-package company
  :ensure t
  :init (global-company-mode))
