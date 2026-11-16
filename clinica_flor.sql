CREATE DATABASE db_clinica_flor;
USE db_clinica_flor;

CREATE TABLE tb_medico (
    CRM VARCHAR(10) PRIMARY KEY,
    nomeMED VARCHAR(100) NOT NULL
);

CREATE TABLE tb_paciente (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nomePAC VARCHAR(100) NOT NULL
);

CREATE TABLE tb_consulta (
    CRM VARCHAR(10) NOT NULL,
    ID INT NOT NULL,
    data_consulta DATE NOT NULL,
    hora_consulta TIME NOT NULL,
    PRIMARY KEY (CRM, ID, data_consulta, hora_consulta),
    FOREIGN KEY (CRM) REFERENCES tb_medico (CRM),
    FOREIGN KEY (ID) REFERENCES tb_paciente (ID)
);

INSERT INTO tb_medico (CRM, nomeMED) VALUES
    ('1011/PA', 'DIEGO'),
    ('1012/SP', 'DIOGO'),
    ('1013/DF', 'GABRIEL');

INSERT INTO tb_paciente (nomePAC) VALUES
    ('JOSYANE'),
    ('PEDRO'),
    ('ANA'),
    ('MARCOS'),
    ('RAFAEL');

INSERT INTO tb_consulta (CRM, ID, data_consulta, hora_consulta)
VALUES ('1011/PA', 3, '2026-10-01', '08:30:00');

SELECT nomeMED
FROM tb_medico
WHERE CRM = '1011/PA';

SELECT *
FROM tb_medico
WHERE nomeMED = 'DIEGO';

SELECT nomeMED
FROM tb_medico
WHERE CRM = '1013/DF';

SELECT nomeMED
FROM tb_medico
ORDER BY nomeMED ASC;

SELECT nomeMED
FROM tb_medico
WHERE CRM = '1012/SP';

SELECT nomeMED
FROM tb_medico
WHERE nomeMED LIKE 'D%';

SELECT nomeMED
FROM tb_medico
WHERE nomeMED LIKE '%O';

SELECT nomePAC
FROM tb_paciente;

SELECT *
FROM tb_paciente;

SELECT *
FROM tb_consulta;
