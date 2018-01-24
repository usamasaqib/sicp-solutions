(define (tree-map tree proc)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map sub-tree proc)
             (proc sub-tree)))
       tree))

(define (square-tree tree)
  (tree-map tree square))
