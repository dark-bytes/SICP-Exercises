#lang scheme

(define (f x y)
  ((lambda (a b)
     (+ (* x (square a))
        (* y b)
        (* a b)))
   ( + 1 (* x y))(- 1 y)) )

(define (square a)(* a a))
(f 1 2)