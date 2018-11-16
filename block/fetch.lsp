(load "blockdata.lsp")

(defun fetch (x)
  "1つのパターンを引数に取り，そのパターンに当てはまる知識をblockdataからすべて見つける関数"
  (remove-if-not #'(lambda (n) (match-triple n x)) 
				 blockdata))
