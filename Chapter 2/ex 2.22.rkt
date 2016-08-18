#lang scheme

(define (square x) (* x x))

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons  (square (car things))
                    answer))))
  (iter items null))

(square-list (list 1 2 3 4))

;above code doesn't work because it conses the last item from the 
;front of the list to the answer, then gets the next item from the 
;front.
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons  (square answer (car things))
                    ))))
  (iter items null))

;above code doesn't work because cons has a property i.e cons (element (list))
;but here cons (list element) which creates a new list like ((list) element)