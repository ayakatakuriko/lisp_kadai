(defun triangle (x)
  (if (< x 1) nil (progn (drawline x) (triangle (- x 1))))
  )
