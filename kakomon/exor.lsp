(defun exor (x y)
  (mapcar #'(lambda (n) (rm ((list x y) n)))(wa x y)))
