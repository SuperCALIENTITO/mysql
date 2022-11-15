return {
    ["name"] = "instrucción WHERE",

    [1] = {
        type = "About",
        title = "La instrucción WHERE",
        description = [[La instrucción <a class="example">WHERE</a> para filtrar los datos.
Los datos que se devuelven/entregan se almacenan en una tabla de resultados, denominada conjunto de resultados.]]
    },

    [2] = {
        type = "Example",
        title = "Ejemplos",
        content = {
            [1] = { "SELECT * FROM Clientes WHERE id = 1;", "Tabla con la informacion de todos los clientes" },
            [2] = { "SELECT SYSDATE() FROM dual;", "Nos muestra la fecha actual"}
        },
    },
}