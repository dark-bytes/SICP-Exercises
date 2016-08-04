;new-if gets to infinite
;exercise 1.7
;code is being modified like bcz of iterative and precision is quite low it is
;impossible to calculate the for high value and since precision is hard coded so we get don't 
;correct value for very small value 
;


#lang scheme

(define (sqrt-iter guess oldguess x)
  (if (good-enough? guess oldguess)
          guess
          (sqrt-iter (improve guess x) guess 
                     x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2) )

(define (good-enough? guess oldguess)
  (< (abs ( - oldguess guess) ) (* guess 0.001)))    ;modified it to change it's comparable value so comparing from old guess 

(define (square x)
  ( * x x))

(define (sqrt x)
  (sqrt-iter 1.0 2.0 x))

(sqrt 400000000000000000000 )
