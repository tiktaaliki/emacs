(require 'package) ;; sets up package.el, which is a package manager for emacs. comes automatically bundled with it.

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/")  
             '("org" . "http://orgmode.org/elpa/"))
            
(add-to-list 'load-path "~/Dropbox/emacs/.emacs.d")

(package-initialize)

(package-refresh-contents)

(eval-when-compile (require 'use-package))
(setq use-package-always-ensure t)

(use-package org
  :ensure org-plus-contrib )
(org-babel-load-file "~/Dropbox/emacs/settings.org")
(org-babel-load-file "~/Dropbox/emacs/pi.org") 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-completion-in-region-fuzzy-match t)
 '(helm-follow-mode-persistent t)
 '(helm-mode t)
 '(org-bibtex-type-property-name "expression")
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
 '(org-ref-bibtex-completion-actions
   (quote
    (("Insert citation" . helm-bibtex-insert-citation)
     ("Open PDF, URL or DOI" . helm-bibtex-open-any)
     ("Open URL or DOI in browser" . helm-bibtex-open-url-or-doi)
     ("Insert reference" . helm-bibtex-insert-reference)
     ("Add PDF to library" . helm-bibtex-add-pdf-to-library)
     ("Insert BibTeX key" . helm-bibtex-insert-key)
     ("Insert BibTeX entry" . helm-bibtex-insert-bibtex)
     ("Insert formatted citation(s)" lambda
      (_)
      (insert
       (mapconcat
	(quote identity)
	(loop for key in
	      (helm-marked-candidates)
	      collect
	      (org-ref-format-entry key))
	"

")))
     ("Attach PDF to email" . helm-bibtex-add-PDF-attachment)
     ("Edit notes" . helm-bibtex-edit-notes)
     ("Show entry" . helm-bibtex-show-entry)
     ("Add keywords to entries" . org-ref-helm-tag-entries)
     ("Copy entry to clipboard" . bibtex-completion-copy-candidate))))
 '(org-ref-cite-completion-function (quote org-ref-helm-bibtex))
 '(org-ref-pdf-directory
   (quote
    ("~/Dropbox/Zettelkasten/org/pdfs/" "~/Dropbox/QCFall2017/700-Technology-of-info/readings/" "~/Dropbox/QCFall2017/701-fundamentals-of-lis/readings/" "~/Dropbox/QCFall2017/702-Info-sources-svc/Readings" "~/Dropbox/QCFall2017/703-organization-of-info/Readings")) t)
 '(org-ref-prefer-bracket-links t)
 '(org-todo-keywords
   (quote
    ((sequence "[TODO](t)" "[◔](s!)" "[?](w!)" "|" "[✓](d!)" "[☓](c!)"))))
 '(package-selected-packages
   (quote
    (org-ref org-ref-bibtex doi-utils org-autolist smartparens-html smartparens-config helm-unicode ox-pandoc darkokai-theme annotate hydra multiple-cursors pandoc org-brain calfw habitica org-pdfview draft-mode toc-org wc-mode magit bbdb pdf-tools interleave company flyspell-correct-helm helm use-package org-plus-contrib color-theme)))
 '(pdf-annot-list-listed-types
   (quote
    (caret circle file free-text highlight ink line link popup square squiggly strike-out text underline)))
 '(pdf-view-continuous nil)
 '(projectile-completion-system (quote helm))
 '(read-buffer-completion-ignore-case t)
 '(read-file-name-completion-ignore-case t))


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
 '(neo-dir-link-face ((t (:foreground "tomato" :height 0.7))))
 '(neo-file-link-face ((t (:foreground "#f8fbfc" :height 0.7))))
 '(neo-header-face ((t (:background "#242728" :foreground "#ffffff" :height 0.7))))
 '(neo-root-dir-face ((t (:background "#242728" :foreground "#63de5d" :height 0.7))))
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
