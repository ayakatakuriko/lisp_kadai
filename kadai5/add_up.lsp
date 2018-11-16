(defun add-up (x)
  (cond ((= (len x) 0) 1)
		(t (* (first x) (add-up (rest x)))))
