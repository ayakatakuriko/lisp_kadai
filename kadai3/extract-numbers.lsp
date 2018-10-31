#|
@auther AYAKA OWADA
2018//10/26

extratc-numbers
Pick up numbers from list x and generate new list which has only numbers.
|#
(defun extract-numbers (x)
  (cond ((equal x nil) nil)
		((numberp (first x)) (append (list (first x)) (extract-numbers(rest x))))
		(t (extract-numbers (rest x))))))
