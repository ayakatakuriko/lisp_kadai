(defun match-triple (x y)
  "2つの3つ組(知識とパターン)を引数にとり，知識がパターンに合致したらTを返す関数"
  (every #'match-element x y))
