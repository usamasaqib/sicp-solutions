(define tolerance 0.00001)

(define (average z v)
  (/ (+ z v) 2.0))

(define (t x)
  (average x (/ (log 1000) (log x))))

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess line)
    (let ((next (f guess)))
      (display next)
      (display "\t")
      (display line)
      (newline)
      (if (close-enough? guess next)
          next
          (try next (+ line 1)))))
  (try first-guess 1))

(fixed-point t 2.0)
