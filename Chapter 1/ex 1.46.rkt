#lang scheme
(define (square x) (* x x))
(define (good-enough? guess x)
  (< ( abs (- (square guess) x)) 0.001))

(define (iterative-improve good-enough? improve)
  (lambda (guess)
    (if (good-enough? guess) 
        guess
        ((iterative-improve good-enough? improve) (improve guess)))))


(define (sqrt-iterative x)
      ((iterative-improve (lambda (guess)
                        (< (abs (- (square guess) x)) 0.001))
                      (lambda (guess)
                        (/ (+ guess 
                              (/ x guess))
                           2.0))) x)) 

(sqrt-iterative 3)
