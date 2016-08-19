#lang scheme

(define (deep-reverse list1)
  ( cond ((null? list1) null)
         ((pair? (car list1))
           (begin
           (append
                 (deep-reverse (cdr list1))
                 (list (deep-reverse (car list1))))
           ;(display list1)
           )
          )
         (else
          (append
           (deep-reverse (cdr list1))
           (list (car list1))))
         ))

(define x (list (list 1 2) (list 3 4)))
;(display x)
(cdr x)
;(reverse (list 1 2 3 4 5))
(deep-reverse x)