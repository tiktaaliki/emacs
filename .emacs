(eval-when-compile
  (require 'package)
  (unless (assoc-default "melpa" package-archives)
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))
  (unless (assoc-default "melpa-stable" package-archives)
    (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t))
  (unless (assoc-default "org" package-archives)
    (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t))
(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
  
  (package-initialize)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
  (require 'use-package)
  (setq use-package-always-ensure t))

(require 'org)

(org-babel-load-file "~/Dropbox/emacs/config.org")
(setq custom-file "~/Dropbox/emacs/custom.el")

(load custom-file)
    (setq mu4e-get-mail-command "mbsync -aV") 
     (set-face-attribute 'default nil :family "Fantasque sans mono" :height 250 :weight 'normal  :foreground "#ebdcb2"); honeydew  d5d6d2 faefd4
      (set-face-attribute 'org-level-1 nil :weight 'regular :foreground "#6ab187" :inherit 'default :height 1.0 :weight 'bold) ;lagoon
      (set-face-attribute 'org-level-2 nil :inherit 'org-level-1 :foreground "#9a9eab" :height 1.0 :weight 'regular) ;  
      (set-face-attribute 'org-level-3 nil :inherit 'org-level-2 :foreground "#68829e" :height 1.0) ; 
      (set-face-attribute 'org-level-4 nil :inherit 'org-level-3 :foreground "#6ab187" :height 1.0) ;    a3bd38
      (set-face-attribute 'org-level-5 nil :inherit 'org-level-4 :foreground "#9a9eab")
      (set-face-attribute 'org-level-6 nil :inherit 'org-level-5 :foreground "#68829e")


      (set-face-attribute 'org-todo nil :weight 'normal :family "nova mono" :height 0.9)
      (set-face-attribute 'org-link nil :weight 'normal :foreground "brown" :family "monofur") ;grecian blue  2988bc
     
      (set-face-attribute 'org-checkbox-statistics-todo nil :inherit 'org-todo :weight 'normal :height 0.8 :foreground "#ff4447") ;raspberry
      (set-face-attribute 'org-checkbox-statistics-done nil :inherit 'org-done :strike-through nil) ;raspberry
      (set-face-attribute 'org-drawer nil :height 0.8 :foreground "sky blue")
      (set-face-attribute 'org-special-keyword nil :height 0.8)
      (set-face-attribute 'org-date nil :underline t :foreground "#a1d6e2" :family "monofur" )
;      (set-face-attribute 'bold nil :weight 'bold :foreground "#f0810f") ; f0810f ffbb00 de7a22
 ;     (set-face-attribute 'italic nil :slant 'italic :foreground "#fa6775") ;bubblegum 
      (set-face-attribute 'org-agenda-diary nil :foreground "#a4cabc" )
      (set-face-attribute 'org-ellipsis nil :foreground "#a4cabc" :strike-through nil)
      (set-face-attribute 'org-headline-done nil :foreground "#5B6268" :strike-through t)
   (set-face-attribute 'org-archived nil :foreground "grey32" :strike-through nil)
      (set-face-attribute 'underline nil :foreground "#89da59" :underline t) ;warm gray
      (set-face-attribute 'org-agenda-current-time nil :foreground "magenta") 


 (setq org-todo-keyword-faces
            (quote
             (("WAIT" :weight regular :underline nil :inherit org-todo :foreground "yellow")
              ("PROJ" :weight regular :underline nil :inherit org-todo :foreground "purple")
              ("TODO" :weight regular :underline nil :inherit org-todo :foreground "#e8a735")
              ("HABIT" :weight regular :underline nil :inherit org-todo :foreground "coral")
              )))
