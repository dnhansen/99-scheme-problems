(define (my-penult l)
  (if (null? (cddr l))
      (car l)
      (my-penult (cdr l))))

(display (my-penult '(1 2 3 4))) (newline)