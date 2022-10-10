(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-source-correlate-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes '(moe-light))
 '(custom-safe-themes
   '("7a8206a977c612016094e6390de94f6af98c3a4adc5b3561f56376730b98af9e" default))
 '(ispell-dictionary nil)
 '(ispell-program-name "hunspell")
 '(org-babel-load-languages '((python . t)))
 '(org-babel-python-command "python3")
 '(org-babel-python-mode 'python)
 '(org-confirm-babel-evaluate nil)
 '(package-selected-packages '(moe-theme auctex undo-tree company))
 '(python-shell-interpreter "python3")
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;company
(add-hook 'after-init-hook 'global-company-mode)

;;undo-tree
(global-undo-tree-mode)

;;electric
(electric-pair-mode)

;;reftex
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode

;;org
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))
