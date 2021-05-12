## Prolog Exercises
For each of these problems, the aim is to define a predicate using few clauses. Each of the problems is a list processing problem.

##### 5. Write a predicate last. Which takes a list as its first argument and returns the last element of the list.
```prolog
last([T], T).

last([_ | T], LAST):-
    last(T, LAST).
```

##### 6. Write a predicate max. Which takes three arguments, the first two are positive integer numbers and returns in the third the max of them.
```prolog
max(N,N2,R):-
    N>0,
    N2>0,
    N<N2,
    R is N2.
    
max(N,N2,R):-
    N>0,
    N2>0,
    N>N2,
    R is N.
```

##### 7. Write a predicate fact/2which takes a natural number as first argument, and returns the factorial of the number.
```prolog
fact(0,1).

fact(N,R) :-  
  N>0, 
  N1 is N-1,
  fact(N1,R1), 
  R is N * R1.
```

##### 8. Write a predicate fib/2which takes a natural number as first argument, and returns the value of the Fibonacci sequence for that position (counting from 1).
```prolog
fib(0,1).
fib(1,1).
fib(N,R):-
    N > 1,
    N1 is N-1,
    N2 is N-2,
    fib(N1, R1),
    fib(N2, R2),
    R is R1+R2.
```

##### 9. Write a predicate length2. Which takes a list as first argument, and returns in the second one the number of elements in the list.
```prolog
length2([ ], 0).
    
length2([_ | T], SIZE):-
    length2(T, Size_1),
	SIZE is Size_1 + 1.
```

##### 10. Write a predicate power. Which takes a number as first argument, natural number as second argument and returns the first number to the power of the second.
```prolog
power(0,0,fail).
power(X,0,R) :-
  X>0,
  R is 1.

power(X,1,X).

power(X,N,R) :-
  N>0,
  N1 is N-1,
  power(X,N1,R1),
  R is R1*X.
```

##### 16. Define sum. To take a list of integers as input and return the output as their sum.
```prolog
sum([ ], 0).
    
sum([H | T], SUM):-
	sum(T, AUX),
	SUM is AUX + H.
```