;;; packages.el --- typescript Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Hamish Hutchings
;; Copyright (c) 2014-2015 Chris Bowdon & Contributors
;;
;; Author: Hamish Hutchings <hamhut1066@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq typescript-private-packages '(
                            tss
                            flycheck))

;; (defun typescript/init-tss ()
  ;; "Initialize my package"
  ;; (use-package tss
    ;; :defer t
    ;; :mode ("\\.ts\\'" . typescript-mode)
    ;; :init (evil-leader/set-key-for-mode 'typescript-mode
            ;; "mgg" 'tss-jump-to-definition
            ;; "mhh" 'tss-popup-help)
    ;; :config (tss-config-default)))


(defun typescript-private/post-init-flycheck ()
  "Add hook for flycheck"
  "remove hook for flymake, as it seems to conflict."
  (add-hook 'typescript-mode-hook 'flycheck-mode (flymake-mode nil)))

(defun typescript-private/init-tss ()
  "Initialize tss"
  (use-package tss
    :defer t
    :mode (
           ("\\.ts\\'" . typescript-mode)
           ))
  :init (evil-leader/set-key-for-mode 'flycheck-mode
                                      "mgg" 'tss-jump-to-definition
                                      "mhh" 'tss-popup-help)

  :config (progn
            (require 'typescript)
            (require 'tss)
            (require 'flycheck)
            (require 'evil)
            (require 'evil-leader)
            ;;; This Code Snippet was from [Here](https://github.com/caisah/flycheck-typescript) and is licensed under the GPL
            (flycheck-define-checker typescript
              "A TypeScript syntax checker using tsc command."
              :command ("tsc" "--noImplicitAny --out" "/dev/null" source-inplace)
              :error-patterns
              ((error line-start (file-name) "(" line "," column "): error " (message) line-end))
              :modes (typescript-mode))

            (add-to-list 'flycheck-checkers 'typescript)
            ;;; End of the snippet

            (tss-config-default)


            )
  )
