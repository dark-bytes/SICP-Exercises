#lang scheme

(define ( multi temp a b)
  (if (= b 0) temp
               (if (even? b) (multi temp (* 2 a) (/ b 2))
                   (multi (+ temp a) (* 2 a) (/ (- b 1) 2))
               )
      )
)



(multi 0 3 2)