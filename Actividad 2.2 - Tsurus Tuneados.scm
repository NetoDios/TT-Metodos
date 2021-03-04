
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
        (r-l
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
