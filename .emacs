
(eval-when-compile
  (require 'package)


  (setq package-archives '(("melpa" . "https://melpa.org/packages/")
                           ("gnu" . "https://elpa.gnu.org/packages/")
                           ("nongnu" . "https://elpa.nongnu.org/nongnu/")
                           ;; ("org"   . "https://orgmode.org/elpa/")
                           ("elpa"  . "https://elpa.gnu.org/packages/")))

  (package-initialize)
  ;; https://github.com/jwiegley/use-package/issues/319#issuecomment-845214233
  (assq-delete-all 'org package--builtins)
  (assq-delete-all 'org package--builtin-versions)

  

  
					;  (unless (assoc-default "melpa" package-archives)
					;   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))
  
					; (unless (assoc-default "melpa-stable" package-archives)
					;	  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t))
					;(unless (assoc-default "org" package-archives)
					; (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t))
  (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
  
					;  (package-initialize)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

  (require 'use-package)
  (setq use-package-always-ensure t))

(require 'org)

(add-to-list 'load-path "~/Dropbox/emacs/.emacs.d/lisp/")
(add-to-list 'load-path "~/Dropbox/emacs/")

(org-babel-load-file "/home/betsy/Dropbox/emacs/config.org")
(org-babel-load-file "/home/betsy/Dropbox/emacs/config_desktop.org")
(setq custom-file "~/Dropbox/emacs/custom.el")
(load custom-file)
(setq byte-compile-warnings '(cl-functions))	
					;(setq mu4e-get-mail-command "mbsync -aV") 



;; (put 'digit-argument 'disabled nil)

;; (set-face-attribute 'default nil :family "Fantasque sans mono" :height 250 :weight 'normal  :foreground "#ebdcb2"); honeydew  d5d6d2 faefd4
;; 					;   (set-face-attribute 'org-level-1 nil :foreground "#6ab187" :inherit 'default :height 1.1 :weight 'bold) ;lagoon
;; 					;  (set-face-ㅁdattribute 'org-level-2 nil :inherit 'org-level-1 :foreground "#9a9eab" :height 0.9 :weight 'bold) ;  
;; (set-face-attribute 'org-level-3 nil :inherit 'org-level-2 :foreground "#68829e" :height 1.0) ; 
;; 					;(set-face-attribute 'org-level-4 nil :inherit 'org-level-3 :foreground "#6ab187" :height 1.0) ;    a3bd38
;; (set-face-attribute 'org-level-5 nil :inherit 'org-level-4 :foreground "#9a9eab")
;; (set-face-attribute 'org-level-6 nil :inherit 'org-level-5 :foreground "#68829e")



;; 					;     (set-face-attribute 'org-link nil :weight 'normal :foreground "firebrick" :family "monofur") ;grecian blue  2988bc

;; (set-face-attribute 'org-checkbox-statistics-todo nil :inherit 'org-todo :weight 'normal :height 0.8 :foreground "#ff4447") ;raspberry
;; (set-face-attribute 'org-checkbox-statistics-done nil :inherit 'org-done :strike-through nil) ;raspberry
;; (set-face-attribute 'org-drawer nil :height 0.8 :foreground "sky blue")
;; 					;     (set-face-attribute 'org-special-keyword nil :height 0.8)
;; 					;    (set-face-attribute 'org-date nil :underline t :foreground "#a1d6e2" :family "monofur" )
;; (set-face-attribute 'org-agenda-diary nil :foreground "#a4cabc" )
;; 					;     (set-face-attribute 'org-ellipsis nil :foreground "#a4cabc" :strike-through nil)

;; (set-face-attribute 'org-archived nil :foreground "grey32" :strike-through nil)
;; (set-face-attribute 'org-agenda-current-time nil :foreground "magenta") 

;; (defvar symbola-font (if (eq system-type 'gnu/linux)
;; 			 (set-fontset-font "fontset-default" '(#x1100 . #xffdc)
;; 					   '("NanumBarunpen" . "unicode-bmp" )

;; 					   )
;; 		       (set-fontset-font "fontset-default" '(#xe0bc . #xf66e) 
;; 					 '("Nanumbarunpen" . "unicode-bmp")


;; 					 )                   (font-spec :name "Symbola" :size 8)
;;                        "Symbola"))


;; (set-fontset-font "fontset-default" '(#x2000 . #x206F)
;;                   '("Symbola" . "unicode-bmp" ))
;; 					;
;; (set-fontset-font "fontset-default" '(#x2190 . #x21FF)
;;                   '("Symbola" . "unicode-bmp" ))
;; (set-fontset-font "fontset-default" '(#x2B00 . #x2BFF)
;;                   '("Symbola" . "unicode-bmp" ))

;; (set-fontset-font "fontset-default" '(#x2200 . #x22FF)
;;                   '("Symbola" . "unicode-bmp" ))

;; (set-fontset-font "fontset-default" '(#x25A0 . #x25FF)
;;                   '("Symbola" . "unicode-bmp" ))

;; (set-fontset-font "fontset-default" '(#x2600 . #x26FF)
;;                   '("Symbola" . "unicode-bmp" ))
;; (set-fontset-font "fontset-default" '(#x2700 . #x27BF)
;;                   '("Symbola" . "unicode-bmp" ))

;; (set-fontset-font "fontset-default" '(#x1f800 . #x1f8ff)
;;                   '("Symbola" . "unicode-bmp" ))

;; 					;  (set-fontset-font "fontset-default" '(#x2091 . #x21ff)     
;; 					;                   (font-spec :size 30)) 

;; 					;https://www.reddit.com/r/emacs/comments/8tz1r0/how_to_set_font_according_to_languages_that_i/e1bjce6?utm_source=share&utm_medium=web2x&context=3
;; (when (fboundp #'set-fontset-font)
;;   (set-fontset-font t 'korean-ksc5601	
;;                     ;; Noto Sans CJK: https://www.google.com/get/noto/help/cjk/
;;                     (font-spec :family "Nanum Gothic Coding")))
;; (dolist (item '(("Nanum Gothic Coding" . 1.0)))
;;   (add-to-list 'face-font-rescale-alist item))

;; (setq use-default-font-for-symbols nil)

;; (use-package unicode-fonts
;;   :ensure t
;;   :defer t

;;   :init (unicode-fonts-setup))

(put 'upcase-region 'disabled nil)
