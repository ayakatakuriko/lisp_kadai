(defun pick (x)
  "のリストを受取り，1と5の間の数のみをリストにして返す関数"
  (remove-if-not #'(lambda (n) (and (< n 6) (> n 0))) x))
