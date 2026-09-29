#Criando um banco de dados
create database banco_ddl;

#Seleciona o banco de dados que será utilizado
use banco_ddl;

#Mostra os bancos de dados existentes
show databases;

#Criando uma tabela
create table produtos(
	id_produto int primary key auto_increment,
    nome varchar(100) not null,
    preco decimal(10,2),
    stock int
);

#Mostra  todas as tabelas do banco de dados
show tables;

#Verifica a estrutura da minha tabela
describe produtos;

#Adiciona uma coluna na tabela já criada
alter table produtos
add descricao varchar(200);

#Adiciona uma coluna na primeira posição
alter table produtos
add telefone varchar(50) not null
first;

#Adiciona uma coluna em uma posição expecifica
alter table produtos
add fabricante varchar(50)
after preco;

#