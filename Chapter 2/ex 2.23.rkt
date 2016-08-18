#lang scheme

(define (for-each1 f l)
  ( map f l ) true
)

(define (for-each2 proc list) 
  (cond 
   ((null? list) #t) 
   (else (proc (car list)) 
    (for-each2 proc (cdr list))
))) 
(for-each1 (lambda (x) (newline) (display x))
          (list 2 3 4 4))

(for-each2 (lambda (x) (newline) (display x))
          (list 2 3 4 4))
