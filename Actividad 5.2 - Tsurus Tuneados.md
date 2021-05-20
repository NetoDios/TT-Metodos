# Suma de primos

El programa debe hacer la suma de todos los numeros primos tal que `p < 5000000`. El algoritmo que se utilizo para determinar si un numero es o no primo es el siguiente:

```java
public boolean isPrime(int number){
    if(number<2) return false;
    for(int i=2; i*i<=number; ++i)
        if(number%i == 0)
            return false;
    return true;
}
```

Este metodo lo podemos usar de dos maneras diferentes, pues esta la manera tradicional de estructurar el código de manera secuencial, o podemos hacer uso total de los recursos del procesador, dividiendo la tarea entre multiples hilos. Para hacer esto se usa el siguiente código:

```java
@Override
public void run(){
    long sum = 0;
    for (int i = 2 + this.ID; i < 5000000; i+=Main.HILOS)
        if( isPrime(i) )
            sum += i;
    Main.resultado += sum;
}
```

Naturalmente los resultados de ambos enfoques deben de ser los mismos, pero, `¿hay alguna diferencia?` Si, en el tiempo de ejecución. En nuestro caso, el código se esta ejecutando desde un procesador con 6 núcleos y 12 hilos, y se obtuvieron los siguientes resultados:

|   | Tiempo (ms) | Resultado (suma) |
|------------|--------|--------------|
| Secuencial | 3126.0 | 838596693108 |
| 3 Hilo     | 2064.0 | 838596693108 |
| 5 Hilo     | 766.0  | 838596693108 |
| 7 Hilo     | 519.0  | 838596693108 |
| 12 Hilo    | 479.0  | 838596693108 |

El codigo fuente completo se puede encontrar en la siguiente liga: [https://github.com/NetoDios/TT-Metodos/tree/master/Actividad%205.2%20-%20Tsurus%20Tuneados](https://github.com/NetoDios/TT-Metodos/tree/master/Actividad%205.2%20-%20Tsurus%20Tuneados)