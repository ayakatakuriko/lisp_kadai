(defun sum-tree (x)
  "任意の深さに入れ子になっているリスト中にあるすべての数の和を求める関数"
  (cond ((equal x nil) 0)
		((listp (car x)) (+ (sum-tree (car x)) (sum-tree (cdr x))))
		((numberp (car x)) (+ (car x) (sum-tree (cdr x))))
		(t (sum-tree (cdr x))))
)
