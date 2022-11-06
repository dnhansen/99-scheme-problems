(define (my-select l k)
  (if (= k 0)
      (car l)
      (my-select (cdr l) (- k 1))))

(display (my-select '(a b c d) 2)) (newline)