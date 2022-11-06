; Length procedure from P04

(define (aux-length l acc)
  (if (null? l)
      acc
      (aux-length (cdr l) (+ acc 1))))

(define (my-length l)
  (aux-length l 0))

; Pack procedure from P09

(define (foldr f init l)
  (if (null? l)
      init
      (f (car l) (foldr f init (cdr l)))))

(define (aux-pack a l)
  (cond ((null? l) (list (list a)))
        ((equal? a (caar l)) (cons (cons a (car l)) (cdr l)))
        (else (cons (list a) l))))

(define (my-pack l)
  (foldr aux-pack '() l))

; New code

(define (my-map f l)
  (if (null? l)
      l
      (cons (f (car l)) (my-map f (cdr l)))))

(define (aux l)
  (list (my-length l) (car l)))

(define (my-encode l)
  (if (null? l)
      l
      (my-map aux (my-pack l))))

(display (my-encode '(a a a a b c c a a d e e e e))) (newline)