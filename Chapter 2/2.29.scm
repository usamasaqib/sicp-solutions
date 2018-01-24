(define (make-mobile left right)
(list left right))

(define (make-branch length structure)
(list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (car (cdr branch)))

(define (branch-weight b)
  (if (not (pair? (branch-structure b)))
      (* (branch-length b) (branch-structure b))
      (* (branch-length b) (+ (branch-weight (left-branch (branch-structure b))) (branch-weight (right-branch (branch-structure b)))))))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile)) (branch-weight (right-branch mobile))))

(define (balanced? mobile)
  (= (branch-weight (left-branch mobile)) (branch-weight (right-branch mobile))))

;PART D
;All of the selectors will need to be changed because of the difference between list structures and structures that use cons.
