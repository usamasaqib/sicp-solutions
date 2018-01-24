; one = (lambda (f) (lambda (x) (f x)))
; two = (lambda (f) (lambda(x) (f (f x))))

(define two (lambda (f) (lambda(x) (f (f x)))))

(define (inc n)
  (lambda (n) (+ n 1)))

(define (add x y)
  ((x inc) y))

(add two two)
