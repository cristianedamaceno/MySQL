create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(250),
data_nascimento date,
turma int,
media decimal(4,2),
primary key (id)
);

insert into tb_alunos(nome, data_nascimento,turma,media) values ("Lara Santos", "1998-07-27", 1, 8.00);
insert into tb_alunos(nome, data_nascimento,turma,media) values ("Lucimara Todorov", "1990-04-6", 2, 9.00);
insert into tb_alunos(nome, data_nascimento,turma,media) values ("Mayara Carmozini", "1991-05-01", 2, 10.00);
insert into tb_alunos(nome, data_nascimento,turma,media) values ("Beatriz Carmozini", "1997-03-28", 1, 8.50);
insert into tb_alunos(nome, data_nascimento,turma,media) values ("Regina Gaioto", "1998-10-20", 3, 5.00);
insert into tb_alunos(nome, data_nascimento,turma,media) values ("Jose Carlos", "1998-03-08", 1, 6.00);
insert into tb_alunos(nome, data_nascimento,turma,media) values ("Kaleb Damaceno", "1995-06-01", 2, 10.00);
insert into tb_alunos(nome, data_nascimento,turma,media) values ("Cristiane Damaceno", "1997-03-28", 3, 9.00);


select * from tb_alunos;
select * from tb_alunos where media < 7.00;
select * from tb_alunos where media > 7.00;

update tb_alunos set media = 10.00 WHERE id = 6;
update tb_alunos set media = 10.00 WHERE id = 5;