-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. -- 
create database db_rh;
-- seleção do banco de dados para uso -- 
use db_rh;

-- tabela para o banco de dados -- 
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
salario decimal(6,2),
funcao varchar(100),
cargahoraria int,
primary key (id)
);
insert into tb_funcionarios(nome,idade,salario,funcao,cargahoraria) values ("Cristiane",24,3000.00,"Desenvolvedora",240);
insert into tb_funcionarios(nome,idade,salario,funcao,cargahoraria) values ("Kaleb",26,4500.00,"Desenvolvedor",220);
insert into tb_funcionarios(nome,idade,salario,funcao,cargahoraria) values ("Thais",22,2500.00,"Gerente de Projetos",200);
insert into tb_funcionarios(nome,idade,salario,funcao,cargahoraria) values ("Carina",21,3500.00,"Mestre de Cozinha",250);
insert into tb_funcionarios(nome,idade,salario,funcao,cargahoraria) values ("Katia",56,1000.00,"Assistente Social",250);


-- visualiza todos os dados --

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

drop table tb_funcionarios;

update tb_funcionarios set salario = 5000.00 where id = 5;


