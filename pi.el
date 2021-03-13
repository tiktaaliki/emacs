(set-face-attribute 'bold nil :weight 'bold :foreground "#f0810f") ; f0810f ffbb00 de7a22
      (set-face-attribute 'italic nil :slant 'italic :foreground "#fa6775") ;bubblegum 

; (add-hook 'org-agenda-mode-hook (lambda () (org-gcal-sync) ))
 ;(add-hook 'org-capture-afterfinalize-hook (lambda () (org-gcal-sync) ))

(setq user-full-name "Betsy Yoon"
      user-mail-address "betsy.yoon@gmail.com")
    (setq mu4e-get-mail-command "mbsync -aV")
(require 'smtpmail)
(setq message-send-mail-function 'smtpmail-send-it
     starttls-use-gnutls t
     smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
     smtpmail-auth-credentials
       '(("smtp.gmail.com" 587 "betsy.yoon" "gyzoxzmytclnifef"))
     smtpmail-default-smtp-server "smtp.gmail.com"
     smtpmail-smtp-server "smtp.gmail.com"
     smtpmail-smtp-service 587
     smtpmail-local-domain "gmail.com"
     smtpmail-smtp-user "betsy.yoon")

(setq message-kill-buffer-on-exit t)
