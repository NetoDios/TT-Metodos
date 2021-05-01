# 7.1 Design Turing Machines to recognize the following languages:
<h3>a) {0<sup>n</sup> 1<sup>n</sup> 0<sup>n</sup> | n ≥ 1}</h3>

    Como podemos ver, este lenguaje solo acepta 2 caracteres, los 0’ s y los 1' s, debe de haber n cantidad de 0’ s, seguido de n cantidad de 1' s, y por último n cantidad de 0’ s, donde n es mayor o igual a 1.

#### Ejemplos válidos de la máquina de Turing:




| 0  | 1  | 0  | @  |
|---|---|---|---|

| 0  |  0 | 0  | 1 | 1| 1| 0|0|0|@|
|---|---|---|---|---|---|---|---|-|-|

    Aquí se usa el símbolo “@” para indicar el final de la cinta.

    En este diagrama los 0’ s se vuelven “X”, los 1’ s se vuelven “Y”, y el símbolo final es “@”.

<p align=center>
<img src=https://media.discordapp.net/attachments/717747027081166948/837889850844643348/Diagrama_4.1_Turing.png title="diagram">
</p>