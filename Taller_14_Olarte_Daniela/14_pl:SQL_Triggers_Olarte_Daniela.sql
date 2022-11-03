/** Construya un trigger el cual genera un error cuando se intenta crear un registro en la tabla Matriculas para un estudiante que tiene una factura sin paga**/
CREATE OR REPLACE TRIGGER FAIL_REGISTER BEFORE
    INSERT ON MATRICULAS FOR EACH ROW
DECLARE
    FACTURAS_SIN_PAGAR NUMBER;
BEGIN
    SELECT
        COUNT(*) INTO FACTURAS_SIN_PAGAR
    FROM
        FACTURAS F,
        PAGOS    P
    WHERE
        :NEW.ESTUDIANTE = F.ESTUDIANTE
        AND F.NUMERO != P.FACTURA;
    IF FACTURAS_SIN_PAGAR > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'El estudiante no tiene pagos realizados');
    END IF;
END FAIL_REGISTER;
/

/**La universidad ha decidido evitar los pagor parciales a las facturas de matricula. Construya un trigger el cual genere un error cuando se intenta registrar un pago cuyo valor es menor al de la matricula.**/

CREATE OR REPLACE TRIGGER FAIL_ON_PAYMENT BEFORE
    INSERT ON PAGOS FOR EACH ROW
DECLARE 
    VALORES_FACTURAS NUMBER;
BEGIN
    SELECT SUM(VALOR_TOTAL) INTO VALORES_FACTURAS FROM FACTURAS WHERE NUMERO = :NEW.FACTURA;
    IF (VALORES_FACTURAS > :NEW.VALOR) THEN
        RAISE_APPLICATION_ERROR(-20002, 'El pago no puede ser menor al valor de la factura');
    END IF;
END;
/

INSERT INTO PAGOS VALUES ('00004', 3, TO_DATE('2014/06/03', 'yyyy/mm/dd'), 7515000, 'EFECTIVO');