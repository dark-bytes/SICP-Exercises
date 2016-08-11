#lang scheme

(define dx 0.001)
(define ( cube x) (* x x x)) 
(define (avg a b c) ( / ( + a b c) 3))

(define (compose f g)
  (lambda(x) ( f ( g x))))

(define (repeated f n) 
    (if ( < n 1)
        (lambda (x) x)
        (compose f(repeated f (- n 1)))
 ))

(define (smoothing f)
  ( lambda(x)( / (+ ( f (- x dx)) (f x) (f (+ x dx)) ) 3))
)

((repeated (smoothing cube) 3) 4)
