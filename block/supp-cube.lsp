(defun supp-cube (x)
  "ブロック名を引数に取り，そのブロックが立方体(cube)に支えられているかどうかを判定する述語"
  (cond ((equal (supporters x) nil) nil)
	    (t (some #'fetch (mapcar #'(lambda (n) (cons n `(shape cube))) (supporters x)))))
  )
