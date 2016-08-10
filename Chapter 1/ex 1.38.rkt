#lang scheme

(define tolerance 0.00001)
(define sum 2)
(define (inc x) (+ x 1))
(define (next d k)
  (if ( not ( = 0 (remainder (+ k 1) 3 )))
      1
      (* 2 (/ (+ k 1) 3))))


(define (cont-frac n d k i)
  ( cond (( = k 0) 0)
    ( else (/ n (+ d (cont-frac n (next d i) (- k 1) (+ i 1))) ) 
   ))
)

(define (e k)
  (cont-frac 1.0 1.0 k 2.0)
)

(e 11)



