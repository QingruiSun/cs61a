(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

(define (sign val) 
    (cond
        ((< val 0) -1)
        ((> val 0) 1)
        (else 0)))

(define (square x) (* x x))

(define (pow base exp)
    (cond
        ((= 1 base) 1)
        ((= 1 exp) base)
        ((even? exp) (square (pow base (quotient exp 2))))
        (else (* base (pow base (- exp 1))))
        ))
