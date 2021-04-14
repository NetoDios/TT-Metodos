# 4.1 Give context.free grammars generating the following sets.
### a) The set of palindromes (strings that read the same forward as backward) over alphabet {a, b}.
    V : E
    Σ : (a,b)
    P : (E)
    S : E

    P contiene las siguientes producciones
    E -> aEa
    E -> a
    E -> aa
    E -> bEb
    E -> b
    E -> bb

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
    [S [a] [B [a] [B [a] [B [b] [S [b] [A [a]]]] [B [b]]] [B [b] [S [b] [A [a]]]]]]
<p align=center>
<img src=https://media.discordapp.net/attachments/692982204627812372/831982367644188682/syntax_tree.png title="Parse Tree">
</p>