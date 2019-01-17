(defun member (tg x)
  "リスト内にある特定のオブジェクトがあるかどうかを調べる関"
  (cond ((equal nil x) nil)
        ((equal tg (car x)) x)
        (t (member tg (cdr x))))
)

"2つの集合の積を求める関数"
(setf my-intersection #'(lambda (x y)
(remove-if-not #'(lambda (n) (not (equal (member n y) nil))) x)))
