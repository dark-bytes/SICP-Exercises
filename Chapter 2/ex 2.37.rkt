#lang scheme

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      null
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))

(define (dot-product v w)
  (accumulate + 0 (map * v w)))


(define s (list  (list 1 2 3) (list 4 5 6) (list 7 8 9)))
;(display s)
;(dot-product (list 1 2 3) (list 2 3 4))

(define (matrix-*-vector m v)
  (map (lambda(x) (dot-product v x)) m)
  )
(matrix-*-vector s (list 2 3 4))

(define (transpose mat)
  (accumulate-n cons null mat)
)

( transpose s)