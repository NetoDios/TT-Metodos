# Suma de primos

El programa debe hacer sumar de todos los numeros primos tal que `p < 5000000`. El algoritmo que se utilizo para determinar si un numero es o no primo es el siguiente:

```java
public boolean isPrime(int number){
    if(number<2) return false;
    for(int i=2; i*i<=number; ++i)
        if(number%i == 0)
            return false;
    return true;
}
```