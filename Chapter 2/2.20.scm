(define nil '())

(define (same-parity-start x y)
  (if (null? y)
      nil
      (cond ((and (even? (car y)) (even? x))
             (append (list (car y)) (same-parity-start x (cdr y))))
            ((and (not (even? (car y))) (not (even? x)))
             (append (list (car y)) (same-parity-start x (cdr y))))
            (else (same-parity-start x (cdr y))))))

(define (same-parity x . y)
  (append (list x) (same-parity-start x y)))
