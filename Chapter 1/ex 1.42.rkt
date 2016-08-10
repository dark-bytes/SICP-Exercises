#lang scheme

(define (square x) (* x x))
(define (inc x) (+ x 1))

(define (compose square inc)
  (lambda (x) ( square (inc x) )  )
)

((compose square inc) 6)