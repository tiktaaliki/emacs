
;; Adde dby Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package) ;; sets up package.el, which is a package manager for emacs. comes automatically bundled with it.

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(add-to-list 'load-path "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/org-ref/")

(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure t)

(org-babel-load-file "~/Dropbox/emacs/settings.org")
(org-babel-load-file "~/Dropbox/emacs/pi.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bibtex-autokey-name-separator "_")
 '(bibtex-autokey-name-year-separator "_")
 '(bibtex-autokey-titleword-separator "-")
 '(bibtex-autokey-year-length 4)
 '(bibtex-autokey-year-title-separator "_")
 '(global-visual-fill-column-mode t)
 '(org-emphasis-alist
   (quote
    (("!"
      (quote
       (:weight bold :family "consolas" :foreground "red3" :background "slategray3"))
      verbatim)
     ("*"
      (quote
       (:weight bold :foreground "chartreuse")))
     ("/"
      (quote
       (:slant italic :foreground "chartreuse")))
     ("_"
      (quote
       (:underline t :foreground "chartreuse")))
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (quote
       (:strike-through "chartreuse" :weight bold)))
     ("@"
      (quote
       (:weight bold :foreground "magenta"))
      verbatim))))
 '(org-todo-keywords
   (quote
    ((sequence "[TODO](t)" "[◔](s!)" "[?](w!)" "|" "[✓](d!)" "[☓](c!)"))))
 '(package-selected-packages
   (quote
    (typopunct org-ref-bibtex org-id org-ref-isbn doi-utils helm-projectile projectile toc-org org-drill org-plus-contrib visual-fill-column use-package smartparens org-ref org-pdfview org-gcal org-bullets org-brain magit interleave iedit flyspell-correct-helm deft darkokai-theme company calfw-org calfw-gcal calfw anzu)))
 '(visual-fill-column-center-text t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#242728" :foreground "lemon chiffon" :weight normal :height 151 :family "Consolas"))))
 '(custom-variable-tag ((t (:inherit variable-pitch :foreground "gold" :height 1.1))))
 '(fringe ((t (:background "#242728"))))
 '(helm-selection ((t (:inherit bold :background "black" :foreground "magenta" :underline t))))
 '(highlight ((t (:weight bold))))
 '(lazy-highlight ((t (:inherit highlight :background "black"))))
 '(link ((t (:foreground "#06d8ff" :underline t :weight normal))))
 '(org-agenda-clocking ((t (:box (:line-width 2 :color "magenta" :style released-button)))))
 '(org-agenda-date ((t (:background "light steel blue" :foreground "midnight blue" :inverse-video nil :box (:line-width 20 :color "#242728") :overline nil :slant normal :weight normal :height 1.2))))
 '(org-agenda-date-today ((t (:inherit org-agenda-date :background "#242728" :foreground "gold" :inverse-video t :overline nil :weight bold))))
 '(org-agenda-date-weekend ((((class color) (min-colors 257)) (:inherit org-agenda-date :inverse-video nil :background unspecified :foreground "deep pink" :weight unspecified :underline t :overline nil :box (:line-width 20 :color "#242728"))) (((class color) (min-colors 89)) (:inherit org-agenda-date :inverse-video nil :background unspecified :foreground "red" :weight unspecified :underline t :overline nil :box 1))))
 '(org-archived ((t (:foreground "gray10"))))
 '(org-block ((t (:foreground "gainsboro"))))
 '(org-clock-overlay ((t (:background "dim gray"))))
 '(org-date ((t (:foreground "steel blue" :underline t))))
 '(org-default ((t (:inherit default))))
 '(org-done ((t (:foreground "dark gray" :weight normal))))
 '(org-ellipsis ((t (:foreground "#6A6D70" :height 0.5))))
 '(org-level-1 ((t (:inherit nil :foreground "gray" :weight bold :height 1.5 :width extra-expanded :family "pompiere"))))
 '(org-level-2 ((t (:inherit variable-pitch :foreground "light goldenrod" :height 0.95))))
 '(org-level-3 ((t (:inherit variable-pitch :foreground "SlateGray1" :height 0.95))))
 '(org-level-4 ((t (:inherit variable-pitch :foreground "#E6DB74" :height 0.95))))
 '(org-level-5 ((t (:inherit variable-pitch :foreground "MediumOrchid1"))))
 '(org-level-6 ((t (:inherit variable-pitch :foreground "RoyalBlue3"))))
 '(org-link ((t (:foreground "LightSteelBlue3" :underline t :family "nova mono"))))
 '(org-ref-cite-face ((t (:foreground "violet red" :underline t :family "consolas"))))
 '(org-scheduled ((t (:foreground "RosyBrown3"))))
 '(org-scheduled-previously ((t (:foreground "deep pink"))))
 '(org-scheduled-today ((t (:foreground "gold" :underline t :weight normal))))
 '(org-special-keyword ((t (:foreground "#6A6D70" :weight normal))))
 '(org-tag ((t (:foreground "chartreuse3" :slant normal :weight normal :height 130 :family "consolas"))))
 '(org-todo ((t (:background "gray13" :foreground "orange red" :box (:line-width 2 :color "#242728") :weight normal :family "fira mono"))))
 '(org-upcoming-deadline ((((class color) (min-colors 257)) (:foreground "#E6DB74" :weight normal :underline nil)) (((class color) (min-colors 89)) (:foreground "#CDC673" :weight normal :underline nil))))
 '(org-warning ((t (:background "white smoke" :foreground "red" :underline nil :weight normal))))
 '(variable-pitch ((t (:family "happy monkey")))))

 
