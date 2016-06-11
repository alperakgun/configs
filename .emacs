;; Setting rbenv path
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ;; ("marmalade" . "http://marmalade-repo.org/packages/") 
          ("melpa" . "http://melpa.milkbox.net/packages/")
 ))
(package-initialize)

(load-theme 'solarized-light t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(blink-cursor-mode nil)
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("f350c66dcff6db73192c4819363b7c1992931841e5ab381b1ed57ef8257a498f" "bad832ac33fcbce342b4d69431e7393701f0823a3820f6030ccc361edd2a4be4" "4eaad15465961fd26ef9eef3bee2f630a71d8a4b5b0a588dc851135302f69b16" "9370aeac615012366188359cb05011aea721c73e1cb194798bc18576025cabeb" "cb453c60201288b198d115f1121fdab94d609da418cc6d0775ee0dea5beab5ef" "d2622a2a2966905a5237b54f35996ca6fda2f79a9253d44793cfe31079e3c92b" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" "9f5fe6191b981ce29a2b4f8e4dbcefef7dd33b292d80c620f754be174efa9d58" default)))
 '(fci-rule-color "#383838")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (flycheck flycheck-css-colorguard company company-web zencoding-mode yaml-mode web-mode tidy solarized-theme sass-mode ruby-tools ruby-test-mode ruby-refactor ruby-hash-syntax ruby-end ruby-electric ruby-dev ruby-block ruby-additional rubocop robe rinari rainbow-mode projectile-rails php-refactor-mode php-mode magit-find-file magit-filenotify jsx-mode json-mode jsfmt js2-refactor js2-highlight-vars iedit ido-ubiquitous flymake-ruby enh-ruby-mode color-theme-solarized color-theme-sanityinc-solarized android-mode)))
 '(syslog-debug-face
   (quote
    ((t :background unspecified :foreground "#2aa198" :weight bold))))
 '(syslog-error-face
   (quote
    ((t :background unspecified :foreground "#dc322f" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#859900"))))
 '(syslog-info-face
   (quote
    ((t :background unspecified :foreground "#268bd2" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#b58900"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#d33682"))))
 '(syslog-warn-face
   (quote
    ((t :background unspecified :foreground "#cb4b16" :weight bold))))
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Noto Mono" :foundry "GOOG" :slant normal :weight normal :height 98 :width normal)))))


;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)


;; Rinari
;;(require 'rinari) 
;;(require 'tidy) 

;; Alper
;;(global-set-key "\M- " 'hippie-expand)
(winner-mode 1)
(setq org-todo-keywords
       '((sequence "TODO" "WAITING" "TESTING" "|" "DONE" "REJECTED")))

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(recentf-mode 1)
(line-number-mode 1)


(require 'linum)
(global-linum-mode)
(setq make-backup-files nil) 

; from http://blog.zenspider.com/emacs/
(define-key isearch-mode-map (kbd "C-o")
  (lambda ()
    (interactive)
    (let ((case-fold-search isearch-case-fold-search))
      (occur (if isearch-regexp isearch-string
               (regexp-quote isearch-string))))))

(recentf-mode 1)



(defun kill-other-buffers ()
  "kill other buffers"
  (interactive)
  (dolist (buffer (buffer-list)) (unless (eql buffer (current-buffer)) (kill-buffer buffer)))  
)

(provide 'kill-other-buffers)
(global-set-key "\C-x\C-k\C-k" 'kill-other-buffers)


(setq inferior-lisp-program "/usr/bin/sbcl")

(setq inferior-scheme-program "/usr/bin/racket")


;;(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
;;(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))



(defun duplicate-line (arg)
  "Duplicate current line, leaving point in lower line."
  (interactive "*p")

  ;; save the point for undo
  (setq buffer-undo-list (cons (point) buffer-undo-list))

  ;; local variables for start and end of line
  (let ((bol (save-excursion (beginning-of-line) (point)))
        eol)
    (save-excursion

      ;; don't use forward-line for this, because you would have
      ;; to check whether you are at the end of the buffer
      (end-of-line)
      (setq eol (point))

      ;; store the line and disable the recording of undo information
      (let ((line (buffer-substring bol eol))
            (buffer-undo-list t)
            (count arg))
        ;; insert the line arg times
        (while (> count 0)
          (newline)         ;; because there is no newline in 'line'
          (insert line)
          (setq count (1- count)))
        )

      ;; create the undo information
      (setq buffer-undo-list (cons (cons eol (point)) buffer-undo-list)))
    ) ; end-of-let

  ;; put the point in the lowest line and return
  (next-line arg))

(global-set-key (kbd "\C-c\C-d") 'duplicate-line)

(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p) 
(setq-default truncate-lines t)


;;(windmove-default-keybindings 'control)
(add-to-list 'load-path "~/.emacs.d/elisp")
(require 'iedit)
(require 'chuck-mode)
(define-key global-map (kbd "C-;") 'iedit-mode)
(define-key isearch-mode-map (kbd "C-;") 'iedit-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)



;; Prevent the cursor from blinking
(blink-cursor-mode 0)
;; Don't use messages that you don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
;; Don't let Emacs hurt your ears
(setq visible-bell t)
;; Who use the bar to scroll?
(scroll-bar-mode 0)
(tool-bar-mode 0)


;;(speedbar 1)
;;(kill-other-buffers)
(dired "~")

(projectile-global-mode)
(add-hook 'after-init-hook 'global-company-mode)
;;(push 'company-robe company-backends)
(add-hook 'ruby-mode-hook 'robe-mode)


(put 'dired-find-alternate-file 'disabled nil)

(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t) 
(add-hook 'js2-mode-hook 'js2-custom-setup) 
(defun js2-custom-setup () (moz-minor-mode 1))


