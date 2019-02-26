(package-initialize)

(require 'package)
(require 'org-install)
(add-to-list 'load-path "~/Sync/emacs/.emacs.d/lisp/")
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;(setq custom-file "~/Sync/emacs/custom.el")

;(setq use-package-verbose t)
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
 '(fringe-mode 25 nil (fringe))
 '(global-visual-fill-column-mode t)
 '(global-visual-line-mode t)
 '(helm-M-x-always-save-history t)
 '(helm-M-x-reverse-history nil)
 '(helm-move-to-line-cycle-in-source nil)
 '(helm-org-rifle-show-path nil)
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
 '(mu4e-headers-visible-columns 200)
 '(mu4e-hide-index-messages t)
 '(mu4e-split-view (quote horizontal))
 '(mu4e-update-interval 20)
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
 '(org-goto-interface (quote outline-path-completion))
 '(org-log-refile (quote time))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-eww org-gnus org-habit org-id org-info org-inlinetask org-tempo org-w3m org-eshell org-annotate-file org-bookmark org-checklist org-choose org-collector org-depend org-drill org-invoice org-learn org-registry org-screenshot org-velocity org-wikinodes org-jsinfo org-habit org-irc org-mouse org-protocol org-annotate-file org-eval org-expiry org-interactive-query org-man org-collector org-panel org-screen org-toc)))
 '(org-refile-allow-creating-parent-nodes (quote confirm))
 '(org-refile-use-cache t)
 '(org-special-ctrl-a/e t)
 '(org-todo-keyword-faces
   (quote
    (("habit" :foreground "dodger blue" :height 0.9)
     ("TODO" :foreground "#0059b3" :height 0.9)
     ("PROJECT" :foreground "#38471f" :weight bold :underline t :height 0.75)
     ("NEXT" :foreground "red" :weight bold :height 0.9)
     ("~!~" :foreground "#cc0066" :weight bold :height 0.9)
     ("?" :foreground "salmon" :height 0.9)
     ("DONE" :foreground "dim gray" :height 0.75)
     ("x" :foreground "dim gray" :height 0.75)
     ("!!!" :foreground "#cc0066" :weight bold :height 0.9))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "NEXT(n)" "~!~(s)" "!!!(i)" "|" "DONE(d!)" "x(c!)")
     (sequence "habit(h)" "PROJECT(p)" "?(w!)"))))
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 '(org-trello-files (quote ("~/Zettelkasten/recipes.org")) nil (org-trello))
 '(package-selected-packages
   (quote
    (solarized-theme solarized dired+ helm-org-rifle counsel wpuzzle nov wc-mode ox-reveal html-preview org-chef org-trello ox-pandoc pandoc company-bibtex company-auctex auctex yasnippet-snippets yasnippet ledger-mode org-gcal writeroom-mode use-package smartparens org-ref org-noter org-bullets olivetti magit interleave helm-projectile flyspell-correct-helm deft company calfw-org calfw-gcal calfw-cal calfw bbdb)))
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
 '(default ((t (:inherit nil :stipple nil :background "#f7f3ee" :foreground "#432109" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 125 :width normal :foundry "simp" :family "Hack"))))
 '(fringe ((t (:inherit default))))
 '(org-level-1 ((t (:foreground "#cb4b16" :height 1.3 :family "amita"))))
 '(variable-pitch ((t (:foreground "black" :height 1.0 :family "exo")))))
