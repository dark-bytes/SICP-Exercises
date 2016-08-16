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

(define ( width i )
  (- (upper-bound i) (lower-bound i))
 )

(define (sub-interval i1 i2)
  (make-interval (- (lower-bound i1) (upper-bound i2)) (- (upper-bound i1) (lower-bound i2)))
  )


(define (check? widthi1 widthi2 diff_interval)
  (if(= ( abs(+ widthi1 widthi2) ) (width diff_interval))
     (display "width of interval of difference between interval are equal")(display "not equal")
   )
 )


(define i1 (make-interval 2 8))
(define widthi1 (width i1))
(define i2 (make-interval 2 4))
(define widthi2 (width i2))
(define diff_interval (sub-interval i1 i2))
(check? widthi1 widthi2 diff_interval)
(newline)
(display widthi1)
(display widthi2)
(width diff_interval)