;EJERCICIO 1
;Esta funcion de scheme lo que hace es convertir una temperatura farenheit a celcius
; se usa la formula C=(5*(F-32))/9
(define (farenheit-to-celcius f)
  (/ (* 5 (- f 32)) 9)
)

;EJERCICIO 2
;Esta funcion de scheme lo que hace es ver el signo de un numero, devuelve -1 si es negativo, 1 si es positivo y 0 si es 0
;Se hace huco de cond para hacer las 3 verificaciones
(define (sign n)
  (cond ((< n 0) -1)
        ((> n 0) 1)
        ((= n 0) 0)
  )
)