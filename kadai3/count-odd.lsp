#|
@auther AYAKA OHWADA
2018/10/26

count-odd
Count odd numbers in list x.
|#
(defun count-odd (x)
  (cond ((equal x nil) 0)
		((oddp (first x)) (+ 1 (count-odd (rest x))))
		((evenp (first x)) (count-odd(rest x)))))
