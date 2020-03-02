(package-initialize)

(require 'package)
(require 'org-install)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(add-to-list 'load-path "~/Dropbox/emacs/.emacs.d/lisp/")
;(setq custom-file "~/Sync/emacs/custom.el")

(load "dired+")
(load "org-pdfview")
;(load "zoom-frm")
;(load "ov-highlight")
(setq use-package-verbose t)
(setq use-package-always-ensure t)

(eval-when-compile (require 'use-package))

(org-babel-load-file "~/Dropbox/emacs/settings.org")
;(org-babel-load-file "~/Sync/emacs/gallium.org")
(org-babel-load-file "~/Dropbox/emacs/pi.org")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(annotate-annotation-position-policy :newline)
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(auto-save-default t)
 '(auto-save-visited-file-name t)
 '(auto-save-visited-mode t)
 '(bibtex-align-at-equal-sign t)
 '(bibtex-autokey-additional-names "-etal")
 '(bibtex-autokey-name-case-convert-function (quote identity))
 '(bibtex-autokey-name-length (quote infty))
 '(bibtex-autokey-name-separator "-")
 '(bibtex-autokey-name-year-separator ":")
 '(bibtex-autokey-names 2)
 '(bibtex-autokey-titleword-length 0)
 '(bibtex-autokey-titleword-separator "")
 '(bibtex-autokey-titlewords 0)
 '(bibtex-autokey-year-length 4)
 '(bibtex-autokey-year-title-separator "")
 '(bibtex-completion-library-path "~/Dropbox/Library/")
 '(bibtex-completion-pdf-field "file")
 '(bibtex-maintain-sorted-entries (quote plain))
 '(browse-url-browser-function (quote eww-browse-url))
 '(centered-window-mode t)
 '(compilation-message-face (quote default))
 '(confirm-kill-emacs (quote y-or-n-p))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (doom-one)))
 '(custom-safe-themes
   (quote
    ("e47c0abe03e0484ddadf2ae57d32b0f29f0b2ddfe7ec810bd6d558765d9a6a6c" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "fd944f09d4d0c4d4a3c82bd7b3360f17e3ada8adf29f28199d09308ba01cc092" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "59e82a683db7129c0142b4b5a35dbbeaf8e01a4b81588f8c163bd255b76f4d21" "bb5a253b1e359db941284cc74750ecf38aa93878b208919fc0f2199daaef491e" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(delete-by-moving-to-trash t)
 '(dired-auto-revert-buffer (quote dired-directory-changed-p))
 '(display-buffer-reuse-frames t)
 '(erc-notifications-mode t)
 '(fci-rule-color "#073642")
 '(fill-column 100)
 '(fill-flowed-encode-column 5000)
 '(frame-resize-pixelwise t)
 '(fringe-mode 100 nil (fringe))
 '(global-auto-revert-mode t)
 '(global-visual-fill-column-mode t)
 '(global-visual-line-mode t)
 '(helm-M-x-always-save-history t)
 '(helm-M-x-reverse-history nil)
 '(helm-bibtex-full-frame nil)
 '(helm-display-buffer-default-height 22)
 '(helm-full-frame nil)
 '(helm-help-full-frame nil)
 '(helm-move-to-line-cycle-in-source nil)
 '(helm-org-rifle-show-path nil)
 '(helm-split-window-inside-p t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(history-delete-duplicates t)
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-highlight-background-colors
   (quote
    ("gold" "green yellow" "chocolate" "dark orchid" "OliveDrab4" "dark blue" "blue violet" "coral3" "RoyalBlue3" "goldenrod")))
 '(hl-highlight-foreground-colors
   (quote
    ("black" "black" "black" "black" "snow" "snow" "snow" "black" "snow" "snow")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(inhibit-eol-conversion t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(latex-run-command "pdflatex")
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(mu4e-attachment-dir "~/Dropbox/2020")
 '(mu4e-compose-dont-reply-to-self t)
 '(mu4e-compose-format-flowed t)
 '(mu4e-compose-pre-hook (quote (no-auto-fill)))
 '(mu4e-display-update-status-in-modeline nil)
 '(mu4e-get-mail-command "mbsync -aV")
 '(mu4e-headers-date-format "%b-%d")
 '(mu4e-headers-fields (quote ((:human-date . 10) (:from . 22) (:subject))))
 '(mu4e-headers-found-hook nil)
 '(mu4e-headers-search-hook nil)
 '(mu4e-headers-visible-columns 200)
 '(mu4e-hide-index-messages t)
 '(mu4e-index-update-in-background nil)
 '(mu4e-split-view (quote horizontal))
 '(mu4e-update-interval 20000)
 '(mu4e-user-mail-address-list (quote ("betsy.yoon@gmail.com" "")))
 '(mu4e-view-mode-hook
   (quote
    (turn-on-visual-line-mode visual-line-mode visual-fill-column-mode)))
 '(nov-pre-html-render-hook (quote (visual-line-mode)))
 '(nov-text-width 5)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(objed-cursor-color "#ff6c6b")
 '(openwith-mode t)
 '(org-agenda-block-separator 45)
 '(org-agenda-clockreport-parameter-plist (quote (:link t :maxlevel 4 :narrow 25)))
 '(org-agenda-custom-commands
   (quote
    (("x" agenda)
     ("y" agenda*)
     ("n" "next/in progress" todo "NEXT|!~!")
     ("u" "Undated tasks" todo ""
      ((org-agenda-todo-ignore-with-date t)))
     ("s" "not yet scheduled" todo ""
      ((org-agenda-todo-ignore-scheduled t)))
     ("w" "waiting" todo "\\?")
     ("d" "day + tasks"
      ((todo "!!!")
       (agenda "")
       (todo "NEXT")
       (todo "!~!"))))))
 '(org-agenda-dim-blocked-tasks (quote invisible))
 '(org-agenda-files
   (quote
    ("~/Sync/Zettelkasten/gcal.org" "~/Dropbox/Zettelkasten/inbox.org" "~/Dropbox/Zettelkasten/journal.org" "~/Dropbox/Zettelkasten/personal.org" "~/Dropbox/Zettelkasten/notes.org" "~/Dropbox/Zettelkasten/lis.org" "~/Dropbox/Zettelkasten/ndd.org" "~/Dropbox/Zettelkasten/editing.org")))
 '(org-agenda-ignore-properties (quote (effort appt stats)))
 '(org-agenda-inhibit-startup t)
 '(org-agenda-scheduled-leaders (quote ("" "Sched.%2dx: ")))
 '(org-agenda-time-grid
   (quote
    ((daily weekly today remove-match)
     (900 1200 1500 1800 2100)
     "......" "----------------")))
 '(org-agenda-use-tag-inheritance t)
 '(org-archive-location
   "~/Dropbox/Zettelkasten/journal.org::datetree/* Finished tasks")
 '(org-checkbox-hierarchical-statistics nil)
 '(org-clock-clocktable-default-properties (quote (:maxlevel 4)))
 '(org-clock-history-length 35)
 '(org-clock-out-remove-zero-time-clocks nil)
 '(org-clock-sound t)
 '(org-ctrl-k-protect-subtree (quote error))
 '(org-directory "~/Dropbox/Zettelkasten")
 '(org-display-internal-link-with-indirect-buffer t)
 '(org-emphasis-alist
   (quote
    (("*" bold)
     ("/" italic)
     ("_" underline)
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (:background "goldenrod1" :foreground "black" :weight bold :font-family "monofur")))))
 '(org-enforce-todo-checkbox-dependencies nil)
 '(org-export-with-author nil)
 '(org-export-with-toc nil)
 '(org-fast-tag-selection-single-key t)
 '(org-goto-interface (quote outline-path-completion))
 '(org-habit-show-habits-only-for-today t)
 '(org-id-link-to-org-use-id (quote create-if-interactive))
 '(org-id-method (quote org))
 '(org-indirect-buffer-display (quote current-window))
 '(org-log-done (quote time))
 '(org-log-refile (quote time))
 '(org-mode-hook (quote (org-clock-load org-bullets-mode)))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-eww org-gnus org-habit org-id org-info org-inlinetask org-mouse org-protocol org-tempo org-w3m org-eshell org-annotate-file org-bookmark org-checklist org-choose org-collector org-depend org-drill org-eval org-expiry org-interactive-query org-invoice org-learn org-man org-panel org-registry org-screen org-screenshot org-secretary org-toc org-velocity org-wikinodes org-jsinfo)))
 '(org-pomodoro-finished-sound
   "/home/betsy/.emacs.d/elpa/org-pomodoro-20190530.1445/resources/bell.wav")
 '(org-pomodoro-long-break-sound
   "/home/betsy/.emacs.d/elpa/org-pomodoro-20190530.1445/resources/bell_multiple.wav")
 '(org-pomodoro-overtime-sound
   "/home/betsy/.emacs.d/elpa/org-pomodoro-20190530.1445/resources/bell.wav")
 '(org-pomodoro-short-break-sound
   "/home/betsy/.emacs.d/elpa/org-pomodoro-20190530.1445/resources/bell.wav")
 '(org-pomodoro-start-sound
   "/home/betsy/.emacs.d/elpa/org-pomodoro-20190530.1445/resources/bell.wav")
 '(org-pomodoro-start-sound-p t)
 '(org-pomodoro-ticking-sound
   "/home/betsy/.emacs.d/elpa/org-pomodoro-20190530.1445/resources/tick.wav")
 '(org-pomodoro-ticking-sound-p t)
 '(org-pomodoro-ticking-sound-states (quote (:pomodoro)))
 '(org-ref-clean-bibtex-key-function (lambda (key) (replace-regexp-in-string ":" "-" key)))
 '(org-ref-get-pdf-filename-function (quote org-ref-get-pdf-filename-helm-bibtex))
 '(org-ref-pdf-directory "~/Dropbox/Library")
 '(org-ref-prefer-bracket-links t)
 '(org-refile-allow-creating-parent-nodes (quote confirm))
 '(org-refile-targets
   (quote
    ((nil :maxlevel . 4)
     (org-agenda-files :maxlevel . 2)
     ("~/Dropbox/Zettelkasten/someday.org" :maxlevel . 1))))
 '(org-refile-use-cache t)
 '(org-reverse-note-order t)
 '(org-special-ctrl-a/e t)
 '(org-startup-folded t)
 '(org-startup-shrink-all-tables t)
 '(org-table-default-size "2x2")
 '(org-tag-alist nil)
 '(org-tags-column 0)
 '(org-todo-keyword-faces
   (quote
    (("NEXT" :foreground "magenta" :weight bold :underline t)
     ("PROJECT" :foreground "medium slate blue" :weight bold :underline t)
     ("!~!" :foreground "red" :weight bold :underline t)
     ("?" :foreground "yellow" :weight bold :underline t))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "NEXT(n)" "!~!(s)" "PROJECT(p)" "?(w!)" "|" "DONE(d!)" "x(c!)")
     (sequence "habit(h)"))))
 '(org-treat-insert-todo-heading-as-state-change t)
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 '(org-trello-files (quote ("~/Zettelkasten/projects.org")) nil (org-trello))
 '(org-use-fast-tag-selection nil)
 '(org-use-tag-inheritance (quote ("home" "lis" "sysadmin" "ndd" "mentat")))
 '(package-selected-packages
   (quote
    (all-the-icons annotate hl-anything gnu-elpa-keyring-update doom-themes hydra ov yasnippet-snippets markdown-preview-eww markdown-mode 2048-game org-pomodoro centered-cursor-mode centered-window-mode solarized-theme solarized dired+ helm-org-rifle counsel wpuzzle nov wc-mode ox-reveal html-preview org-chef org-trello ox-pandoc pandoc company-bibtex company-auctex auctex yasnippet ledger-mode org-gcal writeroom-mode use-package smartparens org-ref org-noter org-bullets olivetti magit interleave helm-projectile flyspell-correct-helm deft company calfw-org calfw-gcal calfw-cal calfw bbdb)))
 '(pdf-annot-default-annotation-properties
   (quote
    ((t
      (label . "Betsy"))
     (text
      (color . "#ff0000")
      (icon . "Note"))
     (highlight
      (color . "green yellow"))
     (underline
      (color . "magenta"))
     (squiggly
      (color . "purple1"))
     (strike-out
      (color . "red")))))
 '(pdf-view-continuous nil)
 '(pdf-view-display-size (quote fit-width))
 '(pdf-view-midnight-colors (cons "#282c34" "#bbc2cf"))
 '(pop-up-frame-alist (quote ((height . 80) (width . 80))))
 '(pop-up-windows t)
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" ".emacs.d" ".stversions" "\".git\"")))
 '(projectile-globally-ignored-file-suffixes (quote (".org~" ".org#" "/.dropbox")))
 '(projectile-mode t nil (projectile))
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(unibyte-display-via-language-environment t)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c8805d801780")
     (60 . "#bec073400bc0")
     (80 . "#b58900")
     (100 . "#a5008e550000")
     (120 . "#9d0091000000")
     (140 . "#950093aa0000")
     (160 . "#8d0096550000")
     (180 . "#859900")
     (200 . "#66aa9baa32aa")
     (220 . "#57809d004c00")
     (240 . "#48559e556555")
     (260 . "#392a9faa7eaa")
     (280 . "#2aa198")
     (300 . "#28669833af33")
     (320 . "#279993ccbacc")
     (340 . "#26cc8f66c666")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(visual-fill-column-center-text t)
 '(warning-minimum-level :emergency)
 '(wdired-create-parent-directories nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(window-resize-pixelwise t)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"])
 '(yas-snippet-dirs
   (quote
    ("/home/betsy/.emacs.d/snippets" yasnippet-snippets-dir))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 203 :width normal :foundry "simp" :family "Hack"))))
 '(bold ((t (:foreground "gold" :weight bold))))
 '(font-lock-warning-face ((t (:inherit error :weight normal))))
 '(fringe ((t (:inherit default))))
 '(highlight ((t (:background "dim gray" :foreground "black"))))
 '(italic ((t (:foreground "magenta" :slant italic))))
 '(ledger-font-xact-highlight-face ((t (:background "gray29"))))
 '(mode-line ((t (:background "gray 10" :foreground "white" :box (:line-width 1 :color "#gray 10" :style unspecified) :overline "#073642" :underline "#284b54"))))
 '(mu4e-header-face ((t (:inherit default))))
 '(mu4e-unread-face ((t (:foreground "brown" :weight bold))))
 '(org-agenda-date ((t (:inherit variable-pitch :background "pale green"))))
 '(org-agenda-done ((t (:foreground "dim gray" :strike-through t))))
 '(org-checkbox-statistics-todo ((t (:inherit org-todo :weight normal))))
 '(org-date ((t (:foreground "coral" :underline t :height 1.0))))
 '(org-done ((t (:foreground "dim gray" :box nil :weight normal :height 1.0))))
 '(org-ellipsis ((t (:weight normal))))
 '(org-level-1 ((t (:inherit variable-pitch :foreground "gainsboro" :weight bold :height 1.3))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "gainsboro" :weight normal :height 0.9))))
 '(org-level-3 ((t (:inherit org-level-2 :foreground "wheat" :height 0.9))))
 '(org-level-4 ((t (:inherit org-level-3 :foreground "medium turquoise" :height 1.0))))
 '(org-level-5 ((t (:inherit org-level-4 :foreground "cornsilk"))))
 '(org-level-6 ((t (:inherit org-level-5 :foreground "#859900"))))
 '(org-level-7 ((t (:inherit org-level-6))))
 '(org-link ((t (:inherit org-date))))
 '(org-ref-cite-face ((t (:inherit default :foreground "forest green" :height 1.0))))
 '(org-special-keyword ((t (:weight normal :height 0.85))))
 '(org-tag ((t (:inherit default :foreground "yellow" :weight normal :height 0.8))))
 '(org-todo ((t (:foreground "green yellow" :box nil :weight bold))))
 '(secondary-selection ((t (:background "dim gray" :foreground "#eee8d5"))))
 '(underline ((t (:foreground "SeaGreen1" :underline t))))
 '(variable-pitch ((t (:family "exo"))))
 '(widget-field ((t (:background "dim gray" :foreground "white smoke")))))
(put 'downcase-region 'disabled nil)
