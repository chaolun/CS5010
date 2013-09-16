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

(check-expect (even 12) true)
(check-expect (even 13) false)
(check-expect (even 1245231152) true)
