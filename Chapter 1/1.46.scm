#lang sicp

(define (iterative-improve check improve)
  (lambda (x) (if (check x)
                  (improve x)
                  ((iterative-improve check improve) (improve x)))))

(define tolerance 0.00001)

(define (fixed-point improve first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (let ((good-enough? (lambda (x) (close-enough? x (improve x)))))
  ((iterative-improve good-enough? improve) first-guess)))

(define (square x)
  (* x x))

(define (sqrt x)
  (define (average a b)
    (/ (+ a b) 2))
  (define (close-enough? guess)
    (<  (abs (- (square guess) x)) tolerance))
  ((iterative-improve  close-enough? (lambda (y) (average y (/ x y)))) 1.0))

(fixed-point (lambda (y) (+ (sin y) (cos y))) 1.0)

(sqrt 16)


                        
