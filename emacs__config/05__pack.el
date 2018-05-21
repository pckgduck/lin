( defun xah-get-fullpath ( @file-relative-path )
    ( concat ( file-name-directory ( or load-file-name buffer-file-name )) @file-relative-path )
)

;; ( load (xah-get-fullpath "pack__linum.el" ))
;; ( load (xah-get-fullpath "pack__auto-complete.el" ))
;; ( load (xah-get-fullpath "pack__sr-speedbar-toggle.el" ))
;; ( load (xah-get-fullpath "pack__yasnippet.el" ))
;; ( load (xah-get-fullpath "pack__linum.el" ))
