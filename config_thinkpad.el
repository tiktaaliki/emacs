(find-file "~/Dropbox/emacs/config_thinkpad.org")
 
(setq-default fill-column 90)

(require 'cnfonts)
 ;; 让 cnfonts 随着 Emacs 自动生效。
 ;; (cnfonts-enable)
 ;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
 ;; (cnfonts-set-spacemacs-fallback-fonts)
 (setq cnfonts--custom-set-fontnames
       '(( "Ubuntu Mono" "DejaVu Sans Mono")
         ("文泉驿等宽微米黑" "Ubuntu Mono" "隶书" "新宋体")
         ("HanaMinB" "SimSun-ExtB" "MingLiU-ExtB")))
