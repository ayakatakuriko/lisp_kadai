(defun beforep (x y l)
  "リスト L において X が Y より先に現れていれ ば真値(nil でない値) を返す関数"
  (cond ((or (equal (mem x l) nil) (equal (mem y l) nil)) nil)
        ((not (equal nil (mem y (mem x l)))) t)
        (t nil))
)
