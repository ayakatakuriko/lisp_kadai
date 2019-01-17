(defun exor (x y)
  (let (temp (append x y))
  (mapcar #'(lambda (n) (rm temp n))(wa x y))))
