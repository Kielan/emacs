(require 'package)
  (push '("marmalade" . "http://marmalade-repo.org/packages/")
        package-archives )
  (push '("melpa" . "http://melpa.milkbox.net/packages/")
        package-archives)

(load-theme 'ToyChest t)
(set-face-attribute 'default nil :height 140)

(x-focus-frame nil)


(add-to-list 'load-path "~/Misc/emacs/go-mode.el/")
(require 'go-mode-autoloads)

(setenv "GOPATH" "/Users/kielan/Documents/golang_projects")

(setq exec-path (cons "/usr/local/go/bin" exec-path))
(add-to-list 'exec-path "/Users/kielan/Documents/golang_projects/bin")

(defun my-go-mode-hook ()
  ; Call Gofmt before saving                                                    
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Godef jump key binding                                                      
  (local-set-key (kbd "M-.") 'godef-jump))
(add-hook 'go-mode-hook 'my-go-mode-hook)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp//ac-dict")
(ac-config-default)
