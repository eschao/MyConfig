;;; packages.el --- xcode Layer packages File for Spacemacs
;;
;; Author: chao <chaozh@mail.com>
;;
;;; License: GPLv3

(setq xcode-packages
      '(
        cc-mode
        swift-mode
        ))

(defun xcode/init-cc-mode ()
  (use-package cc-mode
    :mode ("\\.m\\'" . objc-mode)
    :defer t
    :init
    (progn
      (add-hook 'after-save-hook 'xcode-determine-objc-mode)
      (xcode-set-ycmd-conf)
      (setq magic-mode-alist
            (append (list
                     '("\\(.\\|\n\\)*\n#import" . objc-mode)
                     '("\\(.\\|\n\\)*\n@interface" . objc-mode)
                     '("\\(.\\|\n\\)*\n@protocol" . objc-mode))
                    magic-mode-alist)
            )
      )
    
    :config
    (progn
      (spacemacs/declare-prefix "o" "xcode-project")
      (spacemacs/set-leader-keys
        "oj" 'xcode-objc-jump-between-header-source
        "ov" 'xcode-objc-vsplit-open-file
        "oy" 'xcode-set-ycmd-conf
        )
      )
    )
  )
