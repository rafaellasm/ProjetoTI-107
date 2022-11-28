drop database dbCasaApostas;

create database dbCasaApostas;

use dbCasaApostas;



create table tbusuarios(
codusu int not null auto_increment,
nome varchar(100),
email varchar (100),
cpf char(14) not null unique,
primary key(codusu));



create table tbjogadores(
codjog int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key(codjog));

create table tbtimes(
codtime int not null auto_increment,
nome varchar(100),
localidade varchar(100),
serie char(1),
codjog int not null,
primary key (codtime),
foreign key (codjog) references tbjogadores(codjog));

create table tbapostas(
codapt int not null auto_increment,
codtime int not null,
data date,
hora time,
valor decimal (9,2) default 0 check (valor > 0),
codusu int not null,
primary key (codapt),
foreign key (codtime) references tbtimes (codtime),
foreign key (codusu) references tbusuarios (codusu));



--registros tabelas

insert into tbusuarios(nome,email,cpf)
	values ('Jõao Vitor','joão.vitor@gmail.com','741.225.963-25');

	insert into tbusuarios(nome,email,cpf)
	values ('Ana Julia','ana.julia@gmail.com','214.669.741-08');


insert into tbjogadores(nome,email,cpf)
	values ('Neymar Junior','neymar.junior@gmail.com','475.662.318-22');

	insert into tbjogadores(nome,email,cpf)
	values ('Lionel Messi','lionel.messi@gmail.com','741.886.780-14');


insert into tbtimes(nome,localidade,serie,codjog)
   values ('Santos FC','Santos - São Paulo','A',1);


   insert into tbtimes(nome,localidade,serie,codjog)
   values ('Corithians','São Paulo','A',2);

insert into tbapostas(codtime,data,hora,valor,codusu)
	values (1,'2022-11-08','11:14:00',10.00,1);

	insert into tbapostas(codtime,data,hora,valor,codusu)
	values (2,'2022-11-10','11:20:00',50.00,2);

	desc tbusuarios;
desc tbtimes;
desc tbjogadores;
desc tbapostas;



select * from tbtimes;
select * from tbjogadores;
select * from tbusuarios;
select * from tbapostas;