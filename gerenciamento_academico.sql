CREATE DATABASE gerenciamento_academico;
USE gerenciamento_academico;

SHOW TABLES;
CREATE TABLE alunos(
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR (150) NOT NULL UNIQUE,
    idade INT NOT NULL 
);

CREATE TABLE cursos(
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR (100) NOT NULL,
    carga_horaria INT NOT NULL  
);

CREATE  TABLE matriculas(
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_curso INT NOT NULL,
    data_matricula DATE NOT NULL,
    CONSTRAINT fk_matriculas_alunos
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    CONSTRAINT fk_matriculas_cursos
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)   
);


INSERT INTO alunos (nome,email,idade) VALUES 
    ('João Silva','joao.silva@email.com',20),
    ('Maria Oliveira','maria.oliveira@email.com',22),
    ('Pedro Santos','pedro.santos@email.com',19),
    ('Ana Costa','ana.costa@email.com',24),
    ('Lucas Ferreira','lucas.ferreira@email.com',21);

SELECT nome,idade FROM alunos;


INSERT INTO cursos (nome_curso,carga_horaria) VALUES 
    ('Sistemas de Informação',3000),
    ('Engenharia de Software',2400),
    ('Banco de Dados',120);

SELECT * FROM cursos;




INSERT INTO matriculas (id_aluno,id_curso,data_matricula) VALUES
    (1,1,'2026-11-03'),
    (1,3,'2026-11-03'),
    (2,2,'2026-11-03'),
    (3,1,'2026-11-03'),
    (4,3,'2026-11-03'),
    (5,2,'2026-11-03');


SELECT * FROM matriculas;

