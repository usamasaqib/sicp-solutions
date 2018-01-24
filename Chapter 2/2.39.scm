(define (reverse sequence)
  (fold-right (lambda (x y) (cons y x)) nil sequence))

(define (reverse-2 sequence)
  (fold-left (lambda (x y) (cons y x)) nil sequence))
