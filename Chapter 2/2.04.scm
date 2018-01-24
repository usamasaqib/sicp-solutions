(define (cdr z)
  (z (lambda (p q) q)))

(define (cons x y)
  (lambda (m) (m x y)))

(cdr (cons 4 7))

;((lambda (m) (m x y)) (lambda (p q) q))
;(lambda (m) (lambda (p q) q) x y)
;q
