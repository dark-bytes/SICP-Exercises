#lang scheme


(define (make-interval a b)
  (cons a b)
  )

(define (upper-bound i)
  (max (car i) (cdr i))
 )

(define (lower-bound i)
  (min (car i) (cdr i))
 )

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 ( + (upper-bound x) (upper-bound y))))


(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (if(or (= (upper-bound y) 0) (= (lower-bound y) 0))
     (display "Division Error ??? span zero")(
                                              make-interval (/ 1.0 (upper-bound y))
                                                            (/ 1.0 (lower-bound y))
                                              )
))

(define i1 (make-interval 2 8))
(define i2 (make-interval 0 7))

(div-interval i1 i2)

                               