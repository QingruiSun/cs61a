(define (over-or-under num1 num2) (cond
                                       ((< num1 num2) -1)
                                       ((= num1 num2) 0)
                                       (else 1)))

(define (make-adder num) (lambda (inc) (+ inc num)))

(define (composed f g) (lambda (x) (f (g x))))

(define (square n) (* n n))

(define (pow base exp) (cond
                             ((= 0 exp) 1)
                             ((= 1 exp) base)
                             ((= 2 exp) (square base))
                             ((= 0 (remainder exp 2)) (pow base (quotient exp 2)))
                             (else (* base (square (pow base (quotient (- exp 1) 2)))))))
