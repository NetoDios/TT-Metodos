;EJERCICIO 3
;funcion de la formula general
; X= (-b + sqrt(b^2 -4ac))/2a
(define (roots a b c)
  (/ (+ (sqrt(+ (expt b 2) (* -4 a c))) (* b -1)) (* 2 a))
)

;EJERCICIO 4
;funcion para desplegar el rango del IMC en el que te encuentras
;BMI = weight/height^2
(define (bmi w h)
  (define BMI(/ w (expt h 2)))
  (cond ((< BMI 20) 'underweight)
        ((and (<= 20 BMI) (< BMI 25)) 'normal)
        ((and (<= 25 BMI) (< BMI 30)) 'obese1)
        ((and (<= 30 BMI) (< BMI 40)) 'obese2)
        ((>= BMI 40) 'obese3)
  )
)