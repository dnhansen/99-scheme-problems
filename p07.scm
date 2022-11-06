(define (my-flatten l)
  (if (null? l)
      l
      (let ((head (car l)) (tail-flat (my-flatten (cdr l))))
           (if (list? head)
               (append (my-flatten head) tail-flat)
               (cons head tail-flat)))))

(display (my-flatten '((1 2) 3 (4 (5 6))))) (newline)