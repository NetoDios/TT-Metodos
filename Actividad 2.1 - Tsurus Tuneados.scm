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
