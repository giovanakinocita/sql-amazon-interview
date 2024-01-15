/* CRIAÇÃO DA TABELA 'TITLE' */

CREATE TABLE [db_title] ([worker_ref_id] TINYINT,[worker_title] VARCHAR(20),[affected_from] VARCHAR(10));
INSERT INTO [db_title] ([worker_ref_id],[worker_title],[affected_from]) VALUES 
 ('1','Manager','2016-02-20'), 
 ('2','Executive','2016-06-11'), 
 ('8','Executive','2016-06-11'), 
 ('5','Manager','2016-06-11'), 
 ('4','Asst. Manager','2016-06-11'), 
 ('7','Executive','2016-06-11'), 
 ('6','Lead','2016-06-11'), 
 ('3','Lead','2016-06-11');


 /* CRIAÇÃO DA TABELA 'WORKER' */

CREATE TABLE [db_worker] ([worker_id] TINYINT,[first_name] VARCHAR(10),[last_name] VARCHAR(10),[salary] INT,[joining_date] VARCHAR(10),[department] VARCHAR(10));
INSERT INTO [db_worker] ([worker_id],[first_name],[last_name],[salary],[joining_date],[department]) VALUES 
 ('1','Monika','Arora','100000','2014-02-20','HR'), 
 ('2','Niharika','Verma','80000','2014-06-11','Admin'), 
 ('3','Vishal','Singhal','300000','2014-02-20','HR'), 
 ('4','Amitah','Singh','500000','2014-02-20','Admin'), 
 ('5','Vivek','Bhati','500000','2014-06-11','Admin'), 
 ('6','Vipul','Diwan','200000','2014-06-11','Account'), 
 ('7','Satish','Kumar','75000','2014-01-20','Account'), 
 ('8','Geetika','Chauhan','90000','2014-04-11','Admin'), 
 ('9','Agepi','Argon','90000','2015-04-10','Admin'), 
 ('10','Moe','Acharya','65000','2015-04-11','HR'), 
 ('11','Nayah','Laghari','75000','2014-03-20','Account'), 
 ('12','Jai','Patel','85000','2014-03-21','HR');


 /*ENCONTRAR O CARGO COM MAIOR SALÁRIO E A SAÍDA DEVE CONTER UMA COLUNA
 COM TÍTULO "worker_title" E DUAS LINHAS COM OS DOIS SALÁRIOS MAIS ALTOS.*/



SELECT t.worker_title
FROM db_worker w
JOIN db_title t ON t.worker_ref_id = w.worker_id
WHERE w.salary IN (SELECT MAX(salary) FROM db_worker)



/*ENCONTRAR O NÚMERO DE TRABALHADORES POR DEPARTAMENTO QUE INGRESSARAM
EM ABRIL OU DEPOIS DE ABRIL. A SAÍDA DEVE CONTER DUAS COLUNAS: "department" E "num_workers".
CLASSIFICAR OS REGISTROS COM BASE NO NÚMEROS DE TRABALHADORES EM ORDEM DESCRESCENTE*/

SELECT department, 
COUNT(worker_id) AS num_workers
FROM db_worker
WHERE MONTH(joining_date) >= 4
GROUP BY department
ORDER BY num_workers DESC


SELECT * FROM db_title
SELECT * FROM db_worker