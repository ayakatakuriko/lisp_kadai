(defun sleepy (x)
	"任意の深さに入れ子になっているリスト中のすべてのシンボルをシンボルzにおきかえる関数"
  (cond ((equal x nil) nil)
		((listp (car x)) (cons (sleepy (car x)) (sleepy (cdr x))))
		((symbolp (car x)) (cons `z (sleepy (cdr x))))
		(t (sleepy (cdr x))))
)
