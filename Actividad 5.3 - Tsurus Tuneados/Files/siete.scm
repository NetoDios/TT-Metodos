

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


; Problema 6

(define (duplicate lista)
    (if (> (length lista) 1)
        (cons
            (car lista)
            (cons
                (car lista)
                (duplicate (cdr lista))
            )
        )
        (cons
            (car lista)
            (cons
                (car lista)
                '()
            )
        )
    )
)

; Problema 10

(define (positives lista)
    (if (> (length lista) 0)
        (if (> (car lista) 0)
            (cons
                (car lista)
                (positives (cdr lista))
            )
            (positives (cdr lista))
        )
        '( )
    )
)

;EJERCICIO 1
;funcion para insertar un elemento en una lista ordenada en su lugar correspondiente
(define (insert n lst)
  (cond ((null? lst) (list n))
        ((< n (car lst)) (cons n lst))
        (else (cons (car lst) (insert n (cdr lst))))
  )
)

; Problema 3

(define (rotate-left amount list)
    (define rotate
        (cond
            ((> amount (length list))
                (modulo amount (length list))
            )
            ((< amount 0)
                (modulo amount (length list))
            )
            (else
                amount
            )
        )
    )
    (if (> rotate 0)
        (rotate-left
            (- rotate 1)
            (append
                (cdr list)
                (cons
                    (car list)
                    '()
                )
            )
        )
        list
    )
)


; EJERCICIO 6
; Revierte los elementos de la lista
; Si hay listas tambien las revierte
(define (deep-reverse lst)
    (cond 
        ((null? lst) lst)
        ((list? (car lst)) 
            (append 
                (deep-reverse  
                    (cdr lst)
                )
                (list 
                    (deep-reverse 
                        (car lst)
                    )
                )
            )
        )
        (else 
            (append
                (deep-reverse  
                    (cdr lst)
                ) 
                (list (car lst))
            )
        )
    )
)


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


; Problema 6

(define (duplicate lista)
    (if (> (length lista) 1)
        (cons
            (car lista)
            (cons
                (car lista)
                (duplicate (cdr lista))
            )
        )
        (cons
            (car lista)
            (cons
                (car lista)
                '()
            )
        )
    )
)

; Problema 10

(define (positives lista)
    (if (> (length lista) 0)
        (if (> (car lista) 0)
            (cons
                (car lista)
                (positives (cdr lista))
            )
            (positives (cdr lista))
        )
        '( )
    )
)

;EJERCICIO 1
;funcion para insertar un elemento en una lista ordenada en su lugar correspondiente
(define (insert n lst)
  (cond ((null? lst) (list n))
        ((< n (car lst)) (cons n lst))
        (else (cons (car lst) (insert n (cdr lst))))
  )
)

; Problema 3

(define (rotate-left amount list)
    (define rotate
        (cond
            ((> amount (length list))
                (modulo amount (length list))
            )
            ((< amount 0)
                (modulo amount (length list))
            )
            (else
                amount
            )
        )
    )
    (if (> rotate 0)
        (rotate-left
            (- rotate 1)
            (append
                (cdr list)
                (cons
                    (car list)
                    '()
                )
            )
        )
        list
    )
)


; EJERCICIO 6
; Revierte los elementos de la lista
; Si hay listas tambien las revierte
(define (deep-reverse lst)
    (cond 
        ((null? lst) lst)
        ((list? (car lst)) 
            (append 
                (deep-reverse  
                    (cdr lst)
                )
                (list 
                    (deep-reverse 
                        (car lst)
                    )
                )
            )
        )
        (else 
            (append
                (deep-reverse  
                    (cdr lst)
                ) 
                (list (car lst))
            )
        )
    )
)


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


; Problema 6

(define (duplicate lista)
    (if (> (length lista) 1)
        (cons
            (car lista)
            (cons
                (car lista)
                (duplicate (cdr lista))
            )
        )
        (cons
            (car lista)
            (cons
                (car lista)
                '()
            )
        )
    )
)

; Problema 10

(define (positives lista)
    (if (> (length lista) 0)
        (if (> (car lista) 0)
            (cons
                (car lista)
                (positives (cdr lista))
            )
            (positives (cdr lista))
        )
        '( )
    )
)

;EJERCICIO 1
;funcion para insertar un elemento en una lista ordenada en su lugar correspondiente
(define (insert n lst)
  (cond ((null? lst) (list n))
        ((< n (car lst)) (cons n lst))
        (else (cons (car lst) (insert n (cdr lst))))
  )
)

; Problema 3

(define (rotate-left amount list)
    (define rotate
        (cond
            ((> amount (length list))
                (modulo amount (length list))
            )
            ((< amount 0)
                (modulo amount (length list))
            )
            (else
                amount
            )
        )
    )
    (if (> rotate 0)
        (rotate-left
            (- rotate 1)
            (append
                (cdr list)
                (cons
                    (car list)
                    '()
                )
            )
        )
        list
    )
)


; EJERCICIO 6
; Revierte los elementos de la lista
; Si hay listas tambien las revierte
(define (deep-reverse lst)
    (cond 
        ((null? lst) lst)
        ((list? (car lst)) 
            (append 
                (deep-reverse  
                    (cdr lst)
                )
                (list 
                    (deep-reverse 
                        (car lst)
                    )
                )
            )
        )
        (else 
            (append
                (deep-reverse  
                    (cdr lst)
                ) 
                (list (car lst))
            )
        )
    )
)


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


; Problema 6

(define (duplicate lista)
    (if (> (length lista) 1)
        (cons
            (car lista)
            (cons
                (car lista)
                (duplicate (cdr lista))
            )
        )
        (cons
            (car lista)
            (cons
                (car lista)
                '()
            )
        )
    )
)

; Problema 10

(define (positives lista)
    (if (> (length lista) 0)
        (if (> (car lista) 0)
            (cons
                (car lista)
                (positives (cdr lista))
            )
            (positives (cdr lista))
        )
        '( )
    )
)

;EJERCICIO 1
;funcion para insertar un elemento en una lista ordenada en su lugar correspondiente
(define (insert n lst)
  (cond ((null? lst) (list n))
        ((< n (car lst)) (cons n lst))
        (else (cons (car lst) (insert n (cdr lst))))
  )
)

; Problema 3

(define (rotate-left amount list)
    (define rotate
        (cond
            ((> amount (length list))
                (modulo amount (length list))
            )
            ((< amount 0)
                (modulo amount (length list))
            )
            (else
                amount
            )
        )
    )
    (if (> rotate 0)
        (rotate-left
            (- rotate 1)
            (append
                (cdr list)
                (cons
                    (car list)
                    '()
                )
            )
        )
        list
    )
)


; EJERCICIO 6
; Revierte los elementos de la lista
; Si hay listas tambien las revierte
(define (deep-reverse lst)
    (cond 
        ((null? lst) lst)
        ((list? (car lst)) 
            (append 
                (deep-reverse  
                    (cdr lst)
                )
                (list 
                    (deep-reverse 
                        (car lst)
                    )
                )
            )
        )
        (else 
            (append
                (deep-reverse  
                    (cdr lst)
                ) 
                (list (car lst))
            )
        )
    )
)


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


; Problema 6

(define (duplicate lista)
    (if (> (length lista) 1)
        (cons
            (car lista)
            (cons
                (car lista)
                (duplicate (cdr lista))
            )
        )
        (cons
            (car lista)
            (cons
                (car lista)
                '()
            )
        )
    )
)

; Problema 10

(define (positives lista)
    (if (> (length lista) 0)
        (if (> (car lista) 0)
            (cons
                (car lista)
                (positives (cdr lista))
            )
            (positives (cdr lista))
        )
        '( )
    )
)

;EJERCICIO 1
;funcion para insertar un elemento en una lista ordenada en su lugar correspondiente
(define (insert n lst)
  (cond ((null? lst) (list n))
        ((< n (car lst)) (cons n lst))
        (else (cons (car lst) (insert n (cdr lst))))
  )
)

; Problema 3

(define (rotate-left amount list)
    (define rotate
        (cond
            ((> amount (length list))
                (modulo amount (length list))
            )
            ((< amount 0)
                (modulo amount (length list))
            )
            (else
                amount
            )
        )
    )
    (if (> rotate 0)
        (rotate-left
            (- rotate 1)
            (append
                (cdr list)
                (cons
                    (car list)
                    '()
                )
            )
        )
        list
    )
)


; EJERCICIO 6
; Revierte los elementos de la lista
; Si hay listas tambien las revierte
(define (deep-reverse lst)
    (cond 
        ((null? lst) lst)
        ((list? (car lst)) 
            (append 
                (deep-reverse  
                    (cdr lst)
                )
                (list 
                    (deep-reverse 
                        (car lst)
                    )
                )
            )
        )
        (else 
            (append
                (deep-reverse  
                    (cdr lst)
                ) 
                (list (car lst))
            )
        )
    )
)


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


; Problema 6

(define (duplicate lista)
    (if (> (length lista) 1)
        (cons
            (car lista)
            (cons
                (car lista)
                (duplicate (cdr lista))
            )
        )
        (cons
            (car lista)
            (cons
                (car lista)
                '()
            )
        )
    )
)

; Problema 10

(define (positives lista)
    (if (> (length lista) 0)
        (if (> (car lista) 0)
            (cons
                (car lista)
                (positives (cdr lista))
            )
            (positives (cdr lista))
        )
        '( )
    )
)

;EJERCICIO 1
;funcion para insertar un elemento en una lista ordenada en su lugar correspondiente
(define (insert n lst)
  (cond ((null? lst) (list n))
        ((< n (car lst)) (cons n lst))
        (else (cons (car lst) (insert n (cdr lst))))
  )
)

; Problema 3

(define (rotate-left amount list)
    (define rotate
        (cond
            ((> amount (length list))
                (modulo amount (length list))
            )
            ((< amount 0)
                (modulo amount (length list))
            )
            (else
                amount
            )
        )
    )
    (if (> rotate 0)
        (rotate-left
            (- rotate 1)
            (append
                (cdr list)
                (cons
                    (car list)
                    '()
                )
            )
        )
        list
    )
)


; EJERCICIO 6
; Revierte los elementos de la lista
; Si hay listas tambien las revierte
(define (deep-reverse lst)
    (cond 
        ((null? lst) lst)
        ((list? (car lst)) 
            (append 
                (deep-reverse  
                    (cdr lst)
                )
                (list 
                    (deep-reverse 
                        (car lst)
                    )
                )
            )
        )
        (else 
            (append
                (deep-reverse  
                    (cdr lst)
                ) 
                (list (car lst))
            )
        )
    )
)


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


; Problema 6

(define (duplicate lista)
    (if (> (length lista) 1)
        (cons
            (car lista)
            (cons
                (car lista)
                (duplicate (cdr lista))
            )
        )
        (cons
            (car lista)
            (cons
                (car lista)
                '()
            )
        )
    )
)

; Problema 10

(define (positives lista)
    (if (> (length lista) 0)
        (if (> (car lista) 0)
            (cons
                (car lista)
                (positives (cdr lista))
            )
            (positives (cdr lista))
        )
        '( )
    )
)

;EJERCICIO 1
;funcion para insertar un elemento en una lista ordenada en su lugar correspondiente
(define (insert n lst)
  (cond ((null? lst) (list n))
        ((< n (car lst)) (cons n lst))
        (else (cons (car lst) (insert n (cdr lst))))
  )
)

; Problema 3

(define (rotate-left amount list)
    (define rotate
        (cond
            ((> amount (length list))
                (modulo amount (length list))
            )
            ((< amount 0)
                (modulo amount (length list))
            )
            (else
                amount
            )
        )
    )
    (if (> rotate 0)
        (rotate-left
            (- rotate 1)
            (append
                (cdr list)
                (cons
                    (car list)
                    '()
                )
            )
        )
        list
    )
)


; EJERCICIO 6
; Revierte los elementos de la lista
; Si hay listas tambien las revierte
(define (deep-reverse lst)
    (cond 
        ((null? lst) lst)
        ((list? (car lst)) 
            (append 
                (deep-reverse  
                    (cdr lst)
                )
                (list 
                    (deep-reverse 
                        (car lst)
                    )
                )
            )
        )
        (else 
            (append
                (deep-reverse  
                    (cdr lst)
                ) 
                (list (car lst))
            )
        )
    )
)