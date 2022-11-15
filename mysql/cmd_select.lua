return {
    ["name"] = "instrucción SELECT",

    [1] = {
        type = "About",
        title = "La instrucción SELECT de MySQL",
        description = [[La instrucción <a class="example">SELECT</a> se utiliza para seleccionar datos de una base de datos.
Los datos que se devuelven/entregan se almacenan en una tabla de resultados, denominada conjunto de resultados.]]
    },

    [2] = {
        type = "Table",
        title = "Ejemplos",
        description = "Testing",
        input = "SELECT * FROM Clientes;",
        output = {
            [1] = { "ID",       { "1",          "2",        "3",        "4",        "5" } },
            [2] = { "Nombre",   { "Arman",      "Vicente",  "Luis",     "Mauricia", "Roberto" } },
            [3] = { "Apellido", { "Contreras",  "Zapata",   "Salas",    "Torres",   "Valenzuela" } },
            [4] = { "Pais",     { "Peru",       "Argentina","Bolivia",  "Chile",    "Chile" } }
        }
    }
}