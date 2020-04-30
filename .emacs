(eval-when-compile
  (require 'package)
  (unless (assoc-default "melpa" package-archives)
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))
  (unless (assoc-default "melpa-stable" package-archives)
    (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t))
  (unless (assoc-default "org" package-archives)
    (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t))
(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
  
  (package-initialize)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
  (require 'use-package)
  (setq use-package-always-ensure t))

(require 'org)

(org-babel-load-file "~/Dropbox/emacs/config.org")
;(setq custom-file "~/Dropbox/emacs/custom.el")

;(load custom-file)
    (setq mu4e-get-mail-command "mbsync -aV") 
