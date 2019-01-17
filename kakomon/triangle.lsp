(defun triangle (x)
  (if (< x 1) nil (progn (drawline x) (format t "~%") (triangle (- x 1))))
  )
