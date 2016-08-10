#lang scheme

(define (cubic a b c)
  ( lambda (x) (+ (cube x) (* a (square x)) (* b x) c) )
)

;cubic defined for (newtons-method(cubic a b c) 1)