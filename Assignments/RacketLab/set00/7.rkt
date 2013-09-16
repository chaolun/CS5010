;Ex 7: Define a function called circumference that computes the circumference of a circle. 
;The contract, purpose statement, and usage of circumference are:

    ; circumference : Number -> Number
    ; GIVEN: the radius r of a circle 
    ; RETURNS: its circumference, using the formula 2 * pi * r.
    ; Examples:
    ; (circumference 1)  =>  6.283185307179586 
    ; (circumference 0)  =>  0

(define (circumference r) (* 2 r pi))

(check-= (circumference 1) 6.283185307179586 .01)
(check-expect (circumference 0)  0)
