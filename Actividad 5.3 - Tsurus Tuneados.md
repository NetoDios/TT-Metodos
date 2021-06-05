<div style="height:100px;"></div>
<center>
    <img src="https://media.discordapp.net/attachments/692982204627812372/850479473454612520/Tec.png?width=1260&height=332" width="50%" alt="ITESM">
</center>
<div style="height:130px;"></div>

<!--    ACTIVIDAD   -->
<h2 align="center">
    Actividad 5.3: Resaltador de sintaxis paralelo
</h2>
<!--    MATERIA   -->
<h2 align="center">
    Implementación de Métodos Computacionales
</h2>

---
<!--    INTEGRANTES   -->
<p align="center">
    Ernesto Adrián Alvarez Salazar - A00227490
</p>
<p align="center">
    José Rodrigo Saucedo Cruz - A00571371
</p>
<p align="center">
    Germán Andrés Jaramillo - A00571636
</p>
<!--    FECHA   -->
<p align="center">
    <code align="center">
        04 de junio de 2021
    </code>
</p>

<div style="height:130px;"></div>
<center>
    <img src="https://media.discordapp.net/attachments/692982204627812372/850479438227177533/Tank.png?width=688&height=657" width="40%" alt="Tsurus Tuneados">
</center>
<div class="page"></div>



Debido a la gran demanda de soluciones que requieren de crear nuevas tecnologías, como lenguajes de programación, un resaltado sintáctico se vuelve una gran herramienta para las personas los programadores, pues así se agiliza la búsqueda de errores e incluso sentencias dentro de los archivos, eficientando el tiempo en el que tanto se escribe como en el que se prueba el código.

Al trabajar con una cantidad grande de archivos la solución llega a volverse lenta si intentamos hacer un archivo tras de otro, cosa que se convierte en un inconveniente cuando se trata de algo se hace con la esperanza de ahorrar tiempo (y motivos estéticos), para ello es necesario hacer las más optimizaciones que sean posibles.
En esta ocasión se consiguieron los siguientes datos al analizar 1000 archivos con 1000 líneas de código todos, con distintos números de hilos:

| Numero de Hilos | Tiempo (en segundos) |
|-----------------|----------------------|
|         1       |          18          |
|         2       |        13.5          |
|         3       |         8.3          |
|         5       |           8          |
|         8       |         8.2          |
|        10       |         7.9          |
|        12       |         8.1          |

Como se ve en la tabla, el uso de hilos en paralelo eficientiza en gran medida el tiempo de ejecución pues el paradigma permite que más de un proceso se ejecute al mismo momento. Esto es posible gracias a que los procesos son independientes entre sí.

En nuestro código estamos destinando un archivo a cada hilo del procesador, una vez termina de hacer el proceso se le asigna un nuevo archivo. Esto de primera instancia es una solución muy completa, pero mientras probamos el código nos dimos cuenta que varios hilos podían analizar un mismo archivo, entonces tuvimos que buscar una manera diferente de destinar los archivos a los hilos; se optó por hacer una cola compartida que se accediera de manera sincronizada

```java
synchronized public void addFile(String fileName){
    convert.add(fileName);
    System.out.println(fileName+" ( "+convert.size()+" )");
}
synchronized public String getFile(){
    if(!convert.isEmpty()){
        String aux = convert.peek();
        convert.remove();
        return aux;
    }
    finished();
    return null;
}
```

Computacionalmente hablando nuestro código no tiene gran complejidad, esto es algo bueno que logramos al asegurar que cada archivo se analiza exactamente una vez, en concreto y por secciones del programa cuando leemos los archivos del directorio es en tiempo lineal `O(n)`
```java
private static void fillQueue(String path) {
    File dir = new File(path);
    File[] dirFiles = dir.listFiles();
    if(dirFiles != null){
        for(File file : dirFiles) {
            String name = file.getName();
            archivos.addFile(name);
        }
    }
}
```

De ahí en más, lo más destacable es la manera en la que se ejecuta el resaltado sintáctico, con este método `exec()`, esto se ejecuta para cada hilo y tiene una complejidad lineal `O(n)`
```java
while(file != null){
    file = this.archivos.getFile();
    String[] params = {execute, path, file};
    if(file!=null){
        try {
            long inicio = System.currentTimeMillis();
            app.exec(params);
            long fin = System.currentTimeMillis();
            System.out.print("Procesando (H" + this.id + "): " + file);
            System.out.println(" ->\t"+(fin-inicio)+" ms");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

En la siguiente liga se encuentra el código fuente del proyecto: [https://github.com/NetoDios/TT-Metodos/tree/master/Actividad%205.3%20-%20Tsurus%20Tuneados](https://github.com/NetoDios/TT-Metodos/tree/master/Actividad%205.3%20-%20Tsurus%20Tuneados)



<div class="page"></div>
