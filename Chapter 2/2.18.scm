(define (reverse list1)
  (if (null? (cdr list1))
      list1
      (append (reverse (cdr list1)) (list (car list1)))))
