return {
    ["name"] = "Sintaxis",

    [1] = {
        type = "About",
        title = "Sintaxis",
        description = [[Los comandos de MySQL no son sensibles a la sintaxis esto quiere decir que no importa si escribimos en mayusculas o minusculas, pero si es recomendable utilizar la sintaxis correcta.]]
    },

    [2] = {
        type = "Example",
        title = "Ejemplo de comandos con Sintaxis",
        content = {
            [1] = { "Select * from clientes;", "Tabla con la información de todos los clientes y sus datos" },
            [2] = { "seLeCT avg(remuneracion) fROM trabajadores;", "Promedio de remuneración de los trabajadores" },
            [3] = { "select colUmNA where nOMbre like 'v%' from taBLA;", "Selecciona de la <T>Tabla</a> la columna <T>columna</a> todos los nombres que comienzen con la letra V"}
        }
    },

    [3] = {
        type = "About",
        title = "Algunas dudas",
        description = [[
        ¿Punto y coma despues de cada comando?<br>
        No es necesario. El punto y coma es un caracter de terminación de comando, pero MySQL puede detectar el final de una sentencia de varias maneras.<br><br>

        ¿Comillas simples o dobles?<br>
        La mayoría de las veces, las comillas simples son suficientes. Las comillas dobles son necesarias si la cadena contiene caracteres de escape. <T>\"</a><br><br>

        
        ¿Como funciona la notación de puntos?<br>
        La notación de puntos se usa para especificar los nombres de las tablas y de los campos.<br>
        Por ejemplo, si tiene una tabla llamada <T>usuarios</a> y un campo llamado <T>nombre</a>, puede usar la notación de puntos para especificar el campo de la siguiente manera:<br><br>
        <T>usuarios.nombre</a><br><br>
        De esta manera, MySQL puede determinar de qué tabla se trata el campo.<br><br>

        Nota: Esto tambien funciona con comillas.<br>
        <T>"usuarios"."nombre"</a>
        ]]
    }
}