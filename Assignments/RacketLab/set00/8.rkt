;Ex 8: The area included in a circle of radius r is given by the formula 3.1415 * r^2. 
;Using the interaction window of DrRacket as a calculator, compute the area included in circles of radius 1, 5, and 7.

; circ-area : number  -> number
; GIVEN: the radius r of a circle
; RETURNS: its area, using the formula pi*r^2
; Examples:
; (circ-area 0) -> 0
; (circ-area 1) -> 3.131492653589793

(define (circ-area r) (* r r pi))

(check-expect (circ-area 0) 0)
(check-= (circ-area 1) .01)
