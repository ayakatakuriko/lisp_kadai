#|
@auther AYAKA OWADA
2018/10/26

COUNT-DOWN
count down number x to 1.
|#
(defun count-down (x)
  (if (< x 1) nil
	(append (list x) (count-down (- x 1)))))
