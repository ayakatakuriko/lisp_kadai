#|
@auther AYAKA OHWADA
2018/10/26

my-nth
Return xth element of list
x - index of element
y - list
|#
(defun my-nth (x y)
  (cond ((or (< x 0) (equal y nil)) nil)
		((= x 0) (first y))
		(t (my-nth (- x 1) (rest y)))))
