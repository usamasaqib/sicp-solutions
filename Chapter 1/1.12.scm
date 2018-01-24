(define (pascal r c)
  (if (or (= r 1) (= c r) (= c 1))
      1
      (+ (pascal (- r 1) c)
         (pascal (- r 1) (- c 1)))))
