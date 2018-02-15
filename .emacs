(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
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
(use-package org-babel :ensure t)
(use-package org-plus-contrib :ensure t)
(setq custom-file "~/Dropbox/emacs/.emacs-custom.el")
;(load custom-file)
(org-babel-load-file "~/Dropbox/emacs/settings.org")
(org-babel-load-file "~/Dropbox/emacs/pi.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (org-plus-contrib org-babel use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
