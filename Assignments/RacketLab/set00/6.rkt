;; Ex 6: One of the solutions of the quadratic equation is given by the formula:
;; quadratic-root number number number -> number
;; GIVEN: the coefficents, a,b,c, of a quadratic of the form ax^2 + bx + c
;; RETURNS: one of the two solutions of the quadratic
;; (quadratic-root 1 -2 1) -> 1 
;; (quadratic-root 2 -4 2) -> 1

(define (quadratic-root a b c) (/ (+ (* b -1) (sqrt (- (* b b) (* 4 a c)) )) (* 2 a)))
(check-expect (quadratic-root 1 -2 1) 1)
(check-expect (quadratic-root 2 -4 2) 1)
