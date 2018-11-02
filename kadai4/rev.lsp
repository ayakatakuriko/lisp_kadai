(defun rev (x)
  "リストを受け取り、要素を逆順にして返す関数"
  (if (equal x nil) nil (append (rev (cdr x)) (list (first x))))
)
