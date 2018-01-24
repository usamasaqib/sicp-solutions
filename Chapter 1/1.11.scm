;recursive process
(define (func-recur n)
  (if (< n 3)
      n
      (+ (func-recur (- n 1)) (* 2 (func-recur (- n 2))) (* 3 (func-recur (- n 3))))
      ))

;iterative process
(define (func-iter n)
  (func 2 1 0 0 (- n 2)))
;helper
(define (func a b c sum n)
  (cond ((= n 0) sum)
        ((< a 3) (func (+ a 1) (+ b 1) (+ c 1) (+ a (* 2 b) (* 3 c)) (- n 1)))
        ((< b 3) (func sum (+ b 1) (+ c 1) (+ sum (* 2 b) (* 3 c)) (- n 1)))
        ((< c 3) (func sum a (+ c 1) (+ sum (* 2 a) (* 3 c)) (- n 1)))
        (else (func sum a b (+ sum (* 2 a ) (* 3 b)) (- n 1)))))
