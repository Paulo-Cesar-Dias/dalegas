use gerenciamentogas;
#Adicionando dados nas tabelas
insert into funcionarios (nome, contato) 
values ('Funcionário 1', '(84)99385-4643'),
('Funcionário 2', '(84)99324-6784'),
('Funcionário 3', '(84)99675-9202'),
('Funcionário 4', '(84)99126-7243');
insert into clientes (nome,cpf,telefone,endereco)
values ('Cliente 1','543.435.324-23','(84)9956-4546','Nome da Rua'),
('Cliente 2', '987.235.617-72', '(84)9934-6723','Nome de Avenida'),
('Cliente 3', '124.631.840-12', '(84)9932-4611', 'Nome de Rua2');

insert into pedidos (id_clientesfk, id_funcionariosfk)
values(1,1),
(3,4),
(1,3),
(2,4),
(3,3);

select * from pedidos;