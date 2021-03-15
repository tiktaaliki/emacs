(set-fringe-mode '(25 . 25))
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-kill-emacs (quote y-or-n-p))
(setq ring-bell-function (quote ignore))
(setq visible-bell nil)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq split-width-threshold 100)

(set-face-attribute 'default nil :family "Fantasque sans mono" :height 200 :weight 'normal  :foreground "#ebdcb2")
(delete-selection-mode) ;allows to delete selected text by typing

(global-set-key (kbd "M-o") 'other-window)

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

(use-package unkillable-scratch
:config
(unkillable-scratch 1))

(use-package helm
:bind (("M-x"   . helm-M-x)
([f3] . helm-buffers-list)           
))

(use-package mic-paren
:config
(paren-activate)
)


(use-package smartparens 
  :defer t 
  :config
  (setq sp-show-pair-from-inside nil)
  (require 'smartparens-config)
  :diminish smartparens-mode
  :custom
  (smartparens-global-mode t))

(straight-use-package 'aggressive-indent-mode)
(setq global-aggressive-indent-mode t)

(use-package org
  :config
  (add-hook 'org-mode-hook (lambda () (auto-revert-mode 1)))
  :bind
  ("C-a" . org-beginning-of-line) ("C-e" . org-end-of-line) ("C-k" . org-kill-line)
  :custom
  (org-src-tab-acts-natively t)
  (org-startup-indented t)
  (org-hide-emphasis-markers t)
  (org-support-shift-select t)
  (org-startup-folded t)
  (org-special-ctrl-a/e (quote (t . t)))
  (org-ellipsis " ⬎ ")
:custom-face
  (org-level-1 ((t (:foreground "#337bae" :weight normal :family "victor mono"))))  
  (org-level-2 ((t (:inherit org-level-1 :foreground "#9a9eab" :height 0.9))))
  (org-level-3 ((t (:inherit org-level-2 :foreground "#68829e"  :height 0.9))))
  (org-level-4 ((t (:inherit org-level-3 :foreground "light coral" :height 1.0))))
  (org-link ((t (:inherit link :foreground "#b38867" :underline nil :weight normal :family "monofur"))))
  (org-ellipsis ((t (:foreground "#a4cabc" :underline nil))))
  (org-todo ((t (:foreground "#98be65" :weight normal :height 0.75 :family "nova mono"))))
 (org-done ((t (:inherit org-headline-done :weight normal :height 0.9 :family "nova mono"))))
  (org-date ((t (:foreground "#ECBE7B" :underline t :family "monofur"))))
  (org-drawer ((t (:foreground "sky blue" :height 0.8))))
  (org-headline-done ((t (:foreground "#5B6268" :strike-through t))))
  (org-special-keyword ((t (:foreground "#83898d" :height 0.9)))) 
  (org-property-value ((t (:foreground "#83898d" :height 0.9)))) 
 )

(use-package org-superstar
  :config
  (setq org-superstar-headline-bullets-list '("◉"  "❤""☆" "♢"    "⭆" ))
  (setq org-superstar-item-bullet-alist (quote ((42 . 33) (43 . 62) (45 . 45))))
  (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1))))

(server-start)
(require 'org-protocol)
(require 'org-protocol-capture-html)
(setq org-protocol-default-template-key "w")

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

        ("y" "org-protocol" item (id "resources")
         "[ ] %a %U %:initial" )

        ))

(use-package magit
  :init (progn
          (setq magit-repository-directories '("~/Dropbox/" ))))
(setq global-auto-revert-mode t)
(setq auto-save-interval 5)

(use-package pdf-tools
  :magic ("%PDF" . pdf-view-mode)
  :config
  (pdf-tools-install :no-query))
(use-package pdf-view-restore)

(find-file "/home/betsy/.emacs")
(find-file "~/Dropbox/Zettelkasten/inbox.org")
(find-file "~/Dropbox/emacs/config-thinkpad-extra.org")
(find-file "~/Dropbox/emacs/config-thinkpad.org")
