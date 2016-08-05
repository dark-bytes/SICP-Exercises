#lang scheme

;recursive process

(define (f n)
  ( if ( < n 3)
       n
       (+ ( f (- n 1) ) (* 2 ( f ( - n 2 ))) ( * 3 (f ( - n 3))))
 ))
(f 1)


;iterative process

( define (f-iter n)
   (if ( < n 3)n
     (f2 0 1 2 n)
    )
)
(define (f2 a b c count)
    ( if( = ( - count 2 ) 0 )
         c (
             f2 b c ( + c ( * 2 b) (* 3 a)) ( - count 1)  
          )
   )
)

(f-iter 1)