#lang scheme

(define (add a b)
  (if (= a 0)
      b
      (inc ( add (dec a) b))))

(define ( inc a)
  ( + a 1 ))

(define (dec b)
  (- b 1))

(add 5 4)

;it's is an recursive process because it will inc at last and system depends over it
;to save the states

(define (add1 a b)
  (if (= a 0)
      b
      (add1 (dec a) (inc b))))

(add1 5 4)

;it's an iterative process bcz at any time we can pass parameter bcz dec and inc are
;done in place