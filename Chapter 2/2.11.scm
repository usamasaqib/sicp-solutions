(define (mul-interval x y)
  (define (find-lower x y)
    (cond ((< (lower-bound x) 0)
           (* (lower-bound x) (upper-bound y)))
          ((> (lower-bound x) 0)
           (* (lower-bound x) (lower-bound y)))
          ((= (lower-bound x) 0)
           (if (< (lower-bound y) 0)
               (* (upper-bound x) (lower-bound y))
               0))))
  (define (find-upper x y)
    (cond ((and (<= (upper-bound x) 0) (< (upper-bound y) 0))
           (* (lower-bound x) (lower-bound y)))
          ((and (> (upper-bound x) 0) (> (upper-bound y) 0))
           (* (upper-bound x) (upper-bound y)))
          ((and (< (upper-bound x) 0) (> (upper-bound y) 0))
           (if (< (lower-bound x) 0)
               (* (lower-bound x) (lower-bound y))
               (* (lower-bound x) (upper-bound y))))
          ((= (upper-bound x) 0)
           (if (> (lower-bound y) 0)
               (* (lower-bound y) (lower-bound x))
               0))))
  (let ((upper (find-upper x y))
        (lower (find-lower x y)))
    (make-interval lower upper)))
