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

(define (sub-interval i1 i2)
  (make-interval (- (upper-bound i1) (lower-bound i2)) (- (upper-bound i2) (lower-bound i1)))
  )

(define i1 (make-interval 2 5))
(define i2 (make-interval 3 8))
;(upper-bound i1)
;(lower-bound i1)
(define new_interval (sub-interval i1 i2))
(display new_interval)