(defun rmdup (x)
  "リスト中の重複している要素を1つにする関数"
  (if (equal nil x) nil (cons (car x) (rmdup (rm (car x) x))))
)
