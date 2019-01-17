(defun flip (x)
  "ON OFF ON ON)のようなリストを受取り，各要素を逆転させ(OFF ONOFF OFF)のようにする関数"
  (mapcar #'(lambda (n) (if (equal n `on) `off `on)) x))
