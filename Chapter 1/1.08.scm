#lang sicp

(define (square x)
  (* x x))

(define (abs x)
  (if (> x 0)
      x
      (- x)))

(define (good-enough? guess x)
  (< (abs (- guess x)) 0.001))

(define (average guess x)
  (/ (+ guess x) 2))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
     3))

(define (cube-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (cube-iter (improve guess x) x)))

(define (cubet x)
  (cube-iter 1.0 x))

(cubet 0.00027)