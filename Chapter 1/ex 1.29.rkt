#lang scheme

(define (sum term a next b)
  (if (> a b)
0
(+ (term a)
         (sum term (next a) next b))))

(define (round-to-next-even x) 
   (+ x (remainder x 2)))

(define (inc n) (+ n 1))

(define (simpson f a b n) 
   (define fixed-n (round-to-next-even n)) 

   (define h (/ (- b a) fixed-n)) 

   (define (temp-term k) 
     (define y (f (+ a (* k h)))) 
     (if (or (= k 0) (= k fixed-n)) 
         (* 1 y) 
         (if (even? k) 
             (* 2 y) 
             (* 4 y)))) 

   (* (/ h 3) (sum temp-term 0 inc fixed-n)))

(define (clac x) (* x x x))

(simpson clac 0 1 100.0)  ;0.24
(simpson clac 0 1 1000.0) ;0.25