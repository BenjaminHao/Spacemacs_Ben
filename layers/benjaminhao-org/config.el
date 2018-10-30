;;; config.el --- BenjaminHao Layer packages File for Spacemacs
;;
;; Copyright (c) 2016-2019 BenjaminHao
;;
;; Author: BenjaminHao <haomingkai@gmail.com>
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun benjaminhao/org-ispell ()
  "Configure `ispell-skip-region-alist' for `org-mode'."
  (make-local-variable 'ispell-skip-region-alist)
  (add-to-list 'ispell-skip-region-alist '(org-property-drawer-re))
  (add-to-list 'ispell-skip-region-alist '("~" "~"))
  (add-to-list 'ispell-skip-region-alist '("=" "="))
  (add-to-list 'ispell-skip-region-alist '("^#\\+BEGIN_SRC" . "^#\\+END_SRC")))

(add-hook 'org-mode-hook #'benjaminhao/org-ispell)
