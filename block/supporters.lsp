(defun supporters (blkname)
  "ブロック名を引数に取り，そのブロックを支えるブロックすべてをリストにして返す関数"
  (append-first (fetch (list `? `supports blkname)))
  )

(defun append-first (x)
  "リスト内のリストの最初の要素のみのリストを作る
  ex) (append-first `((1 2) (3 4))) -> (1 3)"
  (cond ((equal x nil) nil)
		((listp (car x)) (cons (car (car x)) (append-first (cdr x))))
		(t nil))
  )
