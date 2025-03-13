(global-hl-line-mode 1)
(global-display-line-numbers-mode t)
(global-set-key (kbd "TAB") 'self-insert-command);
(electric-pair-mode 1) ;; bracket auto make
(flyspell-mode 1) ;;spelling check
;;(global-highlight-symbol-mode 1) ;; symbol searching (에러있는듯 보임)
;; (global-whitespace-mode 1) ;;highlight space,tab...etcs
(which-function-mode 1) ;;modeline function/method showing
(show-paren-mode 1) ;; highlighing bracket match

;; (setq-default tab-always-indent t)
;; (setq-default tab-width 4)
(add-to-list 'default-frame-alist '(fullscreen . fullboth))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(solarized-wombat-dark))
 '(custom-safe-themes
   '("3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" default))
 '(package-selected-packages '(solarized-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq tramp-verbose 10)

(setq-default mode-line-format
              '("%e"
                (:eval (propertize (concat " " (abbreviate-file-name default-directory)" ")
                                   'face '(:weight bold :foreground "light gray" :background "")))

		" | "
                (:eval (propertize " %b " 'face '(:weight bold :foreground "light blue" :background "")))
		" | "
                (:eval (propertize
                        (format " %s " (replace-regexp-in-string "[/*].*" "" mode-name))
                        'face '(:weight bold :foreground "light green" :background "")))
                " | "
                (:eval (propertize " %p (%l,%c) "
                                   'face '(:weight bold :foreground "yellow" :background "")))

		))

(setq-default display-line-numbers-width 2)
(custom-set-faces
 '(line-number
   ((t (:foreground "gray" :background "#363636" :weight bold))))
 '(line-number-current-line
   ((t (:foreground "black" :background "gold" :weight bold))))
 '(line-number-major-tick
   ((t (:foreground "lightblue" :background "black"))))
 '(line-number-minor-tick
   ((t (:foreground "lightgreen" :background "black"))))
)
