return {
    ["name"] = "instrucción SELECT",

    [1] = {
        type = "About",
        title = "La instrucción SELECT",
        description = [[
        El comando <T>SELECT</a> de MySQL es un comando utilizado para recuperar datos de una base de datos.<br>
        Este comando se utiliza generalmente junto con la cláusula <T>WHERE</a> para especificar qué registros se deben recuperar.]]
    },

    [2] = {
        type = "ExampleLong",
        title = "SELECT con WHERE",
        description = "La sintaxis del comando SELECT es la siguiente:",
        example = [[
        SELECT<br>
        <J>     [campo1, campo2, ...]<br>
        FROM<br>
        <J>     [nombre de la tabla]<br>
        WHERE<br>
        <J>     [condición];
        ]]
    },

    [3] = {
        type = "ExampleLong",
        title = "SELECT con WHERE y ORDER BY",
        description = [[
        El comando SELECT puede utilizarse también con la cláusula ORDER BY para especificar el orden en el que se deben recuperar los registros.<br>
        La sintaxis del comando SELECT es la siguiente:
        ]],
        example = [[
        SELECT<br>
        <J>     [campo1, campo2, ...]<br>
        FROM<br>
        <J>     [nombre de la tabla]<br>
        WHERE<br>
        <J>     [condición];
        ]]
    },

    [4] = {
        type = "ExampleLong",
        title = "SELECT con WHERE y LIMIT",
        description = [[
            El comando SELECT también se puede utilizar con la cláusula LIMIT para especificar el número máximo de registros que se deben recuperar.<br>
            La sintaxis del comando SELECT con la cláusula LIMIT es la siguiente:]],
        example = [[
        SELECT<br>
        <J>     [campo1, campo2, ...]<br>
        FROM<br>
        <J>     [nombre de la tabla]<br>
        LIMIT<br>
        <J>     [número máximo de registros];
        ]]
    },

    [5] = {
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