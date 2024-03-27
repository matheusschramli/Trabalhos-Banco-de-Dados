create database vendas;

use vendas;

create table dados_clientes (
	id_cliente int unsigned primary key,
    nome varchar (100) not null,
    endereco varchar (100) not null,
    email varchar (100) not null,
    celular int unsigned not null,
    data_nascimento date not null
);

create table produtos (
	id_produtos int unsigned primary key,
    nome varchar (100) not null,
    preco decimal (5,4) not null,
    descricao varchar (300) not null,
    quantidade_estoque tinyint unsigned not null
);

create table pedidos (
	id_pedidos int unsigned primary key,
    numero_pedidos int not null,
    data_compra date not null,
    total bigint unsigned not null,
    data_entrega date not null
);

create table lista_itens (
	id_pedidos int unsigned primary key,
    valor_unitario int unsigned not null,
    total bigint unsigned not null
);
