--VERIFICA EL ENTORNO Y VERIFICA EXISTENCIA
DO $$
BEGIN

IF current_database() IN ('teste', 'qa') THEN 
        -- Verifica si la secuencia existe y créala si no existe
        IF to_regclass('pnt_responsable_responsableid_seq') IS NULL THEN
        CREATE SEQUENCE pnt_responsable_responsableid_seq; 
        END IF;


 
        IF to_regclass('pnt_responsible') IS NULL THEN -- Verifica si la tabla no existe
        CREATE TABLE "public"."pnt_responsable" (
				"responsibleId" int4 NOT NULL DEFAULT nextval('pnt_responsable_responsableid_seq'::regclass),
				"name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
						);

        END IF;
    	
END IF;

END $$;
