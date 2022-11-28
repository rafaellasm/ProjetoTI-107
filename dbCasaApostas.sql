drop database dbCasaAposta;

create database dbCasaAposta;

use dbCasaAposta;

create table tbTimes(
codtime int not null auto_increment
nome varchar(100),
localidade varchar(100),
serie char(1),
primary key (codTime));

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(100),
email varchar (100),
cpf char(14) not null unique,
primary key(codUsu));

create table tbJogadores(
codJog int not null auto_increment
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key(codJog));


create table tbApostas(
codApt int not null auto_increment,
codtime int not null,
data date,
hora time,
valor decimal (9,2) default 0 check (valor > 0),
codusu int not null,
primary key (codApt),
foreing key (codTime) references tbTimes (codtime),
foreing key (codUsu) references tbUsuarios (codusu));


