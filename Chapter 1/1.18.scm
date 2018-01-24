(define (double x)
  (+ x x))

(define (half x)
  (/ x 2))

(define (mult a b product)
  (if (= b 0)
      product
      (if (even? b)
          (mult (double a) (half b) product)
          (mult a (- b 1) (+ a product)))))

(define (even? x)
  (= (remainder x 2) 0))
