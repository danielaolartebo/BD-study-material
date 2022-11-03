/** 1 **/

CREATE OR REPLACE PROCEDURE REGISTROS(PROGRAMA VARCHAR2, VALOR NUMBER, LIMITE_PAGO DATE)IS
  ESTUDIANTE FACTURAS.ESTUDIANTE%TYPE;   
  CANTIDAD NUMBER;
  
    CURSOR REGISTROS IS
       SELECT E.CODIGO
        FROM ESTUDIANTES E
        WHERE E.PROGRAMA = PROGRAMA;
        
BEGIN
    
    SELECT COUNT(*) INTO CANTIDAD FROM FACTURAS;    
    OPEN REGISTROS;
    LOOP
    FETCH REGISTROS INTO ESTUDIANTE;
        EXIT WHEN REGISTROS%NOTFOUND;
        CANTIDAD := CANTIDAD + 1;
        INSERT INTO FACTURAS VALUES(ESTUDIANTE,TO_CHAR(CANTIDAD,'fm00000'),CURRENT_DATE,LIMITE_PAGO,VALOR,VALOR*0.015,VALOR+VALOR*0.015,'N',null);        
    END LOOP;
    CLOSE REGISTROS;    
END;


/** 2 **/

CREATE OR REPLACE PROCEDURE DESCUENTO(COD_FACTURA IN VARCHAR2,DESCUENTO IN NUMBER)IS 
BEGIN
    UPDATE FACTURAS
    SET VALOR_TOTAL = VALOR_TOTAL - (VALOR_TOTAL*(DESCUENTO/100))
    WHERE NUMERO = COD_FACTURA;    
END;


/** 3 **/

CREATE OR REPLACE PROCEDURE INFO_FINANCIERA IS
    CANT_EXP NUMBER;    
    CANT_ANU NUMBER;
    CANT_PAGADAS NUMBER;
    CANT_MEDIO_PAGO1 NUMBER;
    CANT_MEDIO_PAGO2 NUMBER;

BEGIN

    SELECT COUNT(*) INTO CANT_EXP FROM FACTURAS;
    DBMS_OUTPUT.PUT_LINE('Cantidad facturas expedidas: '||CANT_EXP);
    
    SELECT COUNT(ANULADA) INTO CANT_ANU FROM FACTURAS WHERE ANULADA='Y';
    DBMS_OUTPUT.PUT_LINE('Cantidad facturas anuladas: '||CANT_ANU);
    
    SELECT COUNT(FACTURA) INTO CANT_PAGADAS FROM PAGOS WHERE FACTURA IN
        (SELECT P.FACTURA 
            FROM PAGOS P, FACTURAS F 
            WHERE P.FACTURA = F.NUMERO);
    DBMS_OUTPUT.PUT_LINE('Cantidad facturas pagadas: '||CANT_PAGADAS);
    
    SELECT COUNT(MEDIO_PAGO)INTO CANT_MEDIO_PAGO1 FROM PAGOS WHERE MEDIO_PAGO = 'EFECTIVO';
    DBMS_OUTPUT.PUT_LINE('Cantidad facturas pagadas en efectivo: '||CANT_MEDIO_PAGO1);
    
    SELECT COUNT(MEDIO_PAGO)INTO CANT_MEDIO_PAGO2 FROM PAGOS WHERE MEDIO_PAGO = 'T_CREDITO';
    DBMS_OUTPUT.PUT_LINE('Cantidad facturas pagadas con tarjeta de credito: '||CANT_MEDIO_PAGO2);    
END;


