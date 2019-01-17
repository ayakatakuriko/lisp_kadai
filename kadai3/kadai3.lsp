(defun add-up (x)
	(cond ((equal x nil) 0)
		((listp x) (+ (car x) (add-up (cdr x))))
		(t 0))
)

(defun laugh (x)
	(cond ((or (< x 0) (equal x 0)) nil)
		(t (cons `HA (laugh (- x 1))))
))

(defun count-down (x)
	(cond ((or (equal x 0) (< x 0)) nil)
		(t (cons x (count-down (- x 1)))))
)

(defun square-list (x)
	(mapcar #'(lambda (n) (* n n)) x)
)

(defun anyoddp (x)
	(if (numberp (find-if #'oddp x)) t nil)
)

(defun extract-numbers (x)
	(remove-if-not #'numberp x)
)

(defun count-odd (x)
	(length (remove-if-not #'oddp x))
)

