#|
@auther AYAKA OHWADA
2018/10/26

square-list
Square elements of list x and generate new list.
|#
(defun square-list (x)
  (if (equal x nil) nil
	(append (list (* (first x) (first x))) (square-list (rest x))))))
