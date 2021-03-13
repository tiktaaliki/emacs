
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
(add-to-list 'load-path "~/Dropbox/emacs/")

					;(setq custom-file "~/Dropbox/emacs/custom.el")
;(setq custom-file "~/Dropbox/emacs/custom2.el")
;(load custom-file)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; backwards compatibility as default-buffer-file-coding-system
;; is deprecated in 23.2.
(if (boundp 'buffer-file-coding-system)
    (setq-default buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8))

;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

(load "dired+")
(load "org-pdfview")
(load "org-protocol-capture-html")
(load "ereader")
(load "org-book")
(load "org-depend")
(load "bookmark+")
(load "org-contacts")
;(load "zoom-frm")
;(load "ov-highlight")
(setq use-package-verbose t)
(setq use-package-always-ensure t)

(eval-when-compile (require 'use-package))
(require 'ob-tangle)
(require 'cl)
					;(load "settings")
(org-babel-load-file "~/Dropbox/emacs/pi.org")
					(org-babel-load-file "~/Dropbox/emacs/settings.org")
;(org-babel-load-file "~/Sync/emacs/gallium.org")
(org-babel-load-file "~/Dropbox/emacs/init.org")

(find-file ".emacs")
(find-file "~/Dropbox/emacs/settings.org")
(find-file "~/Dropbox/emacs/init.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((eval add-hook
	   (quote after-save-hook)
	   (lambda nil
	     (org-babel-tangle))
	   nil t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
