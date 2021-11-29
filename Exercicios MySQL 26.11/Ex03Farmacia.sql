
create database db_farmacia_do_bem;


use db_farmacia_do_bem;


create table  tb_categorias(
 id bigint auto_increment,
 nome varchar(250) not null,
 ativa boolean,
 primary key (id)
);


insert into tb_categorias (nome, ativa) values  ("Medicamentos", true);
insert into tb_categorias (nome, ativa) values ("Medicamentos controlados", true);
insert into tb_categorias (nome, ativa) values ("Higiene", true);
insert into tb_categorias (nome, ativa) values ("Beleza", true);
insert into tb_categorias (nome, ativa) values ("Suplemento", true);


create table  tb_produtos(
 id bigint not null auto_increment,
 nome varchar(100) not null,
 descricao varchar(255),
 quantidade bigint,
 preco decimal not null,
 categoria_id bigint,
 primary key (id),
 foreign key (categoria_id) references tb_categorias(id)
);
insert into  tb_produtos (nome, descricao, quantidade, preco, categoria_id) values ("Buscopan", "reduz cólicas", 140, 20, 1);
insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) values ("Paroxetina", "antidepressivo", 122, 50, 2);
insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) values ("Desodorante Dove", "banho", 190, 15, 3);
insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) values ("Esmalte Impala", "esmalte", 144, 5, 4);
insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) values ("Centrum", "vitamina", 111, 150, 5);
insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) values ("Dorflex", "relaxante muscular", 100, 20, 1);
insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) values ("Topiramato", "estabiliza humor", 177, 60, 2);
insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) values ("Shampoo Pantene", "cabelos", 124, 20, 3);


select * from tb_produtos;


select * from tb_categorias;


select * from tb_produtos where preco > 50;



select * from  tb_produtos where preco between 3 and 60;


select * from  tb_produtos where preco >= 3 and preco <= 60;


select * from  tb_produtos where nome like "%B%";


select * from  tb_produtos inner join  tb_categorias 
on tb_categorias.id = tb_produtos.categoria_id;


select * from  tb_produtos inner join  tb_categorias 
on  tb_categorias.id = tb_produtos.categoria_id 
where tb_categorias.id = 1;