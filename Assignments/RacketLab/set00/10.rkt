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

