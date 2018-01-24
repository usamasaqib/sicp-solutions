(define (upper-bound x)
  (cdr x))

(define (lower-bound x)
  (car x))

(define (make-interval a b)
  (cons a b))
