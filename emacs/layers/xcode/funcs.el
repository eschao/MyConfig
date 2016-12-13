;;; funcs.el --- xcode functions File
;;
;; Author: chao <chaozh@mail.com>
;;
;;; License: GPLv3

;;; code:
(defun xcode-objc-in-header-file ()
  "Check if current buffer is header file."
  (let* ((filename (buffer-file-name))
         (extension (car (last (split-string filename "\\.")))))
    (string= "h" extension)
    )
  )

(defun xcode-objc-jump-to-extension (extension)
  "Try to jump to file with given EXTENSION."
  (let* ((filename (buffer-file-name))
         (file-components (append (butlast (split-string filename "\\."))
                                  (list extension))))
    (find-file (mapconcat 'identity file-components "."))
    )
  )

;;; Assumes that Header and Source file are in same directory
(defun xcode-objc-jump-between-header-source ()
  "Jump between header and implementation files for ObjC."
  (interactive)
  (if (xcode-objc-in-header-file)
      (xcode-objc-jump-to-extension "m")
    (xcode-objc-jump-to-extension "h")
    )
  )

(defun xcode-objc-vsplit-open-file ()
  "Open header or source file in a vertical window."
  (interactive)
  (split-window-vertically)
  (if (xcode-objc-in-header-file)
      (xcode-objc-jump-to-extension "m")
    (xcode-objc-jump-to-extension "h")
    )
  )

(defun xcode-determine-objc-mode ()
  "Determine current buffer is a objc header file."
  (and (not (string= major-mode "objc-mode"))
       (string= (file-name-extension buffer-file-name) "h")
       (let ((end (point-max)))
         (if (> end 1000)
             (setq end 1000)
           )
         (if (string-match "^\\(#import\\|@protocol\\|@interface\\)"
                           (buffer-substring 1 end))
           (progn
             (objc-mode)
             )
           )
         )
       )
  )

(defun xcode-set-ycmd-conf ()
  "Set ycm config for ios."
  (interactive)
  (let* ((is-ycmd-configed (boundp 'ycmd-global-config)))
    (if (and is-ycmd-configed
             (string-match "ios_ycmd_conf\\.py" ycmd-global-config))
        (set-variable 'ycmd-global-config "/Users/chao/.mac_ycmd_conf.py")
      (set-variable 'ycmd-global-config "/Users/chao/.ios_ycmd_conf.py")
      )
    (if is-ycmd-configed
        (progn
          (ycmd-close)
          (ycmd-open)
          )
      )
    )
  )
