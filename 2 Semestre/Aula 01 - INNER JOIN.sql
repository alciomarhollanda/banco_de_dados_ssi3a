 CREATE TABLE Professor (
	CPF_professor INT PRIMARY KEY,
	nome_professor varchar(30) NOT NULL,
	idade_professor INT
);


CREATE TABLE Aluno(
	ID_aluno INT PRIMARY KEY AUTO_INCREMENT,
	nome_aluno VARCHAR(30) NOT NULL,
	nome_do_responsavel VARCHAR(30) NOT NULL,
	idade_aluno INT,
	FK_professor_CPF INT NOT NULL,
	FOREIGN KEY (FK_professor_CPF) REFERENCES Professor(CPF_professor)
);

CREATE TABLE Disciplina(
	ID_disciplina INT PRIMARY KEY AUTO_INCREMENT,
	nome_da_disciplina varchar(30) NOT NULL
);

CREATE TABLE ALUNO_X_DISCIPLINA(
	FK_aluno_ID_aluno INT NOT NULL,
	FK_disciplina_ID_disciplina INT NOT NULL,
	PRIMARY KEY(FK_aluno_ID_aluno,FK_disciplina_ID_disciplina),
	FOREIGN KEY (FK_aluno_ID_aluno) REFERENCES Aluno(ID_aluno),
	FOREIGN KEY (FK_disciplina_ID_disciplina) REFERENCES Disciplina(ID_disciplina)
);

INSERT into professor(CPF_professor, idade_professor, nome_professor) 
VALUES (123, 26, 'Ricardo'), (1234, 26, 'Mario');


insert into aluno (nome_aluno,nome_do_responsavel,idade_aluno,FK_professor_CPF) 
VALUES
("José","Maria",15,123),
("Pedro","João",14,123),
("João","André",15,1234);


INSERT INTO disciplina (nome_da_disciplina) 
VALUES 
('Programação'),
('Banco de Dados');


INSERT into ALUNO_X_DISCIPLINA (FK_aluno_ID_aluno,FK_disciplina_ID_disciplina)
VALUES
(1,1),
(1,2),
(2,1);


SELECT d.nome_da_disciplina, a.nome_aluno FROM aluno_x_disciplina as AD
INNER JOIN disciplina as d on d.ID_disciplina = AD.FK_disciplina_ID_disciplina
INNER JOIN aluno as a on a.ID_aluno = AD.FK_aluno_ID_aluno
;
    
    