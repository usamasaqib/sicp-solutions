(define (upper-bound x)
  (cdr x))

(define (lower-bound x)
  (car x))

(define (make-interval a b)
  (cons a b))

(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

(define (width-from-percent p c)
  (* (/ p 100) c))

(define (make-center-percent c p)
  (make-interval (- c (width-from-percent p c)) (+ c (width-from-percent p c))))

(define (percent z)
  (* (/ (width z) (center z)) 100))
