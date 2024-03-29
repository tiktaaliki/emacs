(set-input-method "korean-hangul")

  (with-eval-after-load 'quail
    (push
     (cons "dvorak"
           (concat
            "                              "
            "`~1!2@3#4$5%6^7&8*9(0)[{]}    "   ; numbers
            "  '\",<.>pPyYfFgGcCrRlL/?=+\\|  " ; qwerty
            "  aAoOeEuUiIdDhHtTnNsS-_      "   ; asdf
            "  ;:qQjJkKxXbBmMwWvVzZ        "   ; zxcv
            "                              "))
     quail-keyboard-layout-alist)

    (quail-set-keyboard-layout "dvorak"))

(with-eval-after-load "quail/hangul"
   (defun hangul2-input-method (key)
     "2-Bulsik input method."
     (setq key (quail-keyboard-translate key))
     (if (or buffer-read-only (not (alphabetp key)))
         (list key)
       (quail-setup-overlays nil)
       (let ((input-method-function nil)
             (echo-keystrokes 0)
             (help-char nil))
         (setq hangul-queue (make-vector 6 0))
         (hangul2-input-method-internal key)
         (unwind-protect
             (catch 'exit-input-loop
               (while t
                 (let* ((seq (read-key-sequence nil))
                        (cmd (lookup-key hangul-im-keymap seq))
                        key)
                   (cond
                    ((and (stringp seq)
                          (= 1 (length seq))
                          (setq key (quail-keyboard-translate (aref seq 0)))
                          (alphabetp key))
                     (hangul2-input-method-internal key))
                    ((commandp cmd)
                     (call-interactively cmd))
                    (t
                     (setq unread-command-events
                           (nconc (listify-key-sequence seq)
                                  unread-command-events))
                     (throw 'exit-input-loop nil))))))
           (quail-delete-overlays)))))
   (defun toggle-quail-keyboard-layout ()
      "Toggle the keyboard layout between dvorak and qwerty.

    This sets `quail-keyboard-layout-type' to the opposite of what is
    currently selected."
      (interactive)
      (if (string-equal quail-keyboard-layout-type "dvorak")
      (quail-set-keyboard-layout "standard")
    (quail-set-keyboard-layout "dvorak"))
      (message "Switched to layout: %s"
       (propertize quail-keyboard-layout-type
               'face 'bold)))


      (load "hangul"))
