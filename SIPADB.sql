/*
Script de SQL para o Sistema IPA (SIPA)
Criação do Banco de Dados
Projeto Integrador 1 (PI1) - Grupo 2 
*/

SET DATESTYLE TO POSTGRES, DMY ;

--Criando tabela Aluno:
DROP TABLE IF EXISTS Aluno CASCADE;
CREATE TABLE IF NOT EXISTS Aluno (
        Id_aluno SERIAL PRIMARY KEY NOT NULL,
        Nome_alu VARCHAR(75) not null,
	    Genero_alu CHAR(1) not null CHECK(Genero_alu IN ('M', 'F')),
	    CPF_alu CHAR(14) unique not null,
	    Nome_rua_alu VARCHAR(90) not null,
	    Num_end_alu SMALLINT not null,
	    Email_alu VARCHAR(50) unique not null,
	    CEP_alu CHAR(9) not null,
	    UF_alu CHAR(2) not null,
	    Num_cel_alu INTEGER not null,
	    Data_nasc_alu DATE not null,
	    Profissao_alu VARCHAR(30),
	    Bairro_alu VARCHAR(50),
	    Cidade_alu VARCHAR(50)
);

--Populando Aluno
INSERT INTO Aluno (Nome_alu, Genero_alu, CPF_alu, Nome_rua_alu, Num_end_alu, Email_alu, CEP_alu, UF_alu, Num_cel_alu, Data_nasc_alu, Profissao_alu, Bairro_alu, Cidade_alu)
VALUES 
	('João da Silva', 'M', '527.261.588-38', 'Rua da Juta', 63, 'joap@gmail.com', '03010-010', 'SP', '987654321', '1990-01-01', 'Comerciante', 'Brás', 'São Paulo'),
	('Pedro Gomes', 'M', '798.177.650-32', 'Avenida Graciela Flores de Piteri', 580, 'pedro@hotmail.com', '06236-215', 'SP', '987654221', '1991-12-05', 'Diretor', 'Aliança', 'Osasco'),
	('João da Silva', 'M', '241.964.916-85', 'Praça Bacharel Fernando Braga Pereira da Rocha', 43, 'joao@gmail.com', '04417-090', 'SP', '910654321', '1990-01-01', 'Psicólogo', 'Jardim Miriam', 'São Paulo'),
	('Maria Souza', 'F', '686.917.583-76', 'Estrada da Lama Preta', 321, 'maria@gmail.com', '23577-900', 'RJ', '923456789', '1995-05-15', 'Diretora', 'Santa Cruz', 'Rio de Janeiro'),
	('Carlos Oliveira', 'M', '813.749.762-53', 'Beco da Amizade', 21, 'carlos@gmail.com', '31985-332', 'MG', '987154321', '1988-12-10', 'Pedagogo', 'Dom Silvério', 'Belo Horizonte'),
	('Ana Costa', 'F', '916.257.287-35', 'Rua Tapajós', 40, 'ana@hotmail.com', '87209-074', 'PR', '987321987', '1992-07-25', 'Psicóloga', 'Zona 03', 'Cianorte'),
	('Paulo Santos', 'M', '676.433.639-35', 'Rua Doutor Deoclécio Pereira', 7, 'paulo@outlook.com', '91040-470', 'RS', '321987654', '1998-03-18', 'Psicólogo', 'Jardim Floresta', 'Porto Alegre'),
	('Laura Mendes', 'F', '673.668.533-80', 'Rua Brasil Toschi', 2912, 'laura@gmail.com', '18706-490', 'SP', '987654321', '1993-09-20', 'Diretora', 'Alto da Colina II', 'Avaré'),
	('Ricardo Lima', 'M', '287.081.411-93', 'Largo Cambuci', 742, 'ricardinho@hotmail.com', '01523-010', 'SP', '912345678', '1987-06-12', 'Pedagogo', 'Cambuci', 'São Paulo'),
	('Fernanda Oliveira', 'F', '691.425.633-05', 'Rua Síria', 89, 'fernanda@outlook.com', '30150-020', 'MG', '987690321', '1991-04-05', 'Professora', 'Floresta', 'Belo Horizonte'),
	('Lucas Santos', 'M', '259.719.411-60', 'Rua Rodolpho Senff Júnior', 12, 'lucas@gmail.com', '81110-130', 'PR', '965432198', '1997-02-28', 'Psicólogo', 'Capão Raso', 'Curitiba'),
	('Juliana Silva', 'F', '386.218.721-70', 'Praça Província de São Pedro', 193, 'juliana@gmail.com', '91260-105', 'RS', '832198765', '1994-11-15', 'Psicóloga', 'Protásio Alves', 'Porto Alegre'),
	('Carolina Fernandes', 'F', '667.762.344-00', 'Rua Felipe Camarão', 969, 'carolina@yahoo.com', '27521-330', 'RJ', '923456789', '1992-07-25', 'Psicóloga', 'Liberdade', 'Resende'),
	('Gabriel Almeida', 'M', '835.497.616-51', 'Rua Tupaciguara', 18, 'gabriel@hotmail.com', '30330-310', 'MG', '987654021', '1996-05-03', 'Advogado', 'São Pedro', 'Belo Horizonte'),
	('Camila Rodrigues', 'F', '862.238.218-40', 'Rua Júlio Pasa', 923, 'camila@gmail.com', '81570-510', 'PR', '765432198', '1993-03-22', NULL, 'Uberaba', 'Curitiba'),
	('Marcelo Pereira', 'M', '164.433.466-61', 'Beco Nove', 150, 'marcelo@gmail.com', '90843-410', 'RS', '321987654', '1998-01-12', NULL, 'Nonoai', 'Porto Alegre'),
	('Isabela Costa', 'F', '248.282.389-72', 'Rua Conde Deu', 523, 'isabela@outlook.com', '04741-901', 'SP', '987654321', '1991-09-08', 'Professora', 'Santo Amaro', 'São Paulo'),
	('Rafaela Santos', 'F', '580.248.211-76', 'Avenida Murtas', 51, 'rafaela@gmail.com', '24913-465', 'RJ', '923456789', '1995-06-18', NULL, 'Itapeba', 'Maricá'),
	('Gustavo Oliveira', 'M', '166.642.218-53', 'Rua Luzia Maia de Azevedo', 77, 'gustavo@gmail.com', '04877-160', 'SP', '987654321', '1990-03-30', 'Professor', 'Cidade Luz', 'São Paulo'),
	('Carla Silva', 'F', '562.321.774-52', 'Rua Coronel João Cândido Muricy', 190, 'carla@gmail.com', '82130-040', 'PR', '765432198', '1994-02-12', 'Professora', 'Abranches', 'Curitiba'),
	('Vitor Rodrigues', 'M', '227.759.488-12', 'Avenida Moreira Guimarães', 4, 'vitor@gmail.com', '04074-030', 'SP', '832198765', '1999-11-25', 'Professor', 'Indianópolis', 'São Paulo'),
	('Leticia Santos', 'F', '179.889.502-15', 'Avenida José Pinheiro Borges', 2120, 'leticia@gmail.com', '08420-092', 'SP', '987610321', '1992-08-15', NULL, 'Jardim Helena', 'São Paulo'),
	('Rodrigo Lima', 'M', '610.578.372-88', 'Rua Clarindo Bispo de Oliveira', 84, 'rodrigo@gmail.com', '30666-110', 'MG', '987254321', '1996-05-03', 'Advogado', 'Conjunto Habitacional Vale do Jatobá (Barreiro)', 'Belo Horizonte'),
	('Mariana Fernandes', 'F', '822.116.735-54', 'Rua Anfilófio de Carvalho', 92, 'mariana@hotmail.com', '20030-060', 'RJ', '923456789', '1993-03-22', NULL, 'Centro', 'Rio de Janeiro'),
	('Rafael Santos', 'M', '674.087.358-52', 'Rua Ivo Stengler', 78, 'rafael@gmail.com', '85813-760', 'PR', '765432198', '1998-01-12', 'Coordenador', 'Canadá', 'Cascavel'),
	('Vanessa Pereira', 'F', '478.515.898-00', 'Rua Demóstenes', 81, 'vanea@gmail.com', '04614-013', 'SP', '832198765', '1995-09-28', 'Pedagoga', 'Campo Belo', 'São Paulo');
	

--Criando tabela Curso:
DROP TABLE IF EXISTS Curso CASCADE;
CREATE TABLE Curso (
	Cod_curso CHAR (5) PRIMARY KEY,
	Nome_curso VARCHAR(100) UNIQUE NOT NULL,
	Carg_horaria INTEGER NOT NULL
);

-- Populando tabela Curso
INSERT INTO Curso VALUES
	('AB','Agentes do Brincar', '170'),
	('JMB','Jovem Mediadores do brincar', '90'),
	('GB', 'Guardiões do brincar', '50'),
	('MB','Mediadores do brincar inclusivo','30');


-- Criando tabela oficina                                                             
DROP TABLE IF EXISTS oficina CASCADE;
CREATE TABLE oficina (
	Id_ofic serial PRIMARY KEY NOT NULL ,
	Nome_ofic char(30) NOT NULL,
	Descricao varchar(100)
);

-- Populando tabela oficina
INSERT INTO oficina (nome_ofic, descricao)
VALUES  ('Aula 1','Principios dos Agentes do Brincar: como proporcionar o brincar'),
	('Aula 2','Brincar para construção de uma cultura de paz: habilidades '),
	('Aula 3','Gerenciando riscos no brincar'),
	('Aula 4','Brincadeiras para todas as faixas'),
	('Aula 5','Inclusão de crianças com deficiência pelo brincar'),
	('Aula 6','Brincar e o imaginário infantil: contação de histórias'),
	('Aula 7','Brincar e dançar: a arte em movimento');	


-- Criando tabela Monitor:
DROP TABLE IF EXISTS Monitor CASCADE;
CREATE TABLE Monitor (
	Id_monitor serial primary key unique,
	Nome_moni VARCHAR(60) not null,
	CPF_moni VARCHAR(14) not null,
	Data_nasc_moni DATE not null,
	Email_moni VARCHAR(50) not null,
	CEP_moni CHAR(9) not null,
	Nome_rua_moni VARCHAR(70) not null,
	Num_end_moni SMALLINT not null
);

-- Populando tabela Monitor
INSERT INTO Monitor (Nome_moni, CPF_moni, Data_nasc_moni, Email_moni, CEP_moni, Nome_rua_moni, Num_end_moni) VALUES 
 ('Anderson', '428.376.386-02', '13-11-1995', 'anderson@gmail.com', '01509-001', 'Rua safira', 104),
 ('Aline', '574.265.894-09', '08-10-2000', 'aline@gmail.com', '01539221', 'Rua Barros Costa', 155);


-- Criando tebela turma
DROP TABLE IF EXISTS turma CASCADE;
CREATE TABLE turma (
	Cod_turm CHAR(7) PRIMARY KEY NOT NULL,
	Cod_curso_turm CHAR(5),
	Id_monitor_turm SMALLINT,
	FOREIGN KEY (Cod_curso_turm) REFERENCES Curso (Cod_curso) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (Id_monitor_turm) REFERENCES Monitor (Id_monitor) ON UPDATE CASCADE ON DELETE CASCADE
);



-- Populando turma        
INSERT INTO turma (Cod_curso_turm, Cod_turm, Id_monitor_turm) 
VALUES ('AB', 'AB-T01', 1),
       ('AB', 'AB-T02', 2),
       ('JMB', 'JMB-T01', 1),
       ('JMB', 'JMB-T02', 2),
       ('GB', 'GB-T01', 1),
       ('GB', 'GB-T04', 2),
       ('MB', 'MB-T01', 1),
       ('MB', 'MB-T04', 2);					


-- Criando tabela Oficinas_curso:
DROP TABLE IF EXISTS oficinas_curso CASCADE;
CREATE TABLE oficinas_curso (
	Num_aula SERIAL PRIMARY KEY,
	Cod_curso_ofic CHAR (5) not null,
	Cod_turma_ofic CHAR(7) not null,
	id_ofic serial not null ,
	hora_inicio time not null,
	hora_termino time not null,
	data_ofic date not null,
	
FOREIGN KEY (Cod_curso_ofic) REFERENCES Curso (Cod_curso) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (id_ofic) REFERENCES oficina (id_ofic) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Cod_turma_ofic) REFERENCES turma (Cod_turm) ON UPDATE CASCADE ON DELETE CASCADE
);

--Populando tabela oficinas_curso           
INSERT INTO oficinas_curso (cod_curso_ofic, id_ofic, Cod_turma_ofic, hora_inicio, hora_termino, data_ofic)
VALUES  ('AB', 1,  'AB-T01', '09:00:00', '17:00:00','2023-06-01'),
	('AB', 2,  'AB-T01', '10:00:00', '16:00:00','2023-06-02'),
	('JMB', 3, 'JMB-T01', '13:00:00', '17:00:00','2023-06-03'),
	('JMB', 4, 'JMB-T01', '14:00:00', '19:00:00','2023-06-04'),
	('GB', 5, 'GB-T01', '11:00:00', '18:00:00','2023-06-05'),
	('GB', 6, 'GB-T01', '13:00:00', '17:00:00','2023-06-06'),
	('MB', 1, 'MB-T01', '10:00:00', '13:00:00','2023-06-07'),
	('MB', 7, 'MB-T01', '13:00:00', '19:00:00','2023-06-08');

select * from oficinas_curso;

-- Criando tabela Matricula:
DROP TABLE IF EXISTS Matricula CASCADE;
CREATE TABLE Matricula (
	Num_matri INT GENERATED ALWAYS AS IDENTITY(
	START WITH 1 INCREMENT BY 1) PRIMARY KEY,
	Id_alu_mat INT not null,
	Cod_turma_mat CHAR(7) not null,
	Cod_curso_mat CHAR (5) not null,
	Id_monitor_mat SMALLINT not null,
	Situ_matri char(7) not null check(Situ_matri IN ('ATIVA', 'INATIVA')),
	Data_matri DATE not null,
	
FOREIGN KEY (Cod_turma_mat) REFERENCES turma (Cod_turm) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Id_alu_mat) REFERENCES Aluno (Id_aluno) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Cod_curso_mat) REFERENCES Curso (Cod_curso) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Id_monitor_mat) REFERENCES Monitor (Id_monitor) ON UPDATE CASCADE ON DELETE CASCADE);
	

--Populando tabela Matricula
INSERT INTO matricula (Id_alu_mat, Cod_curso_mat, Id_monitor_mat, Situ_matri, Data_matri, Cod_turma_mat)
VALUES 
	(1, 'AB', 2, 'ATIVA', '22-11-2022','AB-T01'),
	(2, 'AB', 1, 'ATIVA', '22-11-2022','AB-T01'),
	(3, 'AB', 1, 'ATIVA', '22-11-2022','AB-T01'),
	(4, 'AB', 1, 'ATIVA', '22-11-2022','AB-T01'),
	(5, 'AB', 1, 'ATIVA', '22-11-2022','AB-T01'),
	(6, 'AB', 2, 'ATIVA', '22-11-2022','AB-T01'),
	(7, 'AB', 2, 'INATIVA', '22-11-2022','AB-T01'),
	(8, 'AB', 2, 'ATIVA', '22-11-2022','AB-T01'),
	(9, 'AB', 1, 'ATIVA', '22-11-2022','AB-T01'),
	(10, 'AB', 2, 'ATIVA', '22-11-2022','AB-T01'),
	(11, 'AB', 1, 'ATIVA', '22-11-2022','AB-T01'),
	(12, 'AB', 1, 'ATIVA', '22-11-2022','AB-T01'),
	(13, 'AB', 1, 'ATIVA', '22-11-2022','AB-T01'),
	(14, 'JMB', 1, 'ATIVA', '22-11-2022', 'JMB-T01'),
	(15, 'JMB', 2, 'ATIVA', '22-11-2022', 'JMB-T01'),
	(16, 'JMB', 1, 'ATIVA', '22-11-2022', 'JMB-T01'),
	(17, 'JMB', 1, 'INATIVA', '22-11-2022', 'JMB-T01'),
	(18, 'JMB', 2, 'ATIVA', '22-11-2022', 'JMB-T01'),
	(19, 'JMB', 1, 'ATIVA', '22-11-2022', 'JMB-T01'),
	(20, 'JMB', 1, 'ATIVA', '22-11-2022', 'JMB-T01'),
	(21, 'JMB', 2, 'ATIVA', '22-11-2022', 'JMB-T01'),
	(22, 'JMB', 1, 'ATIVA', '22-11-2022', 'JMB-T01'),
	(23, 'JMB', 2, 'ATIVA', '22-11-2022', 'JMB-T01'),
	(24, 'JMB', 1, 'ATIVA', '22-11-2022', 'JMB-T01'),
	(25, 'JMB', 2, 'INATIVA', '22-11-2022', 'JMB-T01'),
	(26, 'JMB', 2, 'INATIVA', '22-11-2022', 'JMB-T01');


--Criando tabela atividade:
DROP TABLE IF EXISTS atividade CASCADE;
CREATE TABLE atividade (
	Num_atv INT PRIMARY KEY,
	Cod_curso_atv CHAR (5) not null,
	Nome_atv VARCHAR(20) not null,	
	
FOREIGN KEY(Cod_curso_atv) REFERENCES Curso(Cod_curso)
ON DELETE CASCADE ON UPDATE CASCADE);

--Populando tabela atividade:
INSERT INTO atividade (Cod_curso_atv, num_atv, nome_atv)
VALUES 
    ('AB', 111, 'Atividade AB 1'),
    ('AB', 112, 'Atividade AB 2'),
    ('AB', 113, 'Atividade AB 3'),
    ('GB', 211, 'Atividade GB 1'),
    ('GB', 212, 'Atividade GB 2'),
    ('GB', 213, 'Atividade GB 3'),
    ('MB', 311, 'Atividade MB 1'),
    ('MB', 312, 'Atividade MB 2'),
    ('MB', 313, 'Atividade MB 3'),
    ('JMB', 411, 'Atividade JMB 1'),
    ('JMB', 412, 'Atividade JMB 2'),
    ('JMB', 413, 'Atividade JMB 3');
	

--Criando tabela atividade_feita:
DROP TABLE IF EXISTS atividade_feita CASCADE;
CREATE TABLE atividade_feita (
	Cod_atvf SERIAL PRIMARY KEY,
	Id_alu_atvf INT not null,
	Cod_curso_atvf CHAR(5) not null,
	Num_atv INT not null,
	Cod_turm_atvf CHAR(7) not null,
	Entrega BOOLEAN not null,
	Nota_atv SMALLINT not null,
	
FOREIGN KEY (Id_alu_atvf) REFERENCES Aluno (Id_aluno) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Cod_turm_atvf) REFERENCES turma (Cod_turm) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Cod_curso_atvf) REFERENCES Curso (Cod_curso) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Num_atv) REFERENCES Atividade (Num_atv) ON UPDATE CASCADE ON DELETE CASCADE);

--Populando tabela atividade_feita
INSERT INTO atividade_feita (Id_alu_atvf, Cod_curso_atvf, Num_atv, Cod_turm_atvf, Entrega, Nota_atv)
VALUES
    (1, 'AB', 111, 'AB-T01', True, 100),
    (2, 'AB', 111, 'AB-T01', True, 90),
    (3,'AB', 111, 'AB-T01', True, 82),
    (4,'AB', 111, 'AB-T01', True, 40),
    (5,'AB', 111, 'AB-T01', false, 0),
    (6,'AB', 111, 'AB-T01', True, 65),
    (7,'AB', 111, 'AB-T01', True, 92),
    (8,'AB', 111, 'AB-T01', false, 0),
    (9,'AB', 111, 'AB-T01', True, 68),
    (10,'AB', 111, 'AB-T01', True, 98),
    (11,'AB', 111, 'AB-T01', false, 0),
    (12,'AB', 111, 'AB-T01', True, 96),
    (13,'AB', 111, 'AB-T01', True, 79),
	(14,'JMB', 411, 'JMB-T01', True, 100),
    (15,'JMB', 411, 'JMB-T01', True, 98),
    (16,'JMB', 411, 'JMB-T01', True, 88),
    (17,'JMB', 411, 'JMB-T01', True, 55),
    (18,'JMB', 411, 'JMB-T01', false, 0),
    (19,'JMB', 411, 'JMB-T01', True, 75),
    (20,'JMB', 411, 'JMB-T01', True, 79),
    (21,'JMB', 411, 'JMB-T01', True, 0),
    (22,'JMB', 411, 'JMB-T01', True, 68),
    (23,'JMB', 411, 'JMB-T01', True, 25),
    (24,'JMB', 411, 'JMB-T01', false, 0),
    (25,'JMB', 411, 'JMB-T01', True, 60),
    (26, 'JMB', 411, 'JMB-T01', True, 89);
	

--Criando tabela frequencia:
DROP TABLE IF EXISTS frequencia CASCADE;
CREATE TABLE frequencia (
	Cod_curso CHAR (5) not null,
	Id_ofic smallint not null,
	Num_turma CHAR(7) not null,
	Id_alu smallint not null,
	Id_monitor smallint not null,
	Situac_presenca boolean,
	
FOREIGN KEY (Id_ofic) REFERENCES Oficina(Id_ofic) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Id_alu) REFERENCES Aluno(Id_aluno) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Id_monitor) REFERENCES Monitor(Id_monitor) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Cod_curso) REFERENCES Curso(Cod_curso) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Num_turma) REFERENCES turma (Cod_turm) ON UPDATE CASCADE ON DELETE CASCADE);

-- Populando tabela frequencia
INSERT INTO Frequencia (Id_ofic, Id_alu, Id_monitor, Cod_Curso, Situac_presenca,Num_turma) 
VALUES 
	(1, 1, 1, 'AB', 'True','AB-T01'),
	(1, 2, 2, 'AB', 'True','AB-T01'),
	(1, 3, 1, 'AB', 'True','AB-T01'),
	(1, 4, 2, 'AB', 'False','AB-T01'),
	(1, 5, 2, 'AB', 'True','AB-T01'),
	(1, 6, 1, 'AB', 'True','AB-T01'),
	(1, 7, 2, 'AB', 'True','AB-T01'),
	(1, 8, 2, 'AB', 'True','AB-T01'), 
	(1, 9, 1, 'AB', 'False','AB-T01'),
	(1, 10, 1, 'AB', 'True','AB-T01'),
	(1, 11, 1, 'AB', 'False','AB-T01'), 
	(1, 12, 1, 'AB', 'False','AB-T01'),
	(1, 13, 1, 'AB', 'True','AB-T01'),
	(2, 1, 2, 'AB', 'True','AB-T01'),
	(2, 2, 2, 'AB', 'True','AB-T01'),
	(2, 3, 1, 'AB', 'True','AB-T01'),
	(2, 4, 2, 'AB', 'True','AB-T01'), 
	(2, 5, 2, 'AB', 'True','AB-T01'), 
	(2, 6, 1, 'AB', 'False','AB-T01'),
	(2, 7, 1, 'AB', 'True','AB-T01'),
	(2, 8, 1, 'AB', 'True','AB-T01'), 
	(2, 9, 1, 'AB', 'True','AB-T01'),
	(2, 10, 1, 'AB', 'True','AB-T01'),
	(2, 11, 1, 'AB', 'True','AB-T01'),
	(2, 12, 2, 'AB', 'True','AB-T01'),
	(2, 13, 1, 'AB', 'True','AB-T01');


/*DQL - SELECT PARA RESPOSTAS DOS REQUISITO */

/* 1 - Média de notas por curso */

SELECT c.nome_curso AS "Nome do Curso", ROUND(AVG(af.nota_atv), 2) AS "Média de Notas"
FROM atividade_feita af
JOIN matricula m ON af.id_alu_atvf = m.id_alu_mat
JOIN turma t ON af.cod_turm_atvf = t.cod_turm
JOIN curso c ON t.cod_curso_turm = c.cod_curso
GROUP BY c.nome_curso;
/* 2 - Consulta de frequência
 Quantidade de faltas dos alunos matriculados. */
select * from frequencia;
SELECT DISTINCT a.nome_alu AS Nome, a.id_aluno AS Id, t.cod_turm,
	(SELECT COUNT(f.id_alu)
	FROM frequencia f
	WHERE situac_presenca = false
	AND f.id_alu = a.id_aluno) AS Quantidade_de_faltas
FROM Aluno a
JOIN matricula m ON a.id_aluno = m.id_alu_mat
JOIN turma t ON m.cod_turma_mat = t.cod_turm
JOIN curso c ON t.cod_curso_turm = c.cod_curso
LEFT JOIN frequencia f ON m.id_alu_mat = f.id_alu
ORDER BY a.id_aluno;


/* 3 - Consulta de notas 
 Alunos das primeiras turmas que 
 tiraram uma nota menor que 60 nas atividades. */
select * from atividade_feita;
SELECT a.nome_alu as Nome, a.id_aluno AS ID,
aa.nome_atv as Atividade, af.Cod_turm_atvf AS Turma, 
af.nota_atv as Nota, af.entrega
FROM atividade_feita af
JOIN atividade aa ON af.num_atv = aa.num_atv
JOIN aluno a ON af.id_alu_atvf = a.id_aluno
JOIN matricula m ON af.id_alu_atvf = m.id_alu_mat
JOIN turma t ON af.cod_turm_atvf = t.cod_turm
JOIN curso c ON t.cod_curso_turm = c.cod_curso
WHERE af.cod_turm_atvf LIKE '%T01%'  
AND af.nota_atv < 60;


/* 4 - Consulta de notas 
 Consulte se há algum aluno do estado de SP que 
 participou da oficina 2: "Brincar para construção de uma cultura de paz: habilidades". */
select * from aluno; 
select * from oficinas_curso;
SELECT DISTINCT a.id_aluno AS ID, a.nome_alu AS Nome, a.UF_alu AS Estado, o.descricao AS Oficina, oc.data_ofic AS "Data da Oficina", fr.situac_presenca AS Presença
FROM aluno a
JOIN matricula m ON m.id_alu_mat = a.id_aluno
JOIN oficinas_curso oc ON m.cod_curso_mat = oc.cod_curso_ofic
JOIN oficina o ON oc.id_ofic = o.id_ofic
JOIN frequencia fr ON o.id_ofic = fr.id_ofic
WHERE a.UF_alu = 'SP' AND o.id_ofic = 2 AND fr.situac_presenca = true;

/* Informações de cadastro e matrícula de um aluno específico (ID=2) */

SELECT  a.id_aluno AS "ID do Aluno",a.nome_alu AS "Nome do Aluno", a.cpf_alu as CPF, a.email_alu as "email do Aluno", 
a.UF_alu as "UF do Aluno", a.num_cel_alu as "Celular do Aluno",
c.nome_curso AS "Curso Matriculado", m.data_matri as "Data da matrícula", m.situ_matri as "Situação matricula",
t.cod_turm as "Código da turma"
FROM aluno a
JOIN matricula m ON a.id_aluno = m.id_alu_mat
JOIN turma t ON m.cod_turma_mat = t.cod_turm
JOIN curso c ON t.cod_curso_turm = c.cod_curso
WHERE a.id_aluno = 2;
