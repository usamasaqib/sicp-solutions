
;for number equal to or smaller than the fraction used to decide the validity of the guess, the procedure failes. This is becuase if the number for checking is
;not small enough as compared to the radicand, the precision of the answer will not be desirable. Example (sqrt 0.001) yeilds 0.04124542607499115 whereas the correct answer is
;0.0316227766. if the number is too large, squaring it will result in overflow which will affect the 'good-enough?' test.

(define (good-enough? guess x)
  (< (abs (- guess x)) 0.001))

(define (average guess x)
  (/ (+ guess x) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (square-iter (improve guess x) x)))

(define (sqrt x)
  (square-iter 1.0 x))

(sqrt 0.001)
