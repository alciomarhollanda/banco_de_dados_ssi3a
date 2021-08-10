
drop table estado, municipio; 

create table estado (
	idEstado int primary key auto_increment,
    nomeEstado varchar(50) not null
);

drop table municipio;

create table municipio(
	idMunicipio int primary key auto_increment,
    NomeMunicipio varchar(50) not null,
    fk_idEstado int,
    foreign key (fk_idEstado) references estado(idEstado)
);

insert into estado (NomeEstado) values ("São Paulo");
insert into estado (NomeEstado) values ("Rio de Janeiro");
insert into estado (NomeEstado) values ("Espirito Santo");


insert into municipio (NomeMunicipio, fk_idEstado) values ("Hortolândia",1);
insert into municipio (NomeMunicipio, fk_idEstado) values ("Sumaré",1);
insert into municipio (NomeMunicipio, fk_idEstado) values ("Campinas",1);
insert into municipio (NomeMunicipio, fk_idEstado) values ("Rio de Janeiro",2);
insert into municipio (NomeMunicipio, fk_idEstado) values ("Petrópolis",2);
insert into municipio (NomeMunicipio) values ("Ouro Preto");


select * from estado;
select * from municipio;


select 
m.idMunicipio, 
m.nomeMunicipio, 
m.fk_idEstado,
e.idEstado,
e.nomeEstado
from municipio as m 
inner join estado as e on e.idEstado = m.fk_idEstado;


select 
*
from municipio
inner join estado on idEstado = fk_idEstado;

select 
*
from municipio
join estado on idEstado = fk_idEstado;


select 
*
from municipio
left join estado on idEstado = fk_idEstado;


select 
*
from municipio
right join estado on idEstado = fk_idEstado;











