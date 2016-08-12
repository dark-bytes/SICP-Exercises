#lang scheme

(define (cons1 x y)
  (lambda (m) (m x y)))

(define (car1 z)
  (z (lambda (p q) p) )
  )

(define (cdr1 z)
  (z (lambda (p q) q) )
  )
(define r1 (cons1 1 2))
(car1 r1)
(cdr1 r1)