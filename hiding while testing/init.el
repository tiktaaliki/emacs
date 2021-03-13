(setq visible-bell nil)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq inhibit-startup-screen t)
(scroll-bar-mode -1)
(setq initial-major-mode 'org-mode)
(delete-selection-mode) ;allows to delete selected text by typing
(fset 'yes-or-no-p 'y-or-n-p)

(set-fontset-font "fontset-default" '(#x1100 . #xffdc)
		  '("NanumBarunpen" . "unicode-bmp" ))
(set-fontset-font "fontset-default" '(#xe0bc . #xf66e) 
		  '("NanumBarunpen" . "unicode-bmp"))
(set-fontset-font "fontset-default" '(#x2091 . #x21ff)     
		  (font-spec :family "DejaVu Sans Mono" :size 20)) 

(setq use-default-font-for-symbols nil)

(use-package unicode-fonts
  :ensure t
  :defer t
  :init (unicode-fonts-setup))

(setq confirm-kill-emacs (quote y-or-n-p))
(setq global-visual-fill-column-mode t)
(setq global-visual-line-mode t)

(setq org-startup-indented t)
(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))
(add-hook 'org-mode-hook (lambda () (visual-line-mode 1)))
(add-hook 'org-mode-hook (lambda () (auto-revert-mode 1)))
(setq org-hide-emphasis-markers t)
(setq org-hide-leading-stars t) 
(setq org-startup-with-inline-images t)
(setq org-startup-align-all-tables t)
(setq org-startup-folded t)
(setq org-special-ctrl-a/e (quote (t . t)))
(use-package org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-catch-invisible-edits (quote smart))
(setq org-show-context-detail t)
(setq org-cycle-separator-lines 0)
(setq org-support-shift-select (quote always))

(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
                                            ; (use-package mu4e) 
                                            ; (use-package mu4e-contrib)
    (require 'mu4e)
    (require 'org-mu4e)
    ;; don't save message to Sent Messages, Gmail/IMAP takes care of this
    (setq mu4e-sent-messages-behavior 'delete)
    (setq message-kill-buffer-on-exit t)
    (setq mu4e-change-filenames-when-moving t)
    (setq mu4e-compose-format-flowed t)


    (add-hook 'mu4e-view-mode-hook 'visual-line-mode)
    (add-hook 'mu4e-view-mode-hook 'visual-fill-column-mode)

    (defun no-auto-fill ()
      "Turn off auto-fill-mode."
      (auto-fill-mode -1))


    (defun vcfm-off ()
                                            ;turn off visual fill column mode
      (visual-fill-column-mode nil))

    (add-hook 'mu4e-compose-mode-hook #'no-auto-fill)
    (add-hook 'mu4e-headers-mode-hook (lambda ()(visual-line-mode -1)))

(setq mu4e-compose-dont-reply-to-self t)
(setq mu4e-confirm-quit nil)
(setq mu4e-display-update-status-in-modeline t)
(setq mu4e-index-lazy-check t)


(setq mu4e-bookmarks
   (quote
    ((:name "Inbox" :query "maildir:/INBOX" :key 117)
     (:name "Today's messages" :query "date:today..now" :key 116)
     (:name "Last 7 days" :query "date:7d..now" :show-unread t :key 119)
     (:name "Messages with images" :query "mime:image/*" :key 112))))

;  (setq mu4e-attachment-dir "/home/betsy/Dropbox/Spring 2019/")




  (setq shr-color-visible-luminance-min 50) 
  (setq shr-color-visible-distance-min 5)
  ;(setq mu4e-view-html-plaintext-ratio-heuristic 'most-positive-fixnum)
  (setq message-yank-prefix ""
        message-yank-empty-prefix ""
        message-yank-cited-prefix "")

  (setq w3m-default-desplay-inline-images t)
    (defun mu4e-action-view-in-w3m ()
      "View the body of the message in emacs w3m."
      (interactive)
      (w3m-browse-url (concat "file://"
          (mu4e~write-body-to-html (mu4e-message-at-point t)))))


  ;; customize the reply-quote-string
  (setq message-citation-line-format "\n\nOn %a %d %b %Y at %R, %f wrote:\n")
  ;; choose to use the formatted string
  (setq message-citation-line-function 'message-insert-formatted-citation-line)


  (setq mu4e-view-scroll-to-next nil)

  (add-hook 'message-mode-hook 'visual-fill-column-mode)

(setq mu4e-headers-fields
           '( (:human-date    .  15)    ;; alternatively, use :human-date
              (:flags         .   5)
              (:from          .  20)
              (:thread-subject       . 70 )
                                             ;             (:thread-subject       . 120 )
              )) 
     (setq org-mu4e-link-query-in-headers-mode nil)
;     (setq mu4e-update-interval 300)
     (setq mu4e-use-fancy-chars nil)
(setq mu4e-index-update-in-background nil)
     (setq mu4e-view-prefer-html t)
     (setq mu4e-headers-skip-duplicates t)
 ;    (setq mu4e-headers-auto-update t)
     (setq mu4e-view-show-addresses t)
(setq mu4e-view-show-images t)
     (setq mu4e-headers-date-format "%x")
     (setq mu4e-headers-time-format "%H:%M")

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "true")

(setq mu4e-maildir-shortcuts
  '( ("/INBOX"  . ?i)
      ("/Sent"   . ?s)
      ("/Trash"  . ?t)
      ("/All"    . ?a)))

(setq mu4e-drafts-folder "/Drafts")
(setq mu4e-sent-folder   "/Sent")
(setq mu4e-trash-folder  "/Trash")
(setq mu4e-refile-folder "/All")
(setq mu4e-maildir "~/Maildir")
(setq mu4e-attachment-dir "~/Dropbox/2020")
