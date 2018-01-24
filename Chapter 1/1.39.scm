(define (cont-frac-recur n d k final)
  (if (= k final)
      (/ (n k) (d k))
      (/ (n k) (+ (d k) (cont-frac-recur n d (+ k 1) final)))))

(define (cont-frac n d k)
  (cont-frac-recur n d 1 k))

(define (even? k)
    (= (remainder k 2) 0))

(define (square x)
    (* x x))

(define (tan-cf x k)
  (define (n k)
    (- (square x))
  (define (d k)
    (+ (* (- k 1) 2) 1))
  (cont-frac n d - k))

(tan-cf 0.75 110)
