#lang scheme


( define (exp temp b n)
   (cond ((= n 0) temp)
         ((even? n) (exp temp (square b) (/ n 2)))
         (else (exp (* temp b) b (- n 1))))
   )
( define ( fast-exp b n)
   ( exp 1 b n )
  )

(define (square x) (* x x))

(define (cons x y)
  (lambda (m) (m (fast-exp 2 x) (fast-exp 3 y)))
)

(define (car1 z)
  (z (lambda (p q) (logarithm p 2)))
)

(define (cdr1 z)
 (z (lambda (p q) (logarithm q 3)))
  )


(define (logarithm p base)
  (/ (log p) (log base))
 )

(define c (cons 2 3))
;(display c)
(define d (car1 c))
(display (cdr1 c))
(display d)