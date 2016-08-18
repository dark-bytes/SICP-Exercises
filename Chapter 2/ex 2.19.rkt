#lang scheme

( define (except-first-denomination list1) (cdr list1) )
( define (first-denomination list1) (car list1) )
( define (no-more list1) (null? list1) )

(define (cc amount denominations)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more denominations)) 0)
        (else ( + ( cc amount
                       (except-first-denomination denominations))
                  ( cc ( - amount ( first-denomination denominations )) denominations)))))


(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))

(cc 100 us-coins)