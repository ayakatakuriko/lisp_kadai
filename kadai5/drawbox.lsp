(defun drawbox (x y)
  "引数で与えられた大きさの * の箱を書く再帰的な関数"
  (if (< y 1) nil (progn (drawline x) (format t "~%") (drawbox x (- y 1))))
)

(defun drawline (x)
  "引数で与えられた数だけの * を横一列に出力する再帰的な関数"
  (if (< x 1) nil (progn (format t "*") (drawline (- x 1))))
)
