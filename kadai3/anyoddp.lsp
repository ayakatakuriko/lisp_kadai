#|
@auther AYAKA OHWADA
2018/10/26

anyoddp
If any odd numbers in list x, return true.
Otherwise, return nil.
|#
(defun anyoddp (x)
  (cond ((equal x nil) nil)
		((oddp (first x)) t)
		(t (anyoddp (rest x))))))
