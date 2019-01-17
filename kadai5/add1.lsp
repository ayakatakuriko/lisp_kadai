"要素が数のリストに対し，それぞれに1を足したリストを返す関数ADD1"
(setf add1 #'(lambda (x) (mapcar #'(lambda (n) (+ 1 n)) x))))
