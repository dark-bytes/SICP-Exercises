#lang scheme

(define (reverse list1)
  (if(null? (cdr list1))
     (car list1)
     ( cons  (reverse (cdr list1)) (car list1))
  )
)

(reverse (list 1 2 3 4 5))