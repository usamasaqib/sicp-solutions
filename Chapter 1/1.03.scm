#lang sicp

(define (largest-sum-of-squares x y z)
  (- (+ (square x) (square y) (square z))
     (square (min x y z))))

