;; install-packages.el - Emacs Package Installation

;; Author: Kyle W. Purdon (kpurdon)
;;
;; This file is not part of GNU Emacs.

;; Code:

(require 'package)

(defvar _packages
  '(better-defaults
    cyberpunk-theme
    elpy
    exec-path-from-shell
    flycheck
    go-autocomplete
    go-guru
    go-mode
    js2-mode
    json-mode
    magit
    markdown-mode
    osx-clipboard
    py-autopep8
    rainbow-delimiters
    smart-mode-line
    web-mode
    yaml-mode))

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(package-refresh-contents)
(package-initialize)

(dolist (p _packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'install-packages)

;; install-packages.el ends here