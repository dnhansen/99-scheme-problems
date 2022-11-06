(define (aux l acc)
  (if (null? l)
      acc
      (aux (cdr l) (cons (car l) acc))))

(define (my-reverse l)
  (aux l '()))

(display (my-reverse '(a b c d))) (newline)