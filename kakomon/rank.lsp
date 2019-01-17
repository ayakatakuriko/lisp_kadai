(defun rank (x)
  (if (listp x) (car x) nil)
  )

(defun suit (x)
  (if (listp x) (second x) nil)
  )
  
(defun count-suit (x y)
  (length (remove-if-not #'(lambda (n) (equal (suit n) x)) y))
  )

(defun count (x y)
  (remove-if-not #'(lambda (n) (equal (suit n) x)) y)
  )

(defun black-cards (x)
  (append (count `club x) (count `spade x))
  )
