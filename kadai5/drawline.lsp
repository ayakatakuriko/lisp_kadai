(defun drawline (x)
  "引数で与えられた数だけの * を横一列に出力する再帰的な関数"
  (if (< x 1) nil (progn (format t "*") (drawline (- x 1))))
)
"progn: 複数の式を一度に評価させる関数"
