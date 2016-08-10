#lang scheme

(define tolerance 0.00001)
(define sum 2)
(define (inc x) (+ x 1))
(define (next d)
  (+ d 2)
  )
(define (square x) (* x x))


(define (cont-frac x d k)
  ( cond (( = k 0) 0)
    ( else (/ (square x) (- d (cont-frac x (next d) (- k 1))) ) 
  )
 )
)

(define (tan-cf x k)
  (/ x (cont-frac x 1.0 k))
)

(tan-cf 1.0 5)