;;; init-color.el --- Color and font configurations

(provide 'init-color)
(require 'init-fn)

(defconst bg-color "black")
(defconst default-font "Terminus 08")
(set-default-font "Terminus 08")

(setq font-face-main "DejaVu Sans Mono")
(setq font-size-small "10")
(setq font-size-bigger "15")
(setq font-setting-bigger (format "%s-%s" font-face-main font-size-bigger))
(setq font-setting-small (format "%s-%s" font-face-main font-size-small))

(load-theme 'gotham t)

(set-background-color bg-color)
(set-face-attribute 'fringe nil :background bg-color)

(after 'linum
    (set-face-attribute 'linum nil :background bg-color))

(if-package-installed "evil-search-highlight-persist"
                      (set-face-attribute 'evil-search-highlight-persist-highlight-face nil :background "DodgerBlue4"))
(set-face-attribute 'mode-line nil :font default-font)

;;; init-color.el ends here
