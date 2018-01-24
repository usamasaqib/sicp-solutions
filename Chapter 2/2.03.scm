(define (sqrt x)
  (define (average a b)
    (/ (+ a b) 2))
  (define (close-enough? guess)
    (<  (abs (- (square guess) x)) tolerance))
  ((iterative-improve  close-enough? (lambda (y) (average y (/ x y)))) 1.0))

(define (square x)
  (* x x))

(define (iterative-improve check improve)
  (lambda (x) (if (check x)
                  (improve x)
                  ((iterative-improve check improve) (improve x)))))

(define tolerance 0.00001)

(define (make-segment start end)
  (cons start end))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (average a b)
  (/ (+ a b) 2))

(define (midpoint-segment seg)
  (cons (average (car (car seg)) (car (cdr seg))) (average (cdr (car seg)) (cdr (cdr seg)))))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-rect a b c d)
  (cons (cons (make-segment a b) (make-segment b c))
         (cons (make-segment c d) (make-segment a d))))

(define (horizontal-segment rect)
  (car (car rect)))

(define (vertical-segment rect)
  (cdr (cdr rect)))

(define (length-of-segment seg)
  (sqrt (+ (square (- (car (cdr seg)) (car (car seg)))) (square (- (cdr (cdr seg)) (cdr (car seg)))))))

(define (perimeter-of-rectangle rect)
  (+ (* (length-of-segment (horizontal-segment rect)) 2) (* (length-of-segment (vertical-segment rect)) 2)))

(define (area-of-rectangle rect)
  (* (length-of-segment (horizontal-segment rect)) (length-of-segment (vertical-segment rect))))

(define rect (make-rect (make-point 1 5) (make-point 6 5) (make-point 6 2) (make-point 1 2)))

(perimeter-of-rectangle rect)

(area-of-rectangle rect)
