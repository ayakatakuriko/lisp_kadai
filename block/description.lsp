(defun description (blkname)
  "ブロック名を引数に取り，そのブロックの性質のすべてをリストにして返す関数"
  (append-rest (fetch (list blkname `? `?)))
  )

(defun append-rest (x)
  "リスト内のリストの最初以外の要素のみのリストを作る関数
  ex) (append-rest `((a b e) (c d f)) -> (b e d f)"
  (cond ((equal x nil) nil)
		((listp (car x)) (append (cdr (car x)) (append-rest (cdr x))))
		(t nil))
  )
