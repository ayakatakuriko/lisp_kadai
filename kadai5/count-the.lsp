"英単語列のリストを受取り，その中にあるtheの個数を返す関数"
(setf count-the #'(lambda (x) (list-length (remove-if-not #'(lambda (n) (equal n `the)) x))))
