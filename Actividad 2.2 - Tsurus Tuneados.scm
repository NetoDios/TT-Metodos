;EJERCICIO 1
;funcion para insertar un elemento en una lista ordenada en su lugar correspondiente
(define (insert n lst)
  (cond ((null? lst) (list n))
        ((< n (car lst)) (cons n lst))
        (else (cons (car lst) (insert n (cdr lst))))
  )
)
