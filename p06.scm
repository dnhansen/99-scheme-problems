(define (aux l acc)
  (if (null? l)
      acc
      (aux (cdr l) (cons (car l) acc))))

(define (my-reverse l)
  (aux l '()))

(define (my-palindrome? l)
  (equal? l (my-reverse l)))

(display (my-palindrome? '(a b c b a))) (newline)