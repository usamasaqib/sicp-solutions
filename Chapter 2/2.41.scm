(define nil '())

(define (accumulate op initial list)
  (if (null? list)
      initial
      (op (car list) (accumulate op initial (cdr list)))))

(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))))

(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))

(define (ordered-triples n s)
  (filter (lambda (x) (if (= (+ (car x) (cadr x) (cadr (cdr x))) s)
                          #t
                          #f)) (accumulate append nil
                                           (flatmap (lambda (i) (map (lambda (j) (map
                                                                                  (lambda (k) (list i j k)) (enumerate-interval 1 (- j 1))))
                                                                     (enumerate-interval 1 (- i 1)))) (enumerate-interval 3 n)))))
