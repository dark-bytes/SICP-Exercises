#lang scheme
(define a 3)
(define b 4)
(define c 5)
(define (sum a b c)(cond ((and (> a c) (> b c))) (+ a b)
                         ((and (> a b)(> c b)))  (+ a c)
                         ((and (> c a)(> b a)))  (+ b c)
                     )
                 )
  
                                            
                              
                         
                       
                   
                       
                      