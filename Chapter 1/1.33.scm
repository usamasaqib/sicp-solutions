****PART A****

(define (accumulate combiner null-value term a next b filter)
  (if (> a b)
      null-value
      (if (filter a)
          (combiner (term a)
                    (accumulate combiner null-value term (next a) next b filter))
          (accumulate combiner null-value term (next a) next b filter))))

****PART B****

(define (accumulate combiner null-value term a next b filter)
  (if (> a b)
      null-value
      (if (filter a)
          (combiner (term a)
                    (accumulate combiner null-value term (next a) next b filter))
          (accumulate combiner null-value term (next a) next b filter))))

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (inc x)
  (+ x 1))

(define (identity x) x)

(define (relative-primality a n)
  (= (gcd n a) 1))

(define (mult x y) (* x y))

(define (prime-lt-n n)
  (define (filter x)
    (relative-primality x n))
  (accumulate mult 1 identity inc n filter))
