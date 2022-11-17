return {
    ["name"] = "instrucción SELECT",

    [1] = {
        type = "About",
        title = "La instrucción SELECT",
        description = [[La instrucción <a class="example">SELECT</a> se utiliza para seleccionar datos de una base de datos.
Los datos que se devuelven/entregan se almacenan en una tabla de resultados, denominada conjunto de resultados.]]
    },

    [2] = {
        type = "Example",
        title = "Ejemplos de Escritura",
        content = {
            [1] = { "SELECT <i>columna1</i>, <i>columna2</i>, ...<br>FROM tabla_datos;", [[Selecciona las columnas <a class="example">columna1</a> y <a class="example">columna2</a> de datos de la tabla <a class="example">tabla_datos</a>]] },
            [2] = { "SELECT * FROM tabla;", [[Selecciona todas las columnas dentro de la tabla <a class="example">tabla_datos</a>]]}
        }
    },

    [3] = {
        type = "Table",
        title = "Ejemplos",
        description = [[Con el comando <a class="example">SELECT</a> se puede seleccionar todos los datos de una tabla de la siguiente forma.]],
        input = "SELECT * FROM Clientes;",
        output = {
            ["head"] = {"ID",       "Nombre",       "Apellido",     "Pais" },
            [1] = {     "1",        "Arman",        "Luis",         "Roberto" },
            [2] = {     "2",        "Vicente",      "Salas",        "Torres" },
            [3] = {     "3",        "Argentina",    "Bolivia",      "Chile" }
        }
    }
}