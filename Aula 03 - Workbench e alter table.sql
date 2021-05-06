create table aluno(
	idAluno int primary key auto_increment,
    nomeAluno varchar(50)
);

alter table aluno add idadeAluno int;

alter table aluno drop column idadeAluno;

alter table aluno modify column nomeAluno varchar(80) not null;

alter table aluno change column nomeAluno nome_aluno varchar(30);


drop table aluno;

create table professor (
	cpf int primary key,
    nomeProfessor varchar(50),
    idade int
);

create table aluno (
	idAluno int primary key auto_increment,
    nomeAluno varchar(50) not null,
    idade int not null
);

create table aluno (
	idAluno int primary key auto_increment,
    nomeAluno varchar(50) not null,
    idade int not null,
    fk_professor_cpf int,
    foreign key(fk_professor_cpf) references professor(cpf)
);



alter table aluno add fk_professor_cpf int;

alter table aluno 
add foreign key(fk_professor_cpf) references professor(cpf);





