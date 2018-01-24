(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))
 
;(+ 4 5)
;(inc (+ 3 5)
;(inc (+ 2 5)
;(inc (+ 1 5)
;(inc (+ 0 5)
;(inc 5)
;(inc 6)
;(inc 7)
;(inc 8)
;(inc 9)
;The above procedure is recursive as it consists of a deferred list of operations that need to be tracked by the interpreter. Furthermore, the state at a particular
;interval cannot be described in terms of the values of its local variable.

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

;(+ 4 5)
;(+ 3 6)
;(+ 2 7)
;(+ 1 8)
;(+ 0 9)
;The above procedure is iterative, since the state of the function can be described in terms of the values of its variable and the rules by which they are updated.
