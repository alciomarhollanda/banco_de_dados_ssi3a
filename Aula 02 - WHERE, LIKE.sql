/* create table pessoa (
	idPessoa int PRIMARY key AUTO_INCREMENT,
    nomePessoa varchar(200) not null,
    idade int not null
);

insert into pessoa (nomePessoa, idade) values ("José",18);
insert into pessoa (nomePessoa, idade) values ("Maria",15);
insert into pessoa (nomePessoa, idade) values ("Higor Bueno",22);
insert into pessoa (nomePessoa, idade) values ("Eron",18);
insert into pessoa (nomePessoa, idade) values ("Alciomar",55);
insert into pessoa (nomePessoa, idade) values ("Guerra",47);


select * from pessoa WHERE idade < 18;
select * from pessoa WHERE idade >= 30;


select * from pessoa WHERE nomePessoa = "maria";

select * from pessoa WHERE nomePessoa like "a%";
select * from pessoa WHERE nomePessoa like "%a";
select * from pessoa WHERE nomePessoa like "%a%";

select * from pessoa WHERE nomePessoa like "%rr%";

select * from pessoa WHERE nomePessoa like "%rr%";
*/


select * from pessoa;