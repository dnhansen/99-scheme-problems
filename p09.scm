(define (foldr f init l)
  (if (null? l)
      init
      (f (car l) (foldr f init (cdr l)))))

(define (aux a l)
  (cond ((null? l) (list (list a)))
        ((equal? a (caar l)) (cons (cons a (car l)) (cdr l)))
        (else (cons (list a) l))))

(define (my-pack l)
  (foldr aux '() l))

(display (my-pack '(a a b b c d d))) (newline)