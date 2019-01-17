(defun add1 (x)
	(mapcar #'(lambda (n) (+ n 1)) x)
)

(defun greater-than-five-p (x)
	(mapcar #'(lambda (n) (if (< 5 n) t nil)) x)
)

(defun flip (x)
	(mapcar #'(lambda (n) (if (equal n `on) `off `on)) x)
)

(defun pick (x)
	(remove-if-not #'(lambda (n) (and (< 0 n) (< n 6))) x)
)

(defun count-the (x)
	(length (remove-if-not #'(lambda (n) (equal n `the)) x))
)

(defun my-intersection (x y)
	(remove-if-not #'(lambda (n) (not (equal nil (member n x)))) y)
)

(defun rouhly-equal (x k)
	(find-if #'(lambda (n) (and (< (- k 10) n) (< n (+ k 10)))) x)
)

(defun drawline (x)
	(cond ((< x 1) nil) 
		(t (progn (format t "*") (drawline (- x 1))))
))

(defun drawbox (x y)
	(cond ((< y 1) nil)
		(t (progn (drawline x) (format t "~%") (drawbox x (- y 1))))
))
