(defun flatten (x)
  "任意の深さに入れ子になっているリストからすべてのシンボルを抜き出す関数"
  (cond ((equal x nil) nil)
		((listp (car x)) (append (flatten (car x)) (flatten (cdr x))))
		((symbolp (car x)) (cons (car x) (flatten (cdr x))))
		(t (flatten (cdrx))))
)
