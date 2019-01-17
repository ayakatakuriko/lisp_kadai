(defun rev (x)
	(cond ((equal x nil) nil)
		((listp x) (append (rev (cdr x)) (list (car x))))
		(t x))
)

(defun rm (tg x)
	(remove-if #'(lambda (n) (equal n tg)) x)
)

(defun mem (tg x)
	(if (equal nil (find-if #'(lambda (n) (equal n tg)) x)) nil t)
)

(defun beforep (x y l)
	(cond ((equal l nil) nil)
		((equal (car l) x) (mem y l))
		(t (beforep x y (cdr l))))
)

(defun rmdup (x) 
	(cond ((equal x nil) nil)
		(t (append (list (car x)) (rmdup (rm (car x) x))))
))

(defun wa (x y)
	(rmdup (append x y))
)

(defun seki (x y)
	(cond ((equal x nil) nil)
		((mem (car x) y) (append (list (car x)) (seki (rmdup (cdr x)) y)))
		(t (seki (rmdup (cdr x)) y))
))

(defun sa (x y)
	(cond ((equal nil x) y) 
		((equal nil (mem (car x) y)) (append (list (car x)) (sa (cdr (rmdup x)) y)))
		(t (sa (cdr x) (rmdup (rm (car x) y)))))
)

(defun lookup (key x)
	(cond ((equal x nil) nil)
		((equal (car (car x)) key) (car x))
		(t (lookup key (cdr x)))
))

(defun sum-tree (x)
	(cond ((equal x nil) 0)
		((listp x) (+ (sum-tree (car x)) (sum-tree (cdr x))))
		((numberp x) x)
		(t 0)
))

(defun flatten (x) 
	(cond ((equal x nil) nil)
		((listp x) (append (flatten (car x)) (flatten (cdr x))))
		((symbolp x) (list x))
		(t nil)
))

(defun sleepy (x)
	(cond ((equal x nil) nil)
	((listp x) (cons (sleepy (car x)) (sleepy (cdr x))))
	((symbolp x) 'z)
))