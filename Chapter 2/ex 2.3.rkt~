#lang scheme

(define (make-point n d)
  (cons n d)
  )

(define (x-point x)
  (car x)
  )

(define (y-point y)
  (cdr y)
  )

(define (mid-point p1 p2)
  (make-point (/ (+ (x-point p1) (x-point p2) ) 2.0) (/ (+ (y-point p1) (y-point p2)) 2.0) )
)

  

(define p1 (make-point 1 2))
(define p2 (make-point 2 3))
(mid-point p1 p2)