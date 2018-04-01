(defmacro mac (form &optional environment)
  `(cl-prettyexpand (macroexpand ,form ,environment)))

