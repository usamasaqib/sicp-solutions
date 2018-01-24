****PART A****
(define (double f)
  (lambda (x) (f (f x))))

(define (inc x)
  (+ x 1))


****PART B****

((double (double (double (double (inc))))) 5)

(lambda (x) (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc x)))))))))))))))) 5)
