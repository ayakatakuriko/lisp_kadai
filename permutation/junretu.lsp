(defun junretu (x)
  "リストを与えると、その要素のすべての並び方を返す関数"
  (cond ((null x) nil)
		((null (cdr 
