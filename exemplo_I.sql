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

#Alterar a coluna preco para ser obrigatória
alter table produtos
modify preco decimal(10,2) not null;

#Renomeia a coluna estoque para quantidade
alter table produtos rename column stock to quantidade;

#Remove coluna descrição da tabela
alter table produtos
drop descricao;

#Inserindo dados na tabela
insert into produtos(telefone, nome, preco, fabricante, quantidade)
values 
("(47) 2423-8742", "Controle GameSir G7 SE", 214.56, "GameSir", 35),
("(47) 2537-7574", "Headset Gamer Redragon Diomedes", 210.00, "Redragon", 40);

#Apaga todos os registros da tabela
truncate table produtos;

#Apaga a tabela produtos (estrutura + dados)
drop table produtos;

#Apaga o banco de dados
drop database banco_ddl;
