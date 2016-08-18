#lang scheme

(define (first-elementof l) (car l))

(define (parity-list parity? ev-odlist)
    (
      if ( null? ev-odlist)
        null
      (if ( = (remainder (first-elementof ev-odlist) 2) parity?) 
         ( cons (first-elementof ev-odlist) ( parity-list parity? (cdr ev-odlist)) )
         ( parity-list parity? (cdr ev-odlist)) 
      )
    )
)


(define (same-parity . ev-odlist)
  ( if ( = (remainder (first-elementof ev-odlist) 2) 0)
       (parity-list 0 ev-odlist )
       (parity-list 1 ev-odlist ))
)

(same-parity 2 2 3 4 5)