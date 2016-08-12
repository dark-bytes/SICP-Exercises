#lang scheme

(define (square x) (* x x))

(define (make-point n d)
  (cons n d)
  )

(define (make-segment p1 p2)
  (cons p1 p2)
 )

(define (start-segment l1)
  (car l1)
  )

(define (end-segment l2)
  (cdr l2)
  )

(define (x-point x)
  (car x)
  )

(define (y-point y)
  (cdr y)
  )

(define (mid-point p1 p2)
  (make-point (/ (+ (x-point p1) (x-point p2) ) 2.0) (/ (+ (y-point p1) (y-point p2)) 2.0) )
)

(define (width rect)
  
  (sqrt (+ (square (- (x-point p1) (x-point p2))) (square (- (y-point p1) (y-point p2)))))
)


(define (height rect)
  (sqrt (+ (square (- (x-point p1) (x-point p3))) (square (- (y-point p1) (y-point p3)))))
)


(define (area-rect rect)
  (*(width rect) (height rect)))

(define (perimeter-rect rect)
  (* (+ (width rect)(height rect)) 2)
  )

(define (make-rectangle uline1 bline1)
  (cons uline1 bline1)
) 


(define p1 (make-point 1 2))
(define p2 (make-point 4 2))
(define p3 (make-point 1 6))
(define p4 (make-point 4 6))
(define uline1 (make-segment p1 p2))
(define bline1 (make-segment p3 p4))
(define rect (make-rectangle uline1 bline1))
(area-rect rect)
(perimeter-rect rect)
(mid-point p1 p2)