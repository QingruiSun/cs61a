(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

(define (ascending? lst) (cond
                              ((= 0 (length lst)) #t)
                              ((= 1 (length lst)) #t)
                              ((> (car lst) (car (cdr lst))) #f)
                              (else (ascending? (cdr lst)))))

(define (interleave lst1 lst2) (cond
                                    ((null? lst1) lst2)
                                    ((null? lst2) lst1)
                                    (else (append (list (car lst1)) (list (car lst2)) (interleave (cdr lst1) (cdr lst2))))))

(define (my-filter func lst) (cond
                                  ((null? lst) lst)
                                  ((func (car lst)) (append (list (car lst)) (my-filter func (cdr lst))))
                                  (else (my-filter func (cdr lst)))))

(define (no-repeats lst) (if 
                            (null? lst) 
                            lst
                            (cons (car lst) 
                            (no-repeats (my-filter (lambda (x) (not (= (car lst) x))) (cdr lst))))))
