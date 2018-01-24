(define (cont-frac n d k)
  (cont-frac-recur n d 1 k))

(define (cont-frac-recur n d k final)
  (if (= k final)
      (/ (n k) (d k))
      (/ (n k) (+ (d k) (cont-frac-recur n d (+ k 1) final)))))

(define (cont-frac-iter n d k)
  (define (iter x result)
    (if (= x 1)
        (/ (n k) result)
        (iter (- x 1) (+ (d (- x 1)) (/ (n x) result)))))
  (iter k (d k)))

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           11)
