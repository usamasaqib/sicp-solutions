(define (deep-reverse items)
  (cond ((null? items) '())
        ((not (pair? items))
         items)
        ((null? (cdr items))
         (deep-reverse (car items)))
        (else (cons
               (deep-reverse (cdr items)) (deep-reverse (car items))))))
