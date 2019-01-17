(defun mem (tg x)
  "リスト内にある特定のオブジェクトがあるかどうかを調べる関"
  (cond ((equal nil x) nil)
        ((equal tg (car x)) x)
        (t (mem tg (cdr x))))
)
