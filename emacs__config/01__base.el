
(load-theme 'wombat)

(add-to-list 'default-frame-alist '(font . "Inconsolata-14"))
(set-default-font "Inconsolata-14")


;; Inhibit startup/splash screen
(setq inhibit-splash-screen   t)
(setq ingibit-startup-message t) ;; экран приветствия можно вызвать комбинацией C-h C-a


;; Show-paren-mode settings
(show-paren-mode t) ;; включить выделение выражений между {},[],()
(setq show-paren-style 'expression) ;; выделить цветом выражения между {},[],()


;; Delete selection
;; удалить выделенный текст при вводе
(delete-selection-mode t)


(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-default 'cursor-type 'hbar)

(column-number-mode)
(show-paren-mode)
;; (global-hl-line-mode)

(fset 'yes-or-no-p 'y-or-n-p)

;; (setq show-paren-style 'expression)  ;;highlight ELISP syntax

(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving

;; built-in
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; built-in
(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))
(global-set-key (kbd "<f12>") 'bs-show)

;; set a beautiful title bar
(setq frame-title-format
      '("%S: " (buffer-file-name
                "%f"
                (dired-directory dired-directory "%b"))))



;; Highlight search resaults
(setq search-highlight        t)
(setq query-replace-highlight t)




;; Delete trailing whitespaces, format buffer and untabify when save buffer
;; Удалить лишние пробелы в конце строк, заменить TAB'ы на пробелы и выровнять отступы при сохранении буфера в файл, автоматически:
(defun format-current-buffer()
    (indent-region (point-min) (point-max)))
(defun untabify-current-buffer()
    (if (not indent-tabs-mode)
        (untabify (point-min) (point-max)))
    nil)
(add-to-list 'write-file-functions 'format-current-buffer)
(add-to-list 'write-file-functions 'untabify-current-buffer)
(add-to-list 'write-file-functions 'delete-trailing-whitespace)


