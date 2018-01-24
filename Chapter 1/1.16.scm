(define (square x)
  (* x x))

(define (fast-expt b n a)
  (cond ((= n 0) a)
        (else (if (even? n)
                  (fast-expt (square b) (/ n 2) a)
                  (fast-expt b (- n 1) (* a b))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (expt b n)
  (fast-expt b n 1))
