DO
$$
DECLARE
    rec record;
BEGIN
    FOR rec IN 
        SELECT table_schema, table_name FROM information_schema.tables where table_schema='Hourly'
    LOOP
		    EXECUTE format('DELETE FROM %I.%I WHERE "Result Time" <now()::date- 15',rec.table_schema,rec.table_name);

    END LOOP;
END;
$$
LANGUAGE plpgsql;