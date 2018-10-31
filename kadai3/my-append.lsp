#|
@auther AYAKA OHWADA
2018/10/26

my-append
Mimic append func.
|#

(defun my-append (x y)
  (cond ((equal x nil) y)
		(t (cons (first x) (my-append (rest x) y)))))
