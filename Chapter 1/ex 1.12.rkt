#lang scheme

;pascal triangles
;tell us the row and column of triangle
;starts from 0th row

(define (fact n)(
                  if (<= n 1)
                       1
                       ( * n (fact (- n 1)))))
                     



(define ( pasc  r c)(
          if (<= c (+ r 1) )
          (/ (fact r) (* (fact c) (fact (- r c))))
          0
      )
)


(pasc 3 3)