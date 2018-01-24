(define (double x)
  (+ x x))

(define (half x)
  (/ x 2))

(define (mult a b)
  (if (= b 1)
      a
      (if (even? b)
          (mult (double a) (half b))
          (+ a (mult a (- b 1))))))

(define (even? x)
  (= (remainder x 2) 0))
