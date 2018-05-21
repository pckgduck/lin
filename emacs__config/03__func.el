(defvar hs-special-modes-alist
      (mapcar 'purecopy
      '((c-mode "{" "}" "/[*/]" nil nil)
       (c++-mode "{" "}" "/[*/]" nil nil)
       (bibtex-mode ("@\\S(*\\(\\s(\\)" 1))
       (java-mode "{" "}" "/[*/]" nil nil)
       (js-mode "{" "}" "/[*/]" nil)
       (emacs-lisp- "(" ")" nil))))

(require 'hideshow)
