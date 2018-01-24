;a1 <- bq + aq + ap
;b1 <- bp + aq

;by applying this transformation twice we much achieve equations in the form
;a2 <- b1q + a1q +a1p
;b2 <- b1p + a1q

;Using substitution we get
;a2 <- bpq + a(q)^2 + b(q)^2 + a(q)^2 + apq + bqp + aqp + a(p)^2
;a2 <- 2bpq + 2a(q)^2 + b(q)^2 + a(q)^2 + 2apq + a(p)^2

;b2 <- b(p)^2 + aqp + b(q)^2 + a(q)^2 + apq
;b2 <- b(p)^2 + 2aqp + b(q)^2 + a(q)^2

;By transforming b2 in the for b <- bp + aq, we can get p` and q`
;b2 <- b( (p)^2 + (q)^2 ) + a( 2pq + (q)^2 )

;Therefore p` = (p)^2 + (q)^2 and q` = 2pq + (q)^2
;This result can be verified by simplifying a2.
;Adding these into the procedure given, we get

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (square p) (square q))
                   (+ (* 2 p q) (square q))
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))
