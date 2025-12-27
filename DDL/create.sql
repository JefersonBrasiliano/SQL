/*Criação de tabelas*/

create table empresa
(
cnpj char(100),
nome char(200),
);
--------------------------------------------------------------------

create table cliente
(
codigo int not null,
nome char(20) not null,
endereco char(30),
cidade char(15),
cep char(8),
uf char(2) default ‘SP’,
cnpj char(20),
ie char(20),
);

---------------------------------------------------------------------------
create table vendedor (
codigo int not null,
nome char(20) not null,
salario_fixo money not null,
faixa_comissao char(1) not null,
primary key(codigo),
);

---------------------------------------------------------------------------
create table aluno(
Ra_aluno int, 
nome char(200),
data_nascimento date,
rg char(11),
email char(150),
endereco char(150),
telefone char(11),
);

---------------------------------------------------------------------------
/*A chave primaria de uma tabela não pode aceitar valores nulos, como o comando acima já executado é possível alterar a tabela primeito definindo coluna Ra_aluno como não nula,
e depois definir ela como chave primaria.

Obs: Esse processo ocorrerá com sucesso caso não tenha registros de dados como null em Ra_aluno, caso contrário será necessário atualiza-los.*/

alter table aluno
alter column Ra_aluno int not null;

alter table aluno
add primary key (Ra_aluno);


--------------------------------------------
alter table aluno
ADD status char(20);


-------------------------------
/*Exlui a tabela*/
drop table aluno;
drop vendedor;

-------------------------------------------------------
