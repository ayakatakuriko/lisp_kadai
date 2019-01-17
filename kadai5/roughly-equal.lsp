"数のリストXと数Kを受取り，Xの数のうちでKと大体同じもの(最初のみ) を返す関数"
"ただし，大体同じとは±10の範 囲 (端点を含めず) にあるものとする．"
(setf roughly-equal #'(lambda (x k)
(find-if #'(lambda (n) (and (> n (- k 10)) (< n (+ k 10)))) x)))
