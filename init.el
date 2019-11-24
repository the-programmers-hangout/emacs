;;; tph-emacs --- An Evil-based configuration for Emacs, with <3 from The Programmer's Hangout

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(setq-default use-package-always-ensure t)

(global-linum-mode t)

(setq-default font-use-system-font t
              inhibit-startup-screen t)

(use-package which-key
  :demand t
  :config
  (which-key-mode)
  :bind
  ("C-h m" . which-key-show-major-mode)
  ("C-h b" . which-key-show-top-level))

(use-package evil
  :demand t
  :config
  (evil-mode t))

(use-package magit
  :demand t)

(use-package org
  :demand t
  :ensure org-plus-contrib)
