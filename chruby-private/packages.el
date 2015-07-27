;;; packages.el --- chruby-private Layer packages File for Spacemacs
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
(setq chruby-private-packages
    '(
      ;; package names go here
      chruby
      ))

;; List of packages to exclude.
(setq chruby-private-excluded-packages '())

;; For each package, define a function chruby-private/init-<package-name>
;;
(defun chruby-private/init-chruby ()
  "Initialize my package"
  (use-package chruby
    :config (progn
            (chruby "ruby-2.1.6")))
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
