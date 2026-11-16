Clínica Flor MySQL

Projeto acadêmico de banco de dados para registrar médicos, pacientes e consultas em uma clínica.

Estrutura do banco de dados
Tabela | Finalidade 

`tb_medico` Armazena o CRM e o nome de cada médico.
`tb_paciente` Armazena o identificador e o nome de cada paciente.
`tb_consulta` Registra o médico, o paciente, a data e a hora de cada consulta.

As chaves estrangeiras garantem que cada consulta esteja vinculada a um médico e a um paciente cadastrados. A chave primária composta permite registrar mais de uma consulta entre o mesmo médico e paciente em datas ou horários diferentes.

Como executar

1. Conecte-se a um servidor MySQL pelo MySQL Workbench.
2. Abra o arquivo [`clinica_flor.sql`](clinica_flor.sql).
3. Execute o script completo para criar o banco, inserir os dados de exemplo e rodar as consultas.
4. Confira os resultados no painel inferior do Workbench.

Se o banco `db_clinica_flor` já existir, use outro nome nas instruções `CREATE DATABASE` e `USE` antes de executar.

Conceitos praticados

- Criação de tabelas e relacionamentos com chaves primárias e estrangeiras.
- Inserção de registros com `INSERT INTO`.
- Consultas com `SELECT`, filtros com `WHERE` e `LIKE` e ordenação com `ORDER BY`.
