(defun match-element (x y)
  "2引数に対して，それが等しいか，2番目の引数が‘?’の時だけ値Tを返し，それ以外の場合はNILを返す関数"
  (if (or (equal x y) (and (equal y `?) (not (equal x `?))))
	  t nil))
