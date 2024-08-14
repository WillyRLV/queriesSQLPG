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

--CREATE
--CREAR UNA SECUENCIA
CREATE SEQUENCE "pnt_responsable_responsableid_seq" INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

--CREATE INDEX
CREATE INDEX idx_nameIndex ON pnt_product ("column_name");

--CREATE TABLE
CREATE TABLE "public"."pnt_responsable" (
"responsableId" int4 NOT NULL DEFAULT nextval('pnt_responsable_responsableid_seq'::regclass),
"name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
);

--DROPPERS
--DROP FUNCTION
DROP FUNCTION fnc_name ();

--DROP TRIGGER
DROP TRIGGER trigger_name ON table_name;

--DROP INDEX
DROP INDEX idx_nameIndex;


--INSERT DATA

insert into pnt_responsable ( "name") values ('Zacharia Dumingo');
insert into pnt_responsable ( "name") values ('Jesse Rickardes');
insert into pnt_responsable ( "name") values ('Jakob Linnell');
insert into pnt_responsable ( "name") values ('Quintina Gordon');