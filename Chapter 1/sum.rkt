#lang scheme

(define (sum term a next b)
  (if ( > a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum cube a inc b))

(define (cube x)(* x x x))

(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 ( * x ( + x 2 )))))
  

(sum-cubes 1 3)