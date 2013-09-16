;; Ex 3: Write the definition of a function that converts a temperature from degrees Fahrenheit to degrees Celcius. 
;; The formula for the conversion is C = (F-32) * (5/9) . 
;; The contract, purpose statement and examples for this function are:
;; contract: give number get number
;; purpose statement: give degrees in F and returns degrees in C
;; examples: (F2C 32) = 0
;;           (F2C 212) = 100
(define (F2C F) (* (- F 32) (/ 5 9)))

(check-expect (F2C 32) 0)
(check-expect (F2C 212) 100)