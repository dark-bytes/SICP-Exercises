#lang scheme


( define (square x )(+ x x)) 

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) null sequence))

(map square (list 1 2 3 4))

(define (append seq1 seq2) (accumulate cons seq1 seq2))

(append (list 1 2 3 4 5) (list 1 2 3 4))



(define (length sequence)
  (accumulate (lambda (first prev) 
                 (+ 1 prev)) 0 sequence))

(length (list 1 2 3 4 5))