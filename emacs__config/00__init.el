 ( require 'package)
 ( package-initialize )

 ( require 'ido)

( defun xah-get-fullpath ( @file-relative-path )
    ( concat ( file-name-directory ( or load-file-name buffer-file-name )) @file-relative-path )
)

( load (xah-get-fullpath "01__base.el" ))
( load (xah-get-fullpath "03__func.el" ))
( load (xah-get-fullpath "05__packages.el" ))
( load (xah-get-fullpath "08__keys.el" ))
