(define (my-last l)
  (if (null? (cdr l))
      (car l)
      (my-last (cdr l))))

(display (my-last '(1 2 3 4))) (newline)