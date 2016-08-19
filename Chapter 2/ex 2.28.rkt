#lang scheme

(define (fringe tree)
  (if (null? tree)
     null
     ( if (not (pair? (car tree)))  
          (cons (car tree) (fringe (cdr tree)))
          (append (fringe (car tree)) (fringe (cdr tree)))
        ) 
      
))
    ;(fringe (cdr tree)
;))))

(define x (list (list 1 2) (list 3 4)))
(fringe x)
;(cons (list 1 2) (list 3 4))