#lang scheme

(define (make-interval a b)
  (cons a b)
  )

(define (upper-bound i)
  (max (car i) (cdr i))
 )

(define (lower-bound i)
  (min (car i) (cdr i))
 )

(define i1 (make-interval 2 5))
(upper-bound i1)
(lower-bound i1)
