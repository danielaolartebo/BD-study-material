-- Generado por Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   en:        2022-09-26 18:21:35 COT
--   sitio:      Oracle Database 10g
--   tipo:      Oracle Database 10g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE ciudad (
    codigo_postal NUMBER(10) NOT NULL,
    nombre        VARCHAR2(20)
);

ALTER TABLE ciudad ADD CONSTRAINT ciudad_pk PRIMARY KEY ( codigo_postal );

CREATE TABLE cliente (
    nit      NUMBER NOT NULL,
    nombre   VARCHAR2(20),
    "e-mail" VARCHAR2(30),
    telefono NUMBER(12)
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( nit );

CREATE TABLE estado (
    id_estado NUMBER(10) NOT NULL,
    estado    VARCHAR2(10)
);

ALTER TABLE estado ADD CONSTRAINT estado_pk PRIMARY KEY ( id_estado );

CREATE TABLE factura (
    id               NUMBER(10) NOT NULL,
    estado           VARCHAR2(10),
    valor_total      NUMBER(10),
    fecha            DATE,
    tienda_codigo    NUMBER(10) NOT NULL,
    cliente_nit      NUMBER NOT NULL,
    estado_id_estado NUMBER(10) NOT NULL
);

ALTER TABLE factura ADD CONSTRAINT factura_pk PRIMARY KEY ( id );

CREATE TABLE producto (
    codigo               NUMBER(10) NOT NULL,
    nombre               VARCHAR2(20),
    precio_unitario      NUMBER(10),
    tipo_producto_codigo NUMBER(10) NOT NULL,
    iva                  NUMBER(10),
    cantidad             NUMBER(4),
    descuento            NUMBER
);

ALTER TABLE producto ADD CONSTRAINT producto_pk PRIMARY KEY ( codigo );

CREATE TABLE relation_18 (
    factura_id      NUMBER(10) NOT NULL,
    producto_codigo NUMBER(10) NOT NULL
);

ALTER TABLE relation_18 ADD CONSTRAINT relation_18_pk PRIMARY KEY ( factura_id,
                                                                    producto_codigo );

CREATE TABLE tienda (
    codigo               NUMBER(10) NOT NULL,
    nombre               VARCHAR2(20),
    ciudad               NUMBER(10),
    ciudad_codigo_postal NUMBER(10) NOT NULL,
    codigo_postal        NUMBER NOT NULL
);

ALTER TABLE tienda ADD CONSTRAINT tienda_pk PRIMARY KEY ( codigo );

CREATE TABLE tipo_producto (
    codigo NUMBER(10) NOT NULL,
    nombre VARCHAR2(20)
);

ALTER TABLE tipo_producto ADD CONSTRAINT tipo_producto_pk PRIMARY KEY ( codigo );

ALTER TABLE factura
    ADD CONSTRAINT factura_cliente_fk FOREIGN KEY ( cliente_nit )
        REFERENCES cliente ( nit );

ALTER TABLE factura
    ADD CONSTRAINT factura_estado_fk FOREIGN KEY ( estado_id_estado )
        REFERENCES estado ( id_estado );

ALTER TABLE factura
    ADD CONSTRAINT factura_tienda_fk FOREIGN KEY ( tienda_codigo )
        REFERENCES tienda ( codigo );

ALTER TABLE producto
    ADD CONSTRAINT producto_tipo_producto_fk FOREIGN KEY ( tipo_producto_codigo )
        REFERENCES tipo_producto ( codigo );

ALTER TABLE relation_18
    ADD CONSTRAINT relation_18_factura_fk FOREIGN KEY ( factura_id )
        REFERENCES factura ( id );

ALTER TABLE relation_18
    ADD CONSTRAINT relation_18_producto_fk FOREIGN KEY ( producto_codigo )
        REFERENCES producto ( codigo );

ALTER TABLE tienda
    ADD CONSTRAINT tienda_ciudad_fk FOREIGN KEY ( ciudad_codigo_postal )
        REFERENCES ciudad ( codigo_postal );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
