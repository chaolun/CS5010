; Ex 5: Define a function called sq that computes the square of a number. Write the contract, purpose statement, examples and definition of this function.
;; sq : number -> number
;; GIVEN: a number 
;; RETURNS: that number squared
;; (sq 2) -> 4
;; (sq 5) -> 25

(define (sq number) (* number number))

(check-expect (sq 2) 4)
(check-expect (sq 5) 25)