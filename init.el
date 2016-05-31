;; damn this looks a lot better than what i had :/

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package better-defaults
             :ensure t)

(use-package try
             :ensure t)

(use-package which-key
             :ensure t
             :config
             (which-key-mode))

(use-package powerline
             :ensure t
             :config
             (setq powerline-display-hud nil)
             (powerline-default-theme))

(use-package hc-zenburn-theme
             :ensure t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (hc-zenburn-theme powerline which-key try use-package))))
