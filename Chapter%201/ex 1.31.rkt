#lang scheme

(define (typ-multiply a) (* a (+ a 2)))
(define (value a) a)
(define (square a) (* a a))
(define (next1 a) (+ a 2))
;product find range
(define (product term a next b)
  (if ( > a b)
      1
      (* ( term a)
         (product term (next a) next b))))

(define (inc n) (+ n 1))
(define (product-range a b)
  (product value a inc b)
 )


(product-range 3 10)

;finding fact using product

(define (factorial b)
  (product value 1 inc b)
)

(factorial 5)

;finding pie/4 approx

(define ( pie a)
  ( / (product typ-multiply 2.0 next1 (+ 1 (* a 2)) ) (product square 3 inc (+ 1 (* a 2)) )  
))

(pie 4)





