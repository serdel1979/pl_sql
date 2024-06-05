SET SERVEROUTPUT ON;

-- Crea el procedimiento
CREATE OR REPLACE PROCEDURE saludo
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hola loco');
END saludo;

/
-- Ejecuta el bloque anónimo
BEGIN
    saludo;
END;

--este es otro modo para ejecutar el procedimiento
execute saludo;















