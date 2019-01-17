(defun mem (tg x)
  "リスト内にある特定のオブジェクトがあるかどうかを調べる関"
  (cond ((equal nil x) nil)
        ((equal tg (car x)) x)
        (t (mem tg (cdr x))))
)


(defun seki (x y)
  (cond ((or (equal x nil) (equal y nil)) nil)
        ((not (equal (mem (car x) y) nil)) (cons (car (mem (car x) y)) (seki (cdr x) y)))
        (t (seki (cdr x) y)))
)



(defun exor (x y)
  (remove-if #'(lambda (n) (not (equal (member n (seki x y)) nil))) (append x y))
  )
