# Amazon Interview: SQL Server

**Exercícios retirados do Stratascratch:**

No presente artigo, estão a resolução de dois exercícios retirados de uma entrevista para um cargo na Amazon.

O exercício disponibiliza duas tabelas: worker e title.

**Worker**:

![Captura de tela 2024-01-15 134746](https://github.com/giovanakinocita/sql-amazon-interview/assets/99563440/a956a147-edec-401f-82a7-80934194dff3)

**Title**:

![Captura de tela 2024-01-15 134800](https://github.com/giovanakinocita/sql-amazon-interview/assets/99563440/5d082a51-5df0-454a-959f-aad09b7edb47)

O primeiro exercício proposto era encontrar o cargo com maior salário e a saída deveria conter uma coluna com o seguinte título: worker_title.

![Captura de tela 2024-01-15 135018](https://github.com/giovanakinocita/sql-amazon-interview/assets/99563440/53649f59-1c7a-4ddb-80cd-60bfdd60bb31)

**Resolução**:

![Captura de tela 2024-01-15 141826](https://github.com/giovanakinocita/sql-amazon-interview/assets/99563440/bd4e4c35-ea86-4789-b032-75223eedac75)

Ambas tabelas foram ‘abreviadas’ com a letra ‘t’ para title e ‘w’ para work.

**INNER JOIN** foi utilizado para unir as duas tabelas através do ID do colaborador.

Um filtro foi aplicado utilizando **IN**, onde os maiores salários foram filtrados com o comando **MAX**.

O segundo exercício consistia em encontrar o número de trabalhadores que ingressaram em Abril ou depois de Abril, por departamento.

A saída deve conter duas colunas:

![Captura de tela 2024-01-15 135638](https://github.com/giovanakinocita/sql-amazon-interview/assets/99563440/c64e5ca2-0318-44e1-8432-c555206e4428)

Os registros devem ser ordenados por números de trabalhadores em ordem decrescente.

![Captura de tela 2024-01-15 141917](https://github.com/giovanakinocita/sql-amazon-interview/assets/99563440/e87e58e5-dbbb-49a4-a9f8-0502526f71d4)

O comando **COUNT** foi utilizado para contar o número de trabalhadores, onde o nome da coluna com o resultado foi nomeado como num_workers.

O **MONTH** foi utilizado para filtrar somente o mês da coluna joining_date da tabela worker.


* Medium: https://medium.com/@giovanakinocita/amazon-interview-sql-server-d11300bf13c3

