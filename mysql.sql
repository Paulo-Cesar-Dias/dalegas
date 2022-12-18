create database if not exists gerenciamentogas;
use gerenciamentogas;
#CRiando as tabelas
create table if not exists funcionarios(
	id int auto_increment not null primary key,
    nome varchar(200) not null,
    contato varchar(14) not null
);

create table if not exists caixa (
	id int auto_increment not null primary key, #código de transação
    dia date not null,
    hora varchar(7),
    movimentacaino_caixa int not null
);

create table if not exists clientes(
	id int auto_increment not null primary key,
    nome varchar(200) not null,
    cpf varchar(14) not null,
    telefone varchar(13) not null,
    endereco text not null
);

create table if not exists pedidos(
	id int not null auto_increment primary key,
	id_clientesfk int not null,
    id_funcionariosfk int not null,
    foreign key(id_clientesfk) references clientes(id),
	foreign key(id_funcionariosfk) references funcionarios(id)
);
