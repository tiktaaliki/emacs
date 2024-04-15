(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-revert-remote-files t)
 '(auto-save-interval 20)
 '(auto-save-visited-file-name t)
 '(auto-save-visited-mode t)
 '(backup-directory-alist
   '(("." . "c:/Users/byoon/Dropbox (Personal)/emacs/.emacs.d/emacs-backup")))
 '(create-lockfiles nil)
 '(delete-selection-mode t)
 '(global-auto-revert-mode t)
 '(global-visual-line-mode t)
 '(org-agenda-skip-scheduled-if-deadline-is-shown 'not-today)
 '(org-agenda-sticky t)
 '(org-agenda-tags-column -80)
 '(org-clock-out-remove-zero-time-clocks t)
 '(org-ellipsis " ↯ ")
 '(org-fontify-quote-and-verse-blocks t)
 '(org-habit-graph-column 40)
 '(org-id-link-to-org-use-id 'create-if-interactive)
 '(org-log-note-headings
   '((done . "State %-12s from %-12S %t")
     (state . "State %-12s from %-12S %t")
     (note . "Note taken on %t")
     (reschedule . "Rescheduled from %S on %t")
     (delschedule . "Not scheduled, was %S on %t")
     (redeadline . "New deadline from %S on %t")
     (deldeadline . "Removed deadline, was %S on %t")
     (refile . "Refiled on %t")
     (clock-out . "")))
 '(org-support-shift-select 'always)
 '(org-timeblock-span 1)
 '(org-todo-keyword-faces
   '(("WAIT" :weight regular :underline nil :inherit org-todo :foreground "goldenrod")
     ("NEXT" :weight regular :underline nil :inherit org-todo :foreground "magenta")
     ("PROG" :weight bold :underline nil :inherit org-todo :foreground "#00BFFF")
     ("HOLD" :weight bold :underline nil :inherit org-todo :foreground "#336b87")))
 '(package-selected-packages
   '(ereader org-timeblock org-super-agenda pcache org-ref org-edna helm-bibtex helm-bibtexkey powershell sound-wav mpv visual-fill-column avy org-gcal centered-window zenburn-theme sudoku 2048-game yasnippet unicode-fonts org-superstar interleave aggressive-indent unkillable-scratch org-plus-contrib deft ace-jump-mode bufler helm-projectile))
 '(safe-local-variable-values '((org-reverse-note-order)))
 '(visual-fill-column-center-text t)
 '(visual-fill-column-width 110))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:foreground "gold" :weight bold))))
 '(italic ((t (:foreground "dark sea green" :slant italic))))
 '(org-agenda-calendar-event ((t (:inherit default :foreground "cornflower blue"))))
 '(org-agenda-current-time ((t (:inherit org-time-grid :foreground "deep pink"))))
 '(org-date ((t (:foreground "#ECBE7B" :underline t))))
 '(org-level-1 ((t (:inherit outline-1 :extend nil :weight normal))))
 '(org-level-2 ((t (:inherit outline-2 :extend nil :weight normal))))
 '(org-level-3 ((t (:inherit outline-3 :extend nil :weight normal))))
 '(org-level-4 ((t (:inherit outline-4 :extend nil :weight normal))))
 '(org-link ((t (:inherit link :foreground "goldenrod" :weight normal))))
 '(org-quote ((t (:inherit org-block :foreground "misty rose" :slant italic))))
 '(org-timeblock-blue ((t (:extend t :background "#242679" :foreground "#8fcfff" :height 0.8 :family "Calibri"))))
 '(org-timeblock-cyan ((t (:extend t :background "#004065" :foreground "#8eecf4" :height 0.8 :family "Calibri"))))
 '(org-timeblock-green ((t (:extend t :background "#00422a" :foreground "#aceaac" :height 0.8))))
 '(org-timeblock-magenta ((t (:extend t :background "#71206a" :foreground "#ffccff" :height 0.8 :family "Calibri"))))
 '(org-timeblock-red ((t (:extend t :background "#77002a" :foreground "#ffcccc" :height 0.8))))
 '(org-timeblock-yellow ((t (:extend t :background "#693200" :foreground "#fff29a" :height 0.8 :family "calibri"))))
 '(underline ((t (:foreground "firebrick1" :underline t)))))
