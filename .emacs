(package-initialize)

(require 'package) ;; sets up package.el, which is a package manager for emacs. comes automatically bundled with it.

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
       (add-to-list 'package-archives (cons "melpa" url) t))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(add-to-list 'load-path "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/org-ref/")

(setq use-package-verbose t)
(setq use-package-always-ensure t)
(defun package-config ()
  (unless (package-installed-p 'org-plus-contrib)
    (package-refresh-contents)
    (package-install 'org-plus-contrib)))

(add-hook 'after-init-hook 'package-config)


(eval-when-compile (require 'use-package))
(setq use-package-always-ensure t)

;(use-package org-plus-contrib :ensure t)
(setq custom-file "~/Dropbox/emacs/.emacs-custom.el")
;(load custom-file)
(org-babel-load-file "~/Dropbox/emacs/settings.org")
(org-babel-load-file "~/Dropbox/emacs/pi.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(annotate-annotation-column 100)

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
       (:weight bold :foreground "magenta")
       verbatim)))))

 '(org-modules
   (quote
    (org-bbdb org-bibtex org-gnus org-habit org-id org-info org-inlinetask org-bookmark org-checklist org-drill org-invoice org-registry org-toc org-habit org-irc org-mouse org-protocol org-annotate-file org-eval org-expiry org-interactive-query org-man org-collector org-panel org-screen org-toc)))

 '(package-selected-packages
   (quote
    (yasnippet csv helm-bbdb bbdb annotate wc-mode auctex org-mu4e mu4e-contrib mu4e typopunct org-ref-bibtex org-id org-ref-isbn doi-utils helm-projectile projectile toc-org org-drill org-plus-contrib visual-fill-column use-package smartparens org-ref org-pdfview org-gcal org-bullets org-brain magit interleave iedit flyspell-correct-helm deft darkokai-theme company calfw-org calfw-gcal calfw anzu)))
)








(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#242728" :foreground "lemon chiffon" :weight normal :height 151 :family "Consolas"))))
 '(annotate-highlight ((t (:foreground "dark orange" :underline "coral")))))

 
