;;; packages.el --- fullframe-private Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq fullframe-private-packages
    '(
      ;; package names go here
      fullframe
      ))

;; List of packages to exclude.
(setq fullframe-private-excluded-packages '())

;; For each package, define a function fullframe-private/init-<package-name>
;;
(defun fullframe-private/init-fullframe ()
  "Initialize my package"
  (use-package fullframe
    :init (progn
            (fullframe magit-status magit-mode-quit-window nil)
            (fullframe magit-diff magit-mode-quit-window nil)
            )
    )
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
