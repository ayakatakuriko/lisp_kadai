#|
@auther AYAKA OHWADA
2018/10/26

add-up
return the sum of list.
|#
(defun add-up (x)
  (cond ((equal x nil) 1)
		(t (* (first x) (add-up (rest x))))))
