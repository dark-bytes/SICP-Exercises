#lang scheme


(define (value a) a)
(define (sum a b) ( + a b))
(define (product a b) (* a b))

(define (accumulate combiner null-value term a next b)
  (if ( > a b)
      null-value
      (combiner ( term a)
         (accumulate combiner null-value value (next a) next b))))

(define (inc n) (+ n 1))

(define (product-range a b)
  (accumulate product 1 value a inc b)
 )

(product-range 2 4)
