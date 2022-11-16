return {
    ["name"] = "instrucción SELECT",

    [1] = {
        type = "About",
        title = "La instrucción SELECT",
        description = [[La instrucción <a class="example">SELECT</a> se utiliza para seleccionar datos de una base de datos.
Los datos que se devuelven/entregan se almacenan en una tabla de resultados, denominada conjunto de resultados.]]
    },

    [2] = {
        type = "Table",
        title = "Ejemplos",
        description = "Testing",
        input = "SELECT * FROM Clientes;",
        output = {
            ["head"] = {"ID",       "Nombre",       "Apellido",     "Pais" },
            [1] = {     "1",        "Arman",        "Luis",         "Roberto" },
            [2] = {     "2",        "Vicente",      "Salas",        "Torres" },
            [3] = {     "3",        "Argentina",    "Bolivia",      "Chile" }
        }
    }
}