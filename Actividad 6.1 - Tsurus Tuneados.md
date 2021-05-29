A lo largo de este semestre hemos aprendido muchos temas nuevos, y reforzado conceptos que vimos en otras unidades de formación; los temas más destacables del curso serían los autómatas, en especial los finitos determinísticos, los cuales realizan operaciones según una entrada, produciendo así una salida, detallaremos esto más adelante; también vimos las expresiones regulares que van de la mano con los autómatas ya que los autómatas procesan un lenguaje regular.
 
Aparte de la teoría que ya se dijo, también vimos diferentes paradigmas de programación, un paradigma de programación es un estilo de hacer software, es decir, una forma de resolver problemas computacionales; en esta unidad de formación vimos los siguientes paradigmas programación funcional con Scheme, lógica con Prolog y paralela con Java, enfatizando la última ya que vimos más a detalle sus ventajas, desventajas, problemas que puede generar, aparte de implementarlo. 

Todo esto se trabajó de forma colaborativa en un equipo de 3 personas, para lograr esto de una manera eficiente utilizamos Github, creamos un repositorio para todas las actividades de la clase donde cada miembro del equipo podía subir sus aportaciones a cada actividad, para después mezclarlas en un entregable final.

Para hacer todo lo anterior se usaron múltiples herramientas y servicios, los cuales escogimos en base a que tan faciles son de usar, la eficiencia sobre otras tecnologías, si se trata de un software libre o de licencia, y lo más importante para nosotros es la experiencia que tenemos con dicha herramienta, pues sí ya sabemos trabajar con una herramienta será más eficiente el proceso. Una última consideración que no terminó siendo decisiva del todo es que la herramienta que usaremos tuviera modo oscuro.

Una de las primeras decisiones que tuvimos que tener de manera grupal fue escoger el lenguaje de programación en el que se haría el programa, donde nosotros escogimos C++ por encima de otros como Java o Python, pues es el lenguaje en con el que tenemos más experiencia, aparte de ser uno de los más eficientes (en cuestión de tiempo de ejecución y recursos).

|Lenguaje|C++|Java|Python|
|-|-|-|-|
|Compilación|Lenguaje Compilado|Lenguaje Compilado e interpretado|Lenguaje interpretado|
|Multithreads|No soporta hilos|Soporte de multithreading en la construccion|Soporta Multithreading|
|Tamaño del codigo|Codigos no tan largos|Codigos muy largos|Menos de 70 lineas|
|Velocidad|Alta|Media|Baja|
|Paradigmas|Estructurada, Imperativa, Genérica|Orientado a objetos, Imperativo, Concurrencia y paralelismo|POO, Imperativo, funcional, Relfexivo|
|Sintaxis|Hay sintaxis declarativa y muchas puntuaciones ; {}|Hay sintaxis declarativa y muchas puntuaciones , ; . |No hay sintaxis declarativa, uso de identación|
|Estructura de datos|Puede tener funciones y variable fuera de una clase|Todo el codigo esta dentro de una clase|Puede tener funciones y variables afuera de una clase|


Después de escoger el lenguaje tuvimos que ver en qué herramienta trabajar, primero porque no todos trabajamos en el mismo IDE o editores de Texto. Nosotros utilizamos ReplIt porque tiene un buen entorno de trabajo colaborativo, muchos lenguajes e integración con Github, buscando y viendo otras herramientas que utilizamos en solitario se encuentran VS Code, Clion e InteliJ Idea. en la tabla [2] se puede ver como ReplIt se acomoda a nuestras necesidades sobre todo porque ya viene con todo lo que necesitamos y no hay necesidad de instalar ningún plugin ni programa.


|Herramienta|Replit|IntelliJ Idea|Clion|VS Code|
|-|-|-|-|-|
|Precio inicial|gratis|$500/y usd|$199/y usd|gratis|
|Lenguajes|multiple|Java|C++|multiples|
|Categoria|IDE|IDE|IDE|Editor de texto|
|Entorno|Web|Escritorio|Escritorio|Escritorio|
|Integracion con Github|Si|Si|Si|Si|
|Entorno colaborativo|multiplayer|code with me|no tiene instalado|no tiene instalado|

El fin de los autómatas finitos determinísticos es reconocer lenguajes regulares. Están conformados por un alfabeto, un conjunto de estados finitos que pueden ser transitivos o finales, un estado inicial, y una función de transición, todo el funcionamiento recae en la función de transición ya que es la encargada de decir a qué estado va a cambiar el autómata según la entrada, que es una cadena de caracteres que pertenecen al alfabeto del autómata, va a cambiar de estado hasta llegar a un estado final. 

Uno de los temas que más nos facilitaron la implementación del autómata son las expresiones regulares que refieren a sentencias que buscan un comportamiento repetitivo en una cadena, en el caso de el autómata nos apoyaron para determinar a qué tipo de token pertenece cada cadena de caracteres, mayormente verificando si estos eran dígitos o letras.

Uno de los paradigmas de programación que vimos fue la programación paralela, donde destinamos procesos diferentes (o iguales) a distintos sectores del procesador, esto es especialmente útil en situaciones donde dos procesos son independientes entre sí mismos, pues se puede optimizar el tiempo de ejecución. Para los temas relacionados con este paradigma se implementó Java por la facilidad de la integración.

Java es un gran lenguaje para el hacer paralelismo ya que cuenta con threads o hilos, al tener varios hilos podemos ejecutar varias cosas ya que cada hilo es independiente y está corriendo continuamente, entonces podemos ejecutar una tarea en específico en cada hilo, el problema que hay es cuando intentamos sincronizar, ya que si no se hace de forma correcta podemos ciclar el programa o perder información.

Dado un lenguaje regular (conjunto de tokens) se debe hacer un análisis sintáctico dado un archivo de texto como entrada, en este caso del lenguaje Scheme; el objetivo es obtener este mismo archivo resaltado con un código de colores, donde cada tipo de token distinto se ve representado de diferente color.

Dentro del contexto de nuestra solución para el autómata se requiere exportar de manera visual el archivo de entrada, para esto se decidió utilizar HTML en conjunto con CSS, pues de esta manera le damos opción al usuario de interactuar con el código fuente, y más importante aún así nos aseguramos de que el archivo exportado tenga las reglas de resaltado que nosotros establecimos.

Jflap es una herramienta gráfica gratuita para ayudar a experimentar con los lenguajes formales de una forma más fácil e intuitiva, con esta herramienta podemos diseñar, probar; los lenguajes regulares, autómatas, entre otros. 
Aunque Jflap es una gran herramienta para la creación de autómatas, nosotros usamos app.diagrams.net, esto porque ya habíamos usado esa herramienta antes, aparte que tiene las siguientes ventajas, puedes hacer tanto diagramas UML como autómatas, es en línea por lo que no hay que instalar nada, y se puede hacer trabajo colaborativo. 
Otra alternativa para los diagramas UML es Miro, esta aplicación no nos gusta tanto, ya que en su versión gratuita hay un límite de elementos que puedes poner en el diagrama, pero también cuenta con la opción colaborativa y de hecho funciona mejor que app.diagrams, pero no nos quisimos arriesgar a que estuviéramos a medio diagrama y que no nos dejara poner más elementos.

Zoom es la herramienta que usamos para tomar las clases en línea, es una buena herramienta para videollamadas con muchas funciones buenas que la hacen una herramienta muy completa, el único inconveniente es que si no tienes cuenta premium de zoom las reuniones se cortan cada 40 minutos lo cual es algo muy molesto, por otro lado tenemos la opción de de Whatsapp la cual es una aplicación muy usada, el problema es que su opción de videollamadas está muy limitada ya que no permite compartir pantalla y es una función muy importante, por último tenemos Discord, que es la herramienta que usamos nosotros ya que en esta herramienta podemos estar todos reunidos, podemos mandar mensajes, hacer videollamadas, compartir pantalla, también tenemos a opción de poner música mientras estamos trabajando, algo que aumenta nuestra productividad.

Nosotros empezamos con Google Docs por sus funciones colaborativas, pero nos dimos cuenta que teníamos algunos problemas con esta herramienta, el primero es que los documentos no los soporta Github, entonces nos fue más difícil que cada quien subiera su parte y al final mezclar las partes para tener la entrega final; el otro problema es que no se ve bien en Github un archivo de Word porque no lo puede procesar, es por esto que decidimos cambiar a Markdown, donde sí podíamos colaborar mediante Github, aparte que Github lo puede procesar dando una vista previa del documento, asimismo con Mardown tenemos mucha más libertad en el formato, pudiendo hacer un documento en modo oscuro.

Como pudimos ver, hay muchas opciones de herramientas para hacer lo mismo, hay unas que para cierta tarea son mejores que otras, pero que para otra no lo sean. Conocer estas herramientas es algo muy útil ya que por así decir, las tienes en tu arsenal como programador, aparte que usar este tipo de herramientas te pueden facilitar mucho tu trabajo y hasta mejorar la calidad de tu trabajo.

Como pudimos ver las herramientas que elegimos puede que no sea la mejor en el mercado, pero para nosotros lo fueron, ya que son las que más se adaptan a nuestras necesidades y nos complementan bien, aparte tenían modo oscuro la mayoría.

Bibliografía:

C. (2021, May 16). Retrieved from https://es.wikipedia.org/wiki/C

C vs Java vs Python. (2020, January 03). Retrieved from https://www.geeksforgeeks.org/c-vs-java-vs-python/

Compare Repl.it, IntelliJ IDEA, CLion, and Visual Studio Code. (n.d.). Retrieved from https://www.g2.com/compare/repl-it-vs-intellij-idea-vs-clion-vs-visual-studio-code

Difference between Python and C. (2020, March 31). Retrieved from https://www.geeksforgeeks.org/difference-between-python-and-c/

JFLAP. (n.d.). Retrieved from http://www.jflap.org/

Python. (n.d.). Retrieved from https://es.wikipedia.org/wiki/Python

QUÉ ES JFLAP? (2017, April 16). Retrieved from https://interpolados.wordpress.com/2016/02/19/que-es-jflap/

Mozilla Development Network (s.f.). Expresiones Regulares https://developer.mozilla.org/es/docs/Web/JavaScript/Guide/Regular_Expressions