****RECURSIVE SOLUTION****

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (pi n)
  (define (even? z)
    (= (remainder z 2) 0))
  (define (keep-even z)
    (if (even? z)
        z
        (+ z 1)))
  (define (keep-odd z)
    (if (not (even? z))
        z
        (+ z 1)))
  (define (next x) (+ x 1))
  (* 4.0 (/ (product keep-even 2 next n) (product keep-odd 2 next n))))

(define (factorial x)
  (define (next y) (+ y 1))
  (define (identity z) z)
  (product identity 1 next x))


****ITERATIVE SOLUTION****

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

(define (factorial x)
  (define (next y) (+ y 1))
  (define (identity z) z)
  (product-iter identity 1 next x))

(define (pi n)
  (define (even? z)
    (= (remainder z 2) 0))
  (define (keep-even z)
    (if (even? z)
        z
        (+ z 1)))
  (define (keep-odd z)
    (if (not (even? z))
        z
        (+ z 1)))
  (define (next x) (+ x 1))
  (* 4.0 (/ (product-iter keep-even 2 next n) (product-iter keep-odd 2 next n))))
