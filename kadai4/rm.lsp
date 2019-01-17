(defun rm (tg x)
  "リストの中からある特定のオブジェクトを除く関数"
  (cond ((equal x nil) nil)
        ((equal tg (car x)) (rm tg (cdr x)))
        (t (cons (car x) (rm tg (cdr x)))))
)
