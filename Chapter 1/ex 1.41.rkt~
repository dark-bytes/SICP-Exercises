#lang scheme

(define (inc a) ( + a 1))

(define (double f var)
  (lambda (var) ( f ( f var )  ) )
 )

(((double (double double)) inc) 5)