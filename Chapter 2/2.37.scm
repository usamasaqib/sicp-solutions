(define (matrix-*-vector m v)
  (map (lambda (x) (accumulate-n * 1 (list x v))) m))

(define (transpose mat)
  (accumulate-n cons '() mat))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (x) (map (lambda (y) (dot-product x y)) cols)) m)))
