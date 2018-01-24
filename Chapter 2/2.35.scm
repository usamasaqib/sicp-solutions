(define (count-leaves t)
  (accumulate + 0 (map (lambda (subtree) (if (not (pair? subtree))
                                             1
                                             (count-leaves subtree))) t)))
