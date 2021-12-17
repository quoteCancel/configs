(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (and (package-installed-p 'use-package)
	     (package-installed-p 'slime-company))
  (package-refresh-contents)
  (package-install 'use-package)
  (package-install 'slime-company)

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
