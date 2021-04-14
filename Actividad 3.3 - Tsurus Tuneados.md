# 4.1 Give context.free grammars generating the following sets.
### a) The set of pañindromes (strings that read the same forward as backward) over alphabet {$a,\ b$}.
    Respuesta
### c) The set of strings over alphabet {$a, b$} with exactly twice as many $a$'s as $b$'s
    Respuesta

# 4.8 Let $G$ be the grammar
$$
S → aB\ |\ bA \\
A → a\ |\ aS\ |\ bAA \\
B → b\ |\ bS\ |\ aBB
$$
## For the string $aaabbabbba$ find:
### a) leftmost derivation
    [S] → a[B] → aa[B]B → aaa[B]BB → aaab[S]BB → aaabb[A]BB → aaabba[B]B
    aaabba[B]B → aaabbab[B] → aaabbabb[S] → aaabbabbb[A] → aaabbabbba

### b) rightmost derivation
    [S] → a[B] → aaB[B] → aaBb[S] → aaBbb[A] → aaBbba → aaaB[B]bba
    aaaB[B]bba → aaa[B]bbba → aaab[S]bbba → aaabb[S]bbba → aaabbabbba
### c) parse tree
    Respuesta