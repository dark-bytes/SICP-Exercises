#lang scheme

(define (multi a b)
  (
   if (= b 0)
      0
      (if (even? b) (* 2 (multi a (/ b 2)))
          (+ a (multi a (- b 1)))
   ))
  )

(multi 3 2)
