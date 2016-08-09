#lang scheme

(define (prime? a)
  (
    cond ( (= a (smallest-divisor a 2) ) true)
         (else false)
  )
)

(define (smallest-divisor n start)
  ( cond ((> (* start start) n) n)
         ((divide? start n) start)
         (else (smallest-divisor n (+ start 1))))
)

(define (divide? a b)
  (= (remainder b a) 0 )
)


(define (value a) a)
(define (sum a b) ( + a b))
(define (product a b) (* a b))

(define (filtered-accumulate combiner null-value term a next b filter)
  (if ( > a b)null-value
   (if ( filter a )
      (combiner ( term a)
      (filtered-accumulate combiner null-value value (next a) next b filter))
      ( combiner null-value (filtered-accumulate combiner null-value value (next a) next b filter)) 
)))

(define (inc n) (+ n 1))

(define (product-range a b)
  (filtered-accumulate product 1 value a inc b prime?)
 )

(define (sum-range a b)
  (filtered-accumulate sum 0 value a inc b prime?)
 )
(sum-range 2 4)
(product-range 2 4)

