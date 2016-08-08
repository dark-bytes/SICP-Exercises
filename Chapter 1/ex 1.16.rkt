#lang scheme



( define (exp temp b n)
   (cond ((= n 0) temp)
         ((even? n) (exp temp (square b) (/ n 2)))
         (else (exp (* temp b) b (- n 1))))
   )
( define ( fast-exp b n)
   ( exp 1 b n )
  )

(define (square x) (* x x))

(fast-exp 3 2)
       
