;new-if gets to infinite
;exercise 1.6

#lang scheme
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2) )

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  ( * x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt (+ 100 37) )

;it's all bcz of applicative order i.e arguments are evaluated first rest after it is being evaluated