(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things))answer))))
  (iter items nil))

;upon each iteration the procedure constructs a list in the following fashion ( x^2, <<list of previous squares). Since the iterative process begins from the first element and
;then goes down  the list, the answer ends up in reverse order.

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer (square (car things))))))
  (iter items nil))

;The manner in which lists work is the following. The first element of (define x (cons a b)), where a is a number and b is a list, (define b (cons c d)), is (car x) = a, and the second element point to the next cons object, i.e. (cdr x) = b = y, and so until the final 
;cons object (define z (cons e f)) where (car z) = e, which is the final element in the list, and (cdr z) = f = nil. 
;However, in the code above we end up with the following construction for the call, (square-list (list 1 2 3 4) = (cons (cons (cons (cons nil 1) 4) 9) 16). This does not
;abide by the rules of lists detailed above, meaning the second element does not point to the next construction where the first element is the successor and the second element points to the following construction.
;Therefore, when we run this code we do not end up with the corresponding list of squared elements.
