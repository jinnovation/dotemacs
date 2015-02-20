;;; init-projectile.el -- Projectile-specific configurations

(provide 'init-projectile)

(setq projectile-enable-caching t)
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)
(setq projectile-switch-project-action 'helm-projectile)

;;; init-projectile.el ends here