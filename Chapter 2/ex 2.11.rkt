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
  (let( (x-up (upper-bound x))
        (x-lo (lower-bound x))
        (y-up (upper-bound y))
        (y-lo (lower-bound y)) )
   (cond ( (and (>= x-up 0) (>= x-lo 0))
           (cond ((and (>= y-up 0) (>= y-lo 0))
                  (make-interval (* x-lo y-lo) (* x-up y-up)))
                 ((and (< y-up  0) (< y-lo 0))
                   (make-interval (* x-up y-lo) (* x-lo y-up))
                  ) 
                 (else
                   (make-interval (* x-up y-lo) (* x-up y-up))
                  )
             ))
         ( (and (< x-up  0) (< x-lo 0))
           (cond ((and (>= y-up 0) (>= y-lo 0))
                  (make-interval (* x-lo y-up) (* x-up y-lo)))
                 ((and (< y-up  0) (< y-lo 0))
                   (make-interval (* x-up y-up) (* x-lo y-lo))
                  ) 
                 (else
                   (make-interval (* x-lo y-up) (* x-lo y-lo))
                  )
             )
          )
         (else
          (cond ((and (>= y-up 0) (>= y-lo 0))
                  (make-interval (* x-lo y-up) (* x-up y-up)))
                 ((and (< y-up  0) (< y-lo 0))
                   (make-interval (* x-up y-lo) (* x-lo y-lo))
                  ) 
                 (else
                   (make-interval (min (* x-lo y-up) (* x-lo y-lo))
                                  (max (* x-lo y-lo) (* x-up y-up))
                                  )
                  )
             )
          )
    )
))

(define i1 (make-interval -2 8))
(define i2 (make-interval 4 -7))
(mul-interval i1 i2)
;(div-interval i1 i2)
;As we can see in above code just because of writing some conditional case ie case analysis we have reduced
;the computation of operands from 4 to one but comparison operator increases so it's a kind of trade off
;in between