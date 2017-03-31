CREATE TABLE DEPARTAMENTO(
	NUMDEPT		NUMBER(4)	NOT NULL,
	NOMEDEPT	VARCHAR2(50)	NOT NULL,
	LOCALIZACAO	VARCHAR2(50),
	CONSTRAINT PKDEPARTAMENTONUMDEPT	PRIMARY KEY (NUMDEPT));

CREATE TABLE EMPREGADO(
	NUMEMP 		NUMBER(5)	NOT NULL,
	NUMDEPT		NUMBER(4)	NOT NULL,
	NOME		VARCHAR2(50)	NOT NULL,
	CARGO		VARCHAR2(30)	NOT NULL,
	DTNASC		DATE		NOT NULL,
	SALARIO		NUMBER(7,2)	NOT NULL,
	GERENTE		NUMBER(5),	
	COMISSAO	NUMBER(7,2),
	CONSTRAINT PKEMPREGADONUMEMP 	PRIMARY KEY (NUMEMP),
	CONSTRAINT FKEMPREGADONUMDEPT	FOREIGN KEY (NUMDEPT) REFERENCES DEPARTAMENTO(NUMDEPT));

CREATE INDEX IDXEMPREGADONUMDEPT ON EMPREGADO(NUMDEPT);

CREATE TABLE GERENTE(
	CODGER 			NUMBER(5)	NOT NULL,
	NOMEGER			VARCHAR2(50)	NOT NULL,
	SALARIOGER		NUMBER(7,2)	NOT NULL,
	CONSTRAINT PKGERENTECODGER 	PRIMARY KEY (CODGER));

CREATE TABLE FAIXASALARIAL(
	CODFAIXA	NUMBER(3)	NOT NULL,
	MENORSALARIO	NUMBER(7,2)	NOT NULL,
	MAIORSALARIO	NUMBER(7,2)	NOT NULL,
	CONSTRAINT PKFAIXASALARIALCODFAIXA	PRIMARY KEY (CODFAIXA));

INSERT INTO DEPARTAMENTO (NUMDEPT, NOMEDEPT, LOCALIZACAO) VALUES (1, 'PRESIDENCIA-FINANCEIRO', 'JUIZ DE FORA');
INSERT INTO DEPARTAMENTO (NUMDEPT, NOMEDEPT, LOCALIZACAO) VALUES (2, 'PESQUISA', 'BELO HORIZONTE');
INSERT INTO DEPARTAMENTO (NUMDEPT, NOMEDEPT, LOCALIZACAO) VALUES (3, 'VENDAS', 'RIO DE JANEIRO');
INSERT INTO DEPARTAMENTO (NUMDEPT, NOMEDEPT, LOCALIZACAO) VALUES (4, 'LOGISTICA', 'SAO PAULO');

INSERT INTO FAIXASALARIAL (CODFAIXA, MENORSALARIO, MAIORSALARIO) VALUES (1, 700, 1200);
INSERT INTO FAIXASALARIAL (CODFAIXA, MENORSALARIO, MAIORSALARIO) VALUES (2, 1201, 1400);
INSERT INTO FAIXASALARIAL (CODFAIXA, MENORSALARIO, MAIORSALARIO) VALUES (3, 1401, 1400);
INSERT INTO FAIXASALARIAL (CODFAIXA, MENORSALARIO, MAIORSALARIO) VALUES (4, 2001, 3000);
INSERT INTO FAIXASALARIAL (CODFAIXA, MENORSALARIO, MAIORSALARIO) VALUES (5, 3001, 9999);

INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (1, 1, 'MARIA', 'PRESIDENTE', TO_DATE('17/11/1975','DD/MM/YYYY'), 5000, NULL, NULL);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (2, 1, 'JOAQUIM', 'GERENTE', TO_DATE('09/06/1980','DD/MM/YYYY'), 2450, 1, NULL);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (3, 2, 'JOAO', 'GERENTE', TO_DATE('02/04/1960','DD/MM/YYYY'), 2975, 1, NULL);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (4, 3, 'PEDRO PAULO', 'GERENTE', TO_DATE('01/05/1980','DD/MM/YYYY'), 2850, 1, NULL);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (5, 4, 'FERNANDO', 'GERENTE', TO_DATE('01/01/1978','DD/MM/YYYY'), 3050, 1, NULL);

INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (6, 1, 'PAULO', 'ECONOMISTA', TO_DATE('05/05/1981','DD/MM/YYYY'), 1450, 2, NULL);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (7, 1, 'MARGARIDA', 'CONTADOR', TO_DATE('20/02/1969','DD/MM/YYYY'), 1550, 2, NULL);

INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (8, 2, 'JOSE', 'OPERADOR TELEMARKETING', TO_DATE('06/08/1985','DD/MM/YYYY'), 1450, 3, NULL);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (9, 2, 'MARINA', 'OPERADOR TELEMARKETING', TO_DATE('21/02/1982','DD/MM/YYYY'), 1550, 3, NULL);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (10, 2, 'TADEU', 'OPERADOR TELEMARKETING', TO_DATE('09/08/1982','DD/MM/YYYY'), 1350, 3, NULL);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (11, 2, 'ROSA', 'TRAINEE', TO_DATE('07/12/1981','DD/MM/YYYY'), 620, 3, NULL);

INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (12, 3, 'SEBASTIAO', 'VENDEDOR', TO_DATE('28/09/1980','DD/MM/YYYY'), 1250, 4, 1400);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (13, 3, 'MARCELO', 'VENDEDOR', TO_DATE('20/02/1980','DD/MM/YYYY'), 1600, 4, 300);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (14, 3, 'RITA', 'VENDEDOR', TO_DATE('08/09/1974','DD/MM/YYYY'), 1500, 4, 0);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (15, 3, 'VERA', 'TRAINEE', TO_DATE('03/12/1980','DD/MM/YYYY'), 950, 4, 100);

INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (16, 4, 'REGINA', 'GESTOR DE FROTA', TO_DATE('28/09/1981','DD/MM/YYYY'), 2000, 5, NULL);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (17, 4, 'MARCELO', 'GESTOR DE FROTA', TO_DATE('20/03/1982','DD/MM/YYYY'), 2050, 5, NULL);
INSERT INTO EMPREGADO (NUMEMP, NUMDEPT, NOME, CARGO, DTNASC, SALARIO, GERENTE, COMISSAO) VALUES (18, 4, 'MARCOS', 'TRAINEE', TO_DATE('03/12/1986','DD/MM/YYYY'), 990, 5, NULL);

COMMIT;


