

;EJERCICIO 1
;Esta funcion de scheme lo que hace es convertir una temperatura farenheit a celcius
; se usa la formula C=(5*(F-32))/9
(define (farenheit-to-celcius f)
  (/ (* 5 (- f 32)) 9)
)
