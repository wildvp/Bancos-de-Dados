SPOOL C:\SCRIPTCRIACAO.LOG

CREATE TABLESPACE TSDATA01
DATAFILE 'C:\ORACLE\ORADATA\ORCL1\TSDATA0101.DBF' SIZE 200M
EXTENT MANAGEMENT LOCAL AUTOALLOCATE;
-- EXTENT MANAGEMENT LOCAL UNIFORM SIZE 1M;
-- EXTENT MANAGEMENT DICTIONARY;

CREATE TABLESPACE TSINDEX01
DATAFILE 'C:\ORACLE\ORADATA\ORCL1\TSINDEX0101.DBF' SIZE 200M
EXTENT MANAGEMENT LOCAL AUTOALLOCATE;
-- EXTENT MANAGEMENT LOCAL UNIFORM SIZE 1M;
-- EXTENT MANAGEMENT DICTIONARY;

CREATE TABLE CLIENTE
(CODCLIENTE		NUMBER(6),
 NOME			VARCHAR2(40),
 ENDERECO		VARCHAR2(80),
 TIPOCLIENTE		NUMBER(1))
TABLESPACE TSDATA01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE CLIENTE ADD
(CONSTRAINT PK_CLIENTE PRIMARY KEY
(CODCLIENTE)
USING INDEX TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0));

CREATE TABLE FISICO
(CODCLIENTE		NUMBER(6),
 CPF				NUMBER(11),
 IDENTIDADE		NUMBER(11))
TABLESPACE TSDATA01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE FISICO ADD
(CONSTRAINT PK_FISICO PRIMARY KEY
(CODCLIENTE)
USING INDEX TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0));

ALTER TABLE FISICO ADD
(CONSTRAINT FK_FISICO_CLIENTE FOREIGN KEY
(CODCLIENTE)
REFERENCES CLIENTE
(CODCLIENTE));

CREATE TABLE JURIDICO
(CODCLIENTE		NUMBER(6),
 CGC				NUMBER(14),
 INSCESTADUAL	NUMBER(8))
TABLESPACE TSDATA01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE JURIDICO ADD
(CONSTRAINT PK_JURIDICO PRIMARY KEY
(CODCLIENTE)
USING INDEX TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0));

ALTER TABLE JURIDICO ADD
(CONSTRAINT FK_JURIDICO_CLIENTE FOREIGN KEY
(CODCLIENTE)
REFERENCES CLIENTE
(CODCLIENTE));

CREATE TABLE VENDEDOR
(CODVENDEDOR	NUMBER(6),
 NOME			VARCHAR2(40),
 ENDERECO		VARCHAR2(80),
 TELEFONE		VARCHAR2(15),
 COMISSAO		NUMBER(5,2))
TABLESPACE TSDATA01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE VENDEDOR ADD
(CONSTRAINT PK_VENDEDOR PRIMARY KEY
(CODVENDEDOR)
USING INDEX TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0));

CREATE TABLE VENDA
(CODVENDA		NUMBER(9),
 DATAVENDA		DATE,
 DATAENTREGA	DATE,
 VALORTOTAL		NUMBER(10,2),
 CODCLIENTE		NUMBER(6),
 CODVENDEDOR	NUMBER(6))
TABLESPACE TSDATA01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE VENDA ADD
(CONSTRAINT PK_VENDA PRIMARY KEY
(CODVENDA)
USING INDEX TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0));

ALTER TABLE VENDA ADD
(CONSTRAINT FK_VENDA_CLIENTE FOREIGN KEY
(CODCLIENTE)
REFERENCES CLIENTE
(CODCLIENTE));

ALTER TABLE VENDA ADD
(CONSTRAINT FK_VENDA_VENDEDOR FOREIGN KEY
(CODVENDEDOR)
REFERENCES VENDEDOR
(CODVENDEDOR));

CREATE INDEX IX_VENDA_CLIENTE ON VENDA
(CODCLIENTE)
TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

CREATE INDEX IX_VENDA_VENDEDOR ON VENDA
(CODVENDEDOR)
TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

CREATE TABLE PRODUTO
(CODPRODUTO	NUMBER(6),
 DESCRICAO		VARCHAR2(30),
 NOME			VARCHAR2(80),
 ESTOQUEMIN		NUMBER(10),
 ESTOQUEMAX		NUMBER(10))
TABLESPACE TSDATA01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE PRODUTO ADD
(CONSTRAINT PK_PRODUTO PRIMARY KEY
(CODPRODUTO)
USING INDEX TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0));

CREATE TABLE ITEMVENDA
(CODVENDA		NUMBER(9),
 CODITEM			NUMBER(3),
 VALOR			NUMBER(9,2),
 QUANTIDADE		NUMBER(5),
 CODPRODUTO		NUMBER(6))
TABLESPACE TSDATA01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE ITEMVENDA ADD
(CONSTRAINT PK_ITEMVENDA PRIMARY KEY
(CODVENDA, CODITEM)
USING INDEX TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0));

ALTER TABLE ITEMVENDA ADD
(CONSTRAINT FK_ITEMVENDA_VENDA FOREIGN KEY
(CODVENDA)
REFERENCES VENDA
(CODVENDA));

ALTER TABLE ITEMVENDA ADD
(CONSTRAINT FK_ITEMVENDA_PRODUTO FOREIGN KEY
(CODPRODUTO)
REFERENCES PRODUTO
(CODPRODUTO));

CREATE INDEX IX_ITEMVENDA_PRODUTO ON ITEMVENDA
(CODPRODUTO)
TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

CREATE TABLE FORNECEDOR
(CODFORNECEDOR	NUMBER(6),
 NOME			VARCHAR2(40),
 CGC				NUMBER(14),
 CONTATO		VARCHAR2(40),
 TELEFONE		VARCHAR2(15))
TABLESPACE TSDATA01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE FORNECEDOR ADD
(CONSTRAINT PK_FORNECEDOR PRIMARY KEY
(CODFORNECEDOR)
USING INDEX TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0));

CREATE TABLE PRODUTOXFORNECEDOR
(CODFORNECEDOR	NUMBER(6),
 CODPRODUTO	NUMBER(6),
 ESTOQUE	NUMBER(15))
TABLESPACE TSDATA01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE PRODUTOXFORNECEDOR ADD
(CONSTRAINT PK_PRODUTOXFORNECEDOR PRIMARY KEY
(CODFORNECEDOR, CODPRODUTO)
USING INDEX TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0));

ALTER TABLE PRODUTOXFORNECEDOR ADD
(CONSTRAINT FK_PRODXFORN_FORNECEDOR FOREIGN KEY
(CODFORNECEDOR)
REFERENCES FORNECEDOR
(CODFORNECEDOR));

ALTER TABLE PRODUTOXFORNECEDOR ADD
(CONSTRAINT FK_PRODXFORN_PRODUTO FOREIGN KEY
(CODPRODUTO)
REFERENCES PRODUTO
(CODPRODUTO));

CREATE INDEX IX_PRODXFORN_PRODUTO ON PRODUTOXFORNECEDOR
(CODPRODUTO)
TABLESPACE TSINDEX01 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

SPOOL OFF;