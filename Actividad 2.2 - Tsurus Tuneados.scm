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