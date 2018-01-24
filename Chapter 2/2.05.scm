(define (square x)
  (* x x))

(define (fast-expt b n)
  (cond ((= n 0) 1)
  ((even? n) (square (fast-expt b (/ n 2))))
  (else (* b (fast-expt b (- n 1))))))

(define (cons x y)
  (* (fast-expt 2 x) (fast-expt 3 y)))

(define (car z)
  (define (first-pair z n)
    (if (> (remainder z 2) 0)
        n
        (first-pair (/ z 2) (+ n 1))))
  (first-pair z 0))

(define (cdr z)
  (define (second-pair z n)
    (if (> (remainder z 3) 0)
        n
        (second-pair (/ z 3) (+ n 1))))
  (second-pair z 0))

(define z (cons 3 2))

(car z)

(cdr z)
