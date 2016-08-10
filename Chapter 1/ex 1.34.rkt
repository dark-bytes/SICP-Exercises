#lang scheme

(define (square a) (* a a))

(define (f g)
  (g 2)
  )
(f (lambda (z) (* z (+ z 1))))
(f f)

;error will be there bcz if we think of evaluating 2 with itself
;like calling (f 2) then it eventually will be (2 2) so what 2 do with itself