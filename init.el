(require 'package)
(add-to-list 'package-archives 
                 '("marmalade" .
                         "http://marmalade-repo.org/packages/"))
(package-initialize)

;; (require 'evil)
(evil-mode 1)

(require 'color-theme)
(setq color-theme-is-global t)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(add-to-list 'load-path "~/.emacs.d/vendor/dirtree")
(autoload 'dirtree "dirtree" "Add directory to tree view" t)

(byte-recompile-directory "~/.emacs.d/vendor" 0)
