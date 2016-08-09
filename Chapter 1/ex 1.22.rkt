#lang scheme

(define (prime? a)
  (
    cond ( (= a (smallest-divisor a 2) ) true)
  )
)

(define (smallest-divisor n start)
  ( cond ((> (* start start) n) n)
         ((divide? start n) start)
         (else (smallest-divisor n (+ start 1))))
)

(define (divide? a b)
  (= (remainder b a) 0 )
)

(define (prime-range start end)
  (cond ( (<= start end)       
           (timed-prime-test start)
           (prime-range (+ start 1) end)
  ))  
)

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (current-inexact-milliseconds)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (current-inexact-milliseconds) start-time)) false))



(define (report-prime elapsed-time)
  (display " *** ")
(display elapsed-time))

(prime-range 2 3)
