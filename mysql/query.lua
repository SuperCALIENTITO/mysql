return {
    [1] = {
        type = "About",
        title = "¿Que es MySQL?",
        description = [[

]]
    },

    [2] = {
        type = "Example",
        title = "Ejemplos",
        content = {
            [1] = { "SELECT * FROM Clientes;", "Tabla con la informacion de todos los clientes" },
            [2] = { "SELECT SYSDATE() FROM dual;", "Nos muestra la fecha actual"}
        },
    },

    [3] = {
        type = "SeeAlso",
        title = "Algunos comandos de interes",
        content = {
            [1] = { "SELECT", "Selecciona/Extrae informacion de una base de datos" },
            [2] = { "UPDATE", "Actualiza informacion de una base de datos" },
            [3] = { "DELETE", "Elimina informacion de una base de datos (No confundir con DROP)" },
            [4] = { "INSERT INTO", "Inserta/Añade informacion a una base de datos" },
            [5] = { "CREATE DATABASE", "Crea una nueva base de datos" },
            [6] = { "ALTER DATABASE", "Modifica una base de datos" },
            [7] = { "CREATE TABLE", "Crea una nueva tabla de datos" },
            [8] = { "ALTER TABLE", "Modifica una tabla de datos" },
            [9] = { "DROP TABLE", "Elimina una tabla de datos (No confundir con DELETE)" },
            [10]= { "CREATE INDEX", "Crea un indice (Llave de busqueda)" }
        }
    }

}