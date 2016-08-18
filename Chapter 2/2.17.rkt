#lang scheme

(define (last-pair list1)
  (if(null? (cdr list1))
     (car list1)
     ( last-pair (cdr list1) )
    )
)

(last-pair (list 1 2 3 4 5))

