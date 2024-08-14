--PARA REVISAR LA EXISTENCIA DE TABLAS
SELECT
    table_name
FROM
    information_schema.tables
WHERE
    table_schema = 'public';

--VERIFICA EXISTENCIA DE UNA TABLA
SELECT
    EXISTS (
        SELECT
            1
        FROM
            information_schema.tables
        WHERE
            table_schema = 'public'
            AND table_name = 'nombre_de_tu_tabla'
    );

--INFORMACION DETALLADA DE UNA TABLA
SELECT
    *
FROM
    information_schema.tables
WHERE
    table_schema = 'public'
    AND table_name = 'pnt_ticket';