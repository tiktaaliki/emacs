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
 '(org-agenda-dim-blocked-tasks 'invisible)
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
 '(org-todo-keyword-faces
   '(("WAIT" :weight regular :underline nil :inherit org-todo :foreground "goldenrod")
     ("NEXT" :weight regular :underline nil :inherit org-todo :foreground "magenta")
     ("PROG" :weight bold :underline nil :inherit org-todo :foreground "#00BFFF")
     ("HOLD" :weight bold :underline nil :inherit org-todo :foreground "#336b87")))
 '(package-selected-packages
   '(org-ref org-edna helm-bibtex helm-bibtexkey powershell sound-wav mpv visual-fill-column avy org-gcal centered-window zenburn-theme sudoku 2048-game yasnippet unicode-fonts org-superstar interleave aggressive-indent unkillable-scratch org-plus-contrib deft ace-jump-mode bufler helm-projectile))
 '(safe-local-variable-values '((org-reverse-note-order)))
 '(visual-fill-column-center-text t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:foreground "gold" :weight bold))))
 '(org-agenda-calendar-event ((t (:inherit default :foreground "cornflower blue"))))
 '(org-agenda-current-time ((t (:inherit org-time-grid :foreground "deep pink"))))
 '(org-level-1 ((t (:inherit outline-1 :extend nil :weight normal))))
 '(org-level-2 ((t (:inherit outline-2 :extend nil :weight normal))))
 '(org-level-3 ((t (:inherit outline-3 :extend nil :weight normal))))
 '(org-level-4 ((t (:inherit outline-4 :extend nil :weight normal))))
 '(underline ((t (:foreground "firebrick1" :underline t)))))
