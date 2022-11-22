return {
    ["name"] = "Lo basico",

    [1] = {
        type = "About",
        title = "¿Que es MySQL?",
        description = [[MySQL es un sistema de gestión de bases de datos relacionales, desarrollado bajo una licencia dual: Licencia pública general GNU y licencia comercial.]]
    },

    [2] = {
        type = "About",
        title = "¿Por qué usar MySQL?",
        description = [[
            MySQL es uno de los sistemas de gestión de bases de datos más populares del mundo.<br>
            MySQL es un software libre y de código abierto, lo que significa que puede ser descargado y utilizado gratuitamente.<br><br>

            MySQL es un sistema de gestión de bases de datos muy versátil. Puede ser utilizado para almacenar cualquier tipo de información, desde una base de datos de una pequeña tienda hasta una base de datos de un sitio web de alta tráfico.<br><br>
            
            MySQL también es muy escalable. Puede manejar bases de datos de cualquier tamaño, desde una pequeña base de datos de una sola tabla hasta una base de datos de miles de tablas con millones de registros.
        ]]
    },

    [3] = {
        type = "About",
        title = "¿Cómo funciona MySQL?",
        description = [[
            MySQL almacena información en tablas. Una tabla es un conjunto de datos relacionados que se almacenan juntos en una estructura de tabla.<br><br>

Por ejemplo, una tabla de usuarios puede incluir los campos <T>nombre_de_usuario</a>, <T>contraseña</a>, <T>correo_electrónico</a> y <T>fecha de registro</a>.<br><br>

Cada campo en una tabla contiene un valor específico.<br>
Por ejemplo, el campo <T>nombre_de_usuario</a> puede contener el valor <T>jsmith</a>.<br><br>

Los datos en una tabla se organizan en filas. Cada fila contiene un conjunto de datos relacionados.<br>
Por ejemplo, una fila en la tabla de usuarios puede contener los valores <T>jsmith</a>, <T>123456</a>, <T>jsmith@example.com</a> y <T>2015-01-01</a>.<br><br>

Las tablas se relacionan entre sí mediante claves. <T>FOREIGN KEY</a><br>
Una clave es un campo en una tabla que se utiliza para enlazar datos en otras tablas.<br><br>

Por ejemplo, la tabla de usuarios puede tener una clave que se relaciona con la tabla de mensajes.<br>
Esto significa que se puede buscar un usuario en la tabla de usuarios y, a continuación, encontrar todos los mensajes que haya enviado ese usuario en la tabla de mensajes.
        ]]
    },

    [4] = {
        type = "Example",
        title = "Ejemplos",
        content = {
            [1] = { "SELECT * FROM Clientes;", "Tabla con la informacion de todos los clientes" },
            [2] = { "SELECT SYSDATE() FROM dual;", "Nos muestra la fecha actual"}
        },
    },

    [5] = {
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