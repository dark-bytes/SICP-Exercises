#lang scheme

(define (smallest-divisor n start)
  ( cond ((> (* start start) n) n)
         ((divide? start n) start)
         (else (smallest-divisor n (+ start 1))))
   )

(define (divide? a b)
  (= (remainder b a) 0 ))

(smallest-divisor 4 2)
(smallest-divisor 1999 2)
(smallest-divisor 19999 2)
