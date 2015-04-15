;;; init-linum.el --- linum-mode-specific configs

(provide 'init-linum)

(setq linum-format 'dynamic)
(global-linum-mode 1)

(defconst linum-mode-excludes
  '(doc-view-mode

     magit-mode

     elfeed-show-mode
     elfeed-search-mode
     gnus-group-mode
     mu4e-main-mode
     mu4e-headers-mode
     mu4e-view-mode

     circe-chat-mode
     circe-server-mode
     circe-query-mode
     circe-channel-mode
     eww-mode

     inferior-ess-mode)
  "List of major modes preventing linum to be enabled in the buffer.")

(defadvice linum-mode (around linum-mode-selective activate)
  "Avoids enabling of linum-mode in the buffer having major mode set to one
of listed in `linum-mode-excludes'."
  (unless (member major-mode linum-mode-excludes)
    ad-do-it))

;;; init-linum.el ends here
