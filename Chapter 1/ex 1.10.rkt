#lang scheme

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) ( * 2 y))
        ((= y 1) 2)
        (else ( A ( - x 1)
                  (A x (- y 1))))))

(A 1 5)   ;1024
(A 2 4)    ;65536
(A 3 3)    ;65536
(A 2 3) ;16
;(define (f n) ( A 0 n)) ;computes double the value of n
;(define (g n) (A 1 n))  ;it will calculate 2^n bcz as soon as soon y becomes 1 it will return 2 and then for it's
                         ;subsequent parameter x is 0 and so it will calculate twice of it's current y due to which it calculates 2^n

;(define (h n) (A 2 n)) ;it will calculate 2^2^2....n times bcz at subsequent stages it will
                        ;y = 1 and x will be becoming A(1,some y)and it will calculate
                        ;2^y and when it returns again ...