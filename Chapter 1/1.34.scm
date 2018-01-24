(define (f g)
    (g 2))

(f f)

;this will evaluate to (f 2)
;which will further evaluate to (2 2)
;the interpreter will raise an error since an operator is not provided
