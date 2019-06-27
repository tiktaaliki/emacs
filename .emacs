(package-initialize)

(require 'package)
(require 'org-install)
(add-to-list 'load-path "~/Sync/emacs/.emacs.d/lisp/")
(add-to-list 'load-path "~/Sync/emacs/.emacs.d/snippets")
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;(setq custom-file "~/Sync/emacs/custom.el")

(setq use-package-verbose t)
(setq use-package-always-ensure t)

(eval-when-compile (require 'use-package))

;(org-babel-load-file "~/Sync/emacs/settings.org")
(org-babel-load-file "~/Sync/emacs/gallium.org")
(org-babel-load-file "~/Sync/emacs/pi.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default t)
 '(auto-save-visited-file-name t)
 '(auto-save-visited-mode t)
 '(bibtex-autokey-name-separator "-")
 '(bibtex-autokey-name-year-separator ":")
 '(bibtex-autokey-names 2)
 '(bibtex-autokey-titlewords 0)
 '(bibtex-autokey-year-length 4)
 '(browse-url-browser-function (quote eww-browse-url))
 '(confirm-kill-emacs (quote y-or-n-p))
 '(delete-by-moving-to-trash t)
 '(erc-notifications-mode t)
 '(fill-column 100)
 '(fill-flowed-encode-column 5000)
 '(fringe-mode 50 nil (fringe))
 '(global-auto-revert-mode t)
 '(global-visual-fill-column-mode t)
 '(global-visual-line-mode t)
 '(helm-M-x-always-save-history t)
 '(helm-M-x-reverse-history nil)
 '(helm-move-to-line-cycle-in-source nil)
 '(helm-org-rifle-show-path nil)
 '(history-delete-duplicates t)
 '(inhibit-eol-conversion t)
 '(menu-bar-mode nil)
 '(mu4e-attachment-dir "~/Sync/Spring 2019")
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
 '(mu4e-view-mode-hook
   (quote
    (turn-on-visual-line-mode visual-line-mode visual-fill-column-mode)))
 '(nov-pre-html-render-hook (quote (visual-line-mode)))
 '(nov-text-width 5)
 '(org-agenda-block-separator 45)
 '(org-agenda-scheduled-leaders (quote ("" "Sched.%2dx: ")))
 '(org-agenda-time-grid
   (quote
    ((daily weekly today require-timed remove-match)
     nil "......" "----------------")))
 '(org-archive-location
   "~/Sync/Zettelkasten/journal.org::datetree/* Finished tasks")
 '(org-clock-history-length 35)
 '(org-ctrl-k-protect-subtree (quote error))
 '(org-fast-tag-selection-single-key t)
 '(org-goto-interface (quote outline-path-completion))
 '(org-log-refile (quote time))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-eww org-gnus org-habit org-id org-info org-inlinetask org-tempo org-w3m org-eshell org-annotate-file org-bookmark org-checklist org-choose org-collector org-depend org-drill org-invoice org-learn org-registry org-screenshot org-velocity org-wikinodes org-jsinfo org-habit org-irc org-mouse org-protocol org-annotate-file org-eval org-expiry org-interactive-query org-man org-collector org-panel org-screen org-toc)))
 '(org-ref-pdf-directory "~/Sync/Spring 2019/PDFs/")
 '(org-refile-allow-creating-parent-nodes (quote confirm))
 '(org-refile-use-cache t)
 '(org-special-ctrl-a/e t)
 '(org-tags-column 0)
 '(org-todo-keyword-faces
   (quote
    (("habit" :foreground "dodger blue" :height 0.85)
     ("TODO" :foreground "#0059b3" :height 0.85)
     ("PROJECT" :foreground "#38471f" :weight bold :underline t :height 0.75)
     ("NEXT" :foreground "red" :weight bold :height 0.85)
     ("!~!" :foreground "#cc0066" :weight bold :height 1.0)
     ("?" :foreground "salmon" :height 0.9)
     ("DONE" :foreground "dim gray" :height 0.75)
     ("x" :foreground "dim gray" :height 0.75)
     ("!!!" :foreground "#ff0080" :box
      (:line-width 1 :color "grey75" :style released-button)
      :weight bold :height 1.0))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "NEXT(n)" "!~!(s)" "!!!(i)" "|" "DONE(d!)" "x(c!)")
     (sequence "habit(h)" "PROJECT(p)" "?(w!)"))))
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 '(org-trello-files (quote ("~/Zettelkasten/recipes.org")) nil (org-trello))
 '(org-use-fast-tag-selection nil)
 '(package-selected-packages
   (quote
    (centered-cursor-mode centered-window-mode solarized-theme solarized dired+ helm-org-rifle counsel wpuzzle nov wc-mode ox-reveal html-preview org-chef org-trello ox-pandoc pandoc company-bibtex company-auctex auctex yasnippet-snippets yasnippet ledger-mode org-gcal writeroom-mode use-package smartparens org-ref org-noter org-bullets olivetti magit interleave helm-projectile flyspell-correct-helm deft company calfw-org calfw-gcal calfw-cal calfw bbdb)))
 '(pdf-view-continuous nil)
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" ".emacs.d" ".stversions" "\".git\"")))
 '(projectile-globally-ignored-file-suffixes (quote (".org~" ".org#" "/.dropbox")))
 '(projectile-mode t nil (projectile))
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(unibyte-display-via-language-environment t)
 '(visual-fill-column-center-text t)
 '(warning-minimum-level :emergency))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#fdf6e3" :foreground "#432109" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 125 :width normal :foundry "simp" :family "Hack"))))
 '(fringe ((t (:inherit default))))
 '(mu4e-header-face ((t (:inherit default))))
 '(mu4e-unread-face ((t (:foreground "#859900" :weight bold))))
 '(org-checkbox-statistics-todo ((t (:inherit org-todo :weight normal))))
 '(org-level-1 ((t (:inherit default :foreground "black" :weight normal :height 1.1))))
 '(org-level-2 ((t (:inherit default :foreground "#424d00" :height 1.0))))
 '(org-level-3 ((t (:inherit variable-pitch :foreground "#14476c" :height 1.0))))
 '(org-level-4 ((t (:inherit variable-pitch :foreground "#664d00" :height 1.0))))
 '(org-list-dt ((t (:background "green yellow" :underline nil :weight bold))))
 '(org-special-keyword ((t (:foreground "#93a1a1" :weight normal :height 0.85))))
 '(org-tag ((t (:inherit default :foreground "navy" :overline t :underline t :weight bold :height 0.85))))
 '(variable-pitch ((t (:foreground "black" :height 1.1 :family "exo")))))
