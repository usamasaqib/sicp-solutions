(define (square x)
  (* x x))

(define (compose f g)
  (lambda (x) (f (g x))))

(define (rep-alg comp f g n)
  (if (= n 1)
      (lambda (x) (f x))
      (rep-alg comp (comp f g) g (- n 1))))

(define (rep-alg-log comp f g n final)
  (define (even? x)
    (= (remainder x 2) 0))
  (cond ((= n final) (lambda (x) (f x)))
        ((= (- final n) 1) (rep-alg-log comp (comp f g) g (+ n 1) final))
        ((or (= n 1) (even? n)) (rep-alg-log comp (comp f f) g (* n 2) final))))

(define (repeated f n)
  (rep-alg compose f f n))

(define (repeated-log f n)
  (rep-alg-log compose f f 1 n))

(define dx 0.0001)

(define (smooth f)
  (lambda (x) (/ (+ (f x) (f (+ x dx)) (f (- x dx))) 3)))

(define (n-fold-smooth f n)
  (lambda (x) ((repeated (smooth f) n) x)))

((n-fold-smooth square 2) 5)
