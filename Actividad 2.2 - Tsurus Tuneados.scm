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