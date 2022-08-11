;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "David"
      user-mail-address "linyongxi7@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
;; (setq doom-font (font-spec :size 18 :weight 'semi-light))
(setq doom-font (font-spec :family "JetBrains Mono" :size 16.0 :weight 'light :width 'normal)) ;

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/org/")

(with-eval-after-load 'org (setq org-agenda-files
                                  '("~/Dropbox/org/gtd")))

(setq org-journal-dir "~/Dropbox/org/journal/2022")
(setq org-journal-file-format "%Y-%m-%d")
(setq org-journal-date-prefix "#+TITLE: ")
(setq org-journal-date-format "%A, %B %d %Y")


    (setq org-capture-templates '(("t" "Todo [inbox]" entry
                                   (file+headline "~/Dropbox/org/gtd/inbox.org" "Tasks")
                                   "* TODO %i%?")
                                  ("T" "Tickler" entry
                                   (file+headline "~/Dropbox/org/gtd/tickler.org" "Tickler")
                                   "* %i%? \n %U")))
;;    (setq org-todo-keywords
;;          '((sequence "TODO(t!)" "PROCESSING(p!)" "BLOCKED(b!)" "|" "DONE(d!)")))

    (setq org-refile-targets '(("~/Dropbox/org/gtd/ToDo.org" :maxlevel . 1)
                               ("~/Dropbox/org/gtd/Someday.org" :level . 1)
                               ("~/Dropbox/org/gtd/Tickler.org" :maxlevel . 1)))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Save Org buffers after refiling!
(advice-add 'org-refile :after 'org-save-all-org-buffers)

  (setq org-tag-alist
    '((:startgroup)
       ; Put mutually exclusive tags here
       (:endgroup)
       ("@errand" . ?E)
       ("@home" . ?H)
       ("@work" . ?W)
       ("agenda" . ?a)
       ("planning" . ?p)
       ("batch" . ?b)
       ("note" . ?n)
       ("idea" . ?i)))

;; [[file:config.org::*Super agenda][Super agenda:1]]
(use-package! org-super-agenda
  :commands (org-super-agenda-mode))
(after! org-agenda
  (org-super-agenda-mode))

(let ((org-super-agenda-groups
       '((:auto-group t))))
  (org-agenda-list))

(setq org-agenda-skip-scheduled-if-done t
      org-agenda-skip-deadline-if-done t
      org-agenda-include-deadlines t
      org-agenda-block-separator nil
      org-agenda-tags-column 100 ;; from testing this seems to be a good value
      org-agenda-compact-blocks t)

(setq org-agenda-custom-commands
      '(("o" "Overview"
         ((agenda "" ((org-agenda-span 'day)
                      (org-super-agenda-groups
                       '((:name "Today"
                          :time-grid t
                          :date today
                          :todo "TODAY"
                          :scheduled today
                          :order 1)))))
          (alltodo "" ((org-agenda-overriding-header "")
                       (org-super-agenda-groups
                        '((:name "Next to do"
                           :todo "NEXT"
                           :order 1)
                          (:name "Important"
                           :tag "Important"
                           :priority "A"
                           :order 6)
                          (:name "Due Today"
                           :deadline today
                           :order 2)
                          (:name "Due Soon"
                           :deadline future
                           :order 8)
                          (:name "Overdue"
                           :deadline past
                           :face error
                           :order 7)
                          (:name "Assignments"
                           :tag "Assignment"
                           :order 10)
                          (:name "Issues"
                           :tag "Issue"
                           :order 12)
                          (:name "Emacs"
                           :tag "Emacs"
                           :order 13)
                          (:name "Projects"
                           :tag "Project"
                           :order 14)
                          (:name "Research"
                           :tag "Research"
                           :order 15)
                          (:name "To read"
                           :tag "Read"
                           :order 30)
                          (:name "Waiting"
                           :todo "WAITING"
                           :order 20)
                          (:name "Trivial"
                           :priority<= "E"
                           :tag ("Trivial" "Unimportant")
                           :todo ("SOMEDAY" )
                           :order 90)
                          (:discard (:tag ("Chore" "Routine" "Daily")))))))))))
;; Super agenda:1 ends here


(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

;; org-roam
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/Dropbox/org/roam/"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  )

(setq org-roam-v2-ack t)

;; replace isearch with swiper
(global-set-key (kbd "C-s") 'swiper)


;; map C-h to delete-backward
(global-set-key (kbd "C-h") 'evil-delete-backward-char-and-join)

;; Java config
(use-package lsp-java)
(add-hook 'java-mode-hook #'lsp)
(require 'meghanada)
(add-hook 'java-mode-hook
          (lambda ()
            ;; meghanada-mode on
            (meghanada-mode t)
            (flycheck-mode +1)
            (setq c-basic-offset 2)
            ;; use code format
            (add-hook 'before-save-hook 'meghanada-code-beautify-before-save)))
(cond
   ((eq system-type 'windows-nt)
    (setq meghanada-java-path (expand-file-name "bin/java.exe" (getenv "JAVA_HOME")))
    (setq meghanada-maven-path "mvn.cmd"))
   (t
    (setq meghanada-java-path "java")
    (setq meghanada-maven-path "mvn")))

;; config set up frame size
(set-frame-height
 (selected-frame)
 (/ (display-pixel-height) (frame-char-height)))
(set-frame-width
 (selected-frame)
 (/ (/ (display-pixel-width) 2) (frame-char-width)))

;; org publish
(defvar org-blog-preamble
  "<ul class=\"nav\">
      <li class=\"nav-item\"><a href=\"/index.html\">home</a></li>
      <li class=\"nav-item\"><a href=\"/computer-science/index.html\">computer science</a></li>
      <li class=\"nav-item\"><a href=\"/life.html\">life</a></li>
      <li class=\"nav-item\"><a href=\"/about.html\">about</a></li>
   </ul>"
)

(require 'ox-publish)
(setq org-publish-project-alist
      `(
        ("org-notes"
         :base-directory "~/blog"
         :base-extension "org"
         :publishing-directory "~/blog/html/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4             ; Just the default for this project.
         :auto-preamble t
         :html-preamble ,org-blog-preamble
         )
        ("org-static"
         :base-directory "~/blog"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/blog/html/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("org" :components ("org-notes" "org-static"))
      ))
;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
