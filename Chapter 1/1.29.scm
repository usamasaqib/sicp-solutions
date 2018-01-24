(define (sum term a next n h)
  (define (even? x) (= (remainder x 2) 0))
  (if (= n 0)
      0.0
      (if (even? n)
          (+ (* 2.0 (term (+ a (* n h)))) (sum term a next (next n) h))
          (+ (* 4.0 (term (+ a (* n h)))) (sum term a next (next n) h)))))

(define (integral f a b n)
  (define (hdiv) (/ (- b a) n))
  (define (next x) (- x 1))
  (* (/ (hdiv) 3.0) (+ (f (+ a (* n (hdiv)))) (sum f a next (next n) (hdiv)))))

(define (cube x)
  (* x x x))

(integral cube 0 1 1000)
