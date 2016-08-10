#lang scheme

(define tolerance 0.00001)
(define (inc x) (+ x 1))

(define (cont-frac n d k)
  ( cond (( = k 0) 0)
    ( else (/ n (+ d (cont-frac n d (- k 1))) ) 
   ))
)



(cont-frac 1.0 1.0 11)


