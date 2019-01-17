(defun make-even (x) 
	"整数を受け取り、奇数なら１を加えて返す関数"
	(if (oddp x) (+ 1 x) x)
)

(defun longer (x y)
	"xのほうがリストとして長いならtを返す" 
	(if (> (length x) (length y)) t nil)
)

(defun ordered (x y)
	"2つの数字を昇順にならべる関数"
	(if (< y x) (list y x) (list x y))
)

(defun constrain (x min max)
	(cond ((< x min) min)
		((> x max) max)
		(t x)
))

(defun q5 (x)
	(cond ((and (< 0 x) (oddp x)) (* x x))
		((and (< x 0) (oddp x)) (* 2 x))
		(t (/ x 2)))
)

(defun same-sign (x y)
	(if (or (and (equal x 0) (equal y 0)) (< 0 (* x y))) t nil)
)
