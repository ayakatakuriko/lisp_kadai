"要素が数のリストに対し，それぞれの数が5よりも大きいかどうかを判定し，その真偽をリストで返す関数"
(setf greater-than-five-p #'(lambda (x) (remove-if-not #'(lambda (n) (< 5 n)) x))))
