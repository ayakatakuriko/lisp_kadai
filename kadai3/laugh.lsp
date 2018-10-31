#|
@auther AYAKA OHWADA
2018/1/26

laugh

Lol
|#

(defun laugh (x)
  (if (< x 1) nil
	(append `(HA) (laugh (- x 1)))))
