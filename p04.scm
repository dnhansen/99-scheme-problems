; Naïve version
(define (my-length l)
  (if (null? l)
      0
      (+ 1 (my-length (cdr l)))))

; Using tail call
(define (aux l acc)
  (if (null? l)
      c
      (aux (cdr l) (+ acc 1))))

(define (my-length2 l)
  (aux l 0))

(display (my-length '(a b c d))) (newline)
(display (my-length2 '(a b c d))) (newline)