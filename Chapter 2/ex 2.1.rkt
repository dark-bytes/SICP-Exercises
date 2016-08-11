#lang scheme

(define (make-rat n d)
  (cond((and (< d 0) (< n 0))(cons (* -1 n)( * -1 d)))
       ((and (< d 0)(> n 0))(cons (* -1 n) (* -1 d)))
       (else (cons n d))
  ))

(make-rat 1 2)