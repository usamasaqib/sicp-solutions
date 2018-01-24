(define (sub-interval x y)
  (let ((upper (- (upper-bound x) (upper-bound y)))
        (lower (- (lower-bound x) (lower-bound y))))
    (make-interval lower upper)))

