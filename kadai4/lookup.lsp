(defun lookup (key x)
  "リストxにキーを与えて、そのエントリを取り出す関数"
  (cond ((equal x nil) nil)
		((equal (car (car x)) key) (car x))
		(t (lookup key (cdr x))))
)
