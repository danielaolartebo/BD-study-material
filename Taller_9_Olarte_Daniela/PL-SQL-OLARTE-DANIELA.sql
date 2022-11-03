DROP FUNCTION GET_NAME;
DROP FUNCTION GET_NUM_COURSES_P;
DROP FUNCTION GET_NUM_COURSES_E;
DROP FUNCTION GET_BALANCE;

/** 1. Dado la cédula de un profesor retorne el nombre completo de este. **/

CREATE OR REPLACE FUNCTION OBTENER_NOMBRE (CEDULA_P VARCHAR2) 
    RETURN VARCHAR
IS 
    NOMBRE_PROFESOR VARCHAR2(30);
BEGIN

    SELECT P.NOMBRE INTO NOMBRE_PROFESOR
    FROM PROFESORES P
    WHERE P.CEDULA = CEDULA_P;
   
    RETURN NOMBRE_PROFESOR;

END OBTENER_NOMBRE;

SELECT OBTENER_NOMBRE('287321212') FROM DUAL;

/** 2. Dada la cédula de un profesor retorne la cantidad de cursos que tiene. **/

CREATE OR REPLACE FUNCTION OBTENER_CANTIDAD_CURSOS_P (CEDULA_P VARCHAR2) 
    RETURN NUMBER
IS 
    NUMERO_CURSOS NUMBER;
BEGIN

    SELECT COUNT(C.PROFESOR) INTO NUMERO_CURSOS
    FROM CURSOS C
    WHERE C.PROFESOR = CEDULA_P;
    
    RETURN NUMERO_CURSOS;

END OBTENER_CANTIDAD_CURSOS_P;

SELECT OBTENER_CANTIDAD_CURSOS_P('011564812') FROM DUAL;


/** 3. Dado el código de un estudiante retorne cuantos cursos tiene matriculados. **/

CREATE OR REPLACE FUNCTION OBTENER_CANTIDAD_CURSOS_E (CODIGO_E VARCHAR2) 
    RETURN NUMBER
IS 
    NUMERO_CURSOS NUMBER;
BEGIN

    SELECT COUNT(M.ESTUDIANTE) INTO NUMERO_CURSOS
    FROM MATRICULAS M
    WHERE M.ESTUDIANTE = CODIGO_E;
    
    RETURN NUMERO_CURSOS;

END OBTENER_CANTIDAD_CURSOS_E;

SELECT OBTENER_CANTIDAD_CURSOS_E('552455318') FROM DUAL;

/** 4. Dado el número de la factura calcule el saldo de dicha factura. El saldo es igual al valor facturado menos el valor pagado. **/

CREATE OR REPLACE FUNCTION OBTENER_SALDO (NUMERO_FACTURA VARCHAR2) RETURN NUMBER
IS 
    SALDO NUMBER;
    VALOR_FACTURADO NUMBER;
    VALOR_PAGADO NUMBER;
    
BEGIN

    SELECT F.VALOR_TOTAL INTO VALOR_FACTURADO
    FROM FACTURAS F
    WHERE F.NUMERO = NUMERO_FACTURA;
    
    SELECT SUM(P.VALOR) INTO VALOR_PAGADO
    FROM PAGOS P
    WHERE P.FACTURA = NUMERO_FACTURA;
    
    SALDO := VALOR_FACTURADO - VALOR_PAGADO;
    
    RETURN SALDO;

END OBTENER_SALDO;

SELECT OBTENER_SALDO('00005') FROM DUAL;