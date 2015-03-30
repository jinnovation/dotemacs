;;; init-keybinding.el --- Keybinding configs

(provide 'init-keybinding)

(require 'init-projectile)
(require 'init-fn)

(global-unset-key (kbd "<menu>"))

(global-set-key (kbd "M-`") 'ace-window)

(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "\<C-S-iso-lefttab>")
  (lambda ()
    (interactive)
    (other-window -1)))

(global-set-key (kbd "<f1>") 'dired-at-current)
(global-set-key (kbd "<f9>") 'circe)
(global-set-key (kbd "<f10>") 'mu4e)
(if-package-installed "elfeed"
  (global-set-key (kbd "<f11>") 'elfeed))
(global-set-key (kbd "<f12>") 'org-agenda)

(after 'elfeed
  (define-key elfeed-search-mode-map (kbd "<SPC>") 'next-line))

(add-hook 'ruby-mode-hook
  (lambda ()
    (local-set-key (kbd "RET")
      'newline-and-indent)
    (ruby-end-mode)))

(global-set-key (kbd "RET")   'newline-and-indent)
(global-set-key (kbd "C-x |") 'window-toggle-split-direction)
(global-set-key (kbd "C-x k") 'kill-current-buffer)
(global-set-key (kbd "M-x")   'helm-M-x)

(after 'evil
  (local-unset-key (kbd "C-a"))
  (local-unset-key (kbd "C-x C-x"))
  (local-unset-key (kbd "C-w"))
  (local-unset-key (kbd "C-l"))

  (define-key evil-emacs-state-map (kbd "<escape>") 'evil-execute-in-normal-state)

  (define-key evil-normal-state-map (kbd "C-l")
    'evil-search-highlight-persist-remove-all)
  (define-key evil-normal-state-map (kbd "L") 'evil-end-of-line)
  (define-key evil-normal-state-map (kbd "H") 'evil-beginning-of-line)

  (define-key evil-normal-state-map (kbd "C-w q") 'delete-window)
  (define-key evil-normal-state-map (kbd "RET") 'insert-newline-after)

  (define-key evil-insert-state-map (kbd "RET")
    'newline-and-indent)

  (define-key evil-normal-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)

  (evilem-default-keybindings "SPC")

  (after 'evil-leader
    (evil-leader/set-leader "<SPC>")
    (evil-leader/set-key
      "M" 'helm-M-x
      "w" 'save-buffer

      "rtw" 'delete-trailing-whitespace

      "ci" 'evilnc-comment-or-uncomment-lines
      "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
      "cc" 'evilnc-copy-and-comment-lines
      "cp" 'evilnc-comment-or-uncomment-paragraphs
      "cv" 'evilnc-toggle-invert-comment-line-by-line

      "ii" 'helm-circe

      "ar" 'align-regexp
      "/" 'helm-swoop
      "ff" 'helm-find-files

      "pp" 'helm-projectile
      "pF" 'helm-projectile-find-file-in-known-projects
      "pa" 'helm-projectile-ag
      "pK" 'projectile-kill-buffers
      "pc" 'projectile-compile-project

      "gs" 'magit-status
      "gb" 'magit-blame-mode

      "bb" 'helm-buffers-list
      "bk" 'kill-current-buffer
      "bn" 'next-buffer

      "mu" 'mu4e-update-mail-and-index)))

(evil-leader/set-key-for-mode 'org-mode "op" 'org-set-property)

(eval-after-load 'projectile
  '(evil-leader/set-key
     "W" 'projectile-save-and-test
     "w" 'save-buffer))

(evil-define-key 'normal org-src-mode-map
  (kbd (concat evil-leader/leader " w"))
  'org-edit-src-save)

(after 'purpose
  (define-key purpose-mode-map (kbd "C-c , W") 'purpose-set-window-purpose))

;;; init-keybinding.el ends here
