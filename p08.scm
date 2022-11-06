(define (my-compress l)
  (cond ((null? l) l)                                     ; Empty list
        ((null? (cdr l)) l)                               ; One element list
        ((equal? (car l) (cadr l)) (my-compress (cdr l))) ; Head equals next element
        (else (cons (car l) (my-compress (cdr l))))))     ; Head doesn't equal next element

(display (my-compress '(a a a b b c d d d))) (newline)