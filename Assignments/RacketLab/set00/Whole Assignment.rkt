;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Whole Assignment|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Ex 1: Compute the number of seconds in a leap year (a leap year has 366 days)
(* 366 24 60 60)

;; Ex 2: write an expression that tests if the result of 100/3 is greater than the result of (100 + 3) / (3 + 3).

(< (/ 100 3) (/ (+ 100 3) (+ 3 3)))

;; Ex 3: Write the definition of a function that converts a temperature from degrees Fahrenheit to degrees Celcius. 
;; The formula for the conversion is C = (F-32) * (5/9) . 
;; The contract, purpose statement and examples for this function are:
;; contract: give number get number
;; purpose statement: give degrees in F and returns degrees in C
;; examples: (F2C 32) = 0
;;           (F2C 212) = 100
(define (F2C F) (* (- F 32) (/ 5 9)))

;Ex 4: Define a function called tip that takes two arguments, a number representing the amount of a bill in dollars, and a decimal number between 0.0 and 1.0, representing the percentage of tip one wants to give (e.g. 0.15 = 15%). tip should compute the amount of the tip in dollars. 
;The contract, purpose statement, and examples of tip are the following:
; tip : Number Number -> Number
; GIVEN: the amount of the bill in dollars and the
; percentage of tip
; RETURNS: the amount of the tip in dollars.
; Examples:
; (tip 10 0.15)  => 1.5
; (tip 20 0.17)  => 3.4

(define (tip bill percent) (* bill percent))

; Ex 5: Define a function called sq that computes the square of a number. Write the contract, purpose statement, examples and definition of this function.
;; sq : number -> number
;; GIVEN: a number 
;; RETURNS: that number squared
;; (sq 2) -> 4
;; (sq 5) -> 25

(define (sq number) (* number number))

;; Ex 6: One of the solutions of the quadratic equation is given by the formula:
;; quadratic-root number number number -> number
;; GIVEN: the coefficents, a,b,c, of a quadratic of the form ax^2 + bx + c
;; RETURNS: one of the two solutions of the quadratic
;; (quadratic-root 1 -2 1) -> 1 
;; (quadratic-root 2 -4 2) -> 1

(define (quadratic-root a b c) (/ (+ (* b -1) (sqrt (- (* b b) (* 4 a c)) )) (* 2 a)))
(check-expect (quadratic-root 1 -2 1) 1)

;Ex 7: Define a function called circumference that computes the circumference of a circle. 
;The contract, purpose statement, and usage of circumference are:

    ; circumference : Number -> Number
    ; GIVEN: the radius r of a circle 
    ; RETURNS: its circumference, using the formula 2 * pi * r.
    ; Examples:
    ; (circumference 1)  =>  6.283185307179586 
    ; (circumference 0)  =>  0

(define (circumference r) (* 2 r pi))

;(check-expect (circumference 1) 6.283185307179586)
(check-expect (circumference 0)  0)

;Ex 8: The area included in a circle of radius r is given by the formula 3.1415 * r^2. 
;Using the interaction window of DrRacket as a calculator, compute the area included in circles of radius 1, 5, and 7.

; circ-area : number  -> number
; GIVEN: the radius r of a circle
; RETURNS: its area, using the formula pi*r^2
; Examples:
; (circ-area 0) -> 0
; (circ-area 1) -> 3.131492653589793

(define (circ-area r) (* r r pi))

(circ-area 5)

; Ex 9
; even: number -> boolean
; GIVEN: a number
; RETURNS: a true if it is even false otherwise
; examples:
; (even 14) -> true
; (even 13) -> false

(define (even number) (cond
                        [(= (remainder number 2) 0) true]
                        [else false]
                        )
  )

(even 12)
(even 13)
(even 1245231152)

; Ex 10
; sumOfLarger2 number number number -> number
; GIEVEN: three numbers 
; Returns: sum of the larger two of the three
; examples
; (sumOfLarger2 1 2 3) -> 5
; (sumOfLarger2 4 2 4) -> 8

(define (sumOfLarger2 a b c) (cond
                               [(<= a b c) (+ b c)]
                               [(<= b a c) (+ a c)]
                               [(<= c a b) (+ a b)]
                               )
  )

(check-expect (sumOfLarger2 1 2 3) 5)
(check-expect (sumOfLarger2 4 2 4) 8)
(check-expect (sumOfLarger2 -2 4 -2) 2)

