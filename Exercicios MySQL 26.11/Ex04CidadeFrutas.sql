create database db_cidade_das_frutas;


use db_cidade_das_frutas;

create table  tb_categorias(
 id bigint auto_increment,
 numero bigint,
produto varchar (250),
tipo varchar (250),
 primary key (id)
);


insert into tb_categorias (numero,produto,tipo) value (200,"Banana","Fruta"); -- banana fruta 1 
insert into tb_categorias (numero,produto,tipo) value (100,"Manga","Fruta"); -- manga fruta 2
insert into tb_categorias (numero,produto,tipo) value (210,"Alface","Verdura"); -- alface verdura 3 
insert into tb_categorias (numero,produto,tipo) value (230,"Kiwi","Fruta"); -- kiwi fruta 4
insert into tb_categorias (numero,produto,tipo) value (100,"Cenoura","Legumes"); -- cenoura legumes 5 

create table  tb_produtos(
 id bigint not null auto_increment,
 descricao varchar(255),
 quantidade bigint,
 preco decimal (8,2),
 categoria_id bigint,
 primary key (id),
 foreign key (categoria_id) references tb_categorias(id)
);

insert into  tb_produtos (descricao, quantidade, preco, categoria_id) values ("Banana da Terra ",10, 10.50,1);
insert into  tb_produtos (descricao, quantidade, preco, categoria_id) values ("Alface Americana ",2, 4.50,3);
insert into  tb_produtos (descricao, quantidade, preco, categoria_id) values ("Cenoura Amarela ",10, 8.50,5);
insert into  tb_produtos (descricao, quantidade, preco, categoria_id) values ("Manga Verde ",5, 5.50,2);
insert into  tb_produtos (descricao, quantidade, preco, categoria_id) values ("Kiwi Verde ",8, 50.00,4);
insert into  tb_produtos (descricao, quantidade, preco, categoria_id) values ("Banana da Terra ",10, 60.00,1);
insert into  tb_produtos (descricao, quantidade, preco, categoria_id) values ("Cenoura Roxa ",20, 80.00,5);
insert into  tb_produtos (descricao, quantidade, preco, categoria_id) values ("Manga Verde ",01, 3.00,2);

select * from tb_produtos;


select * from tb_categorias;


select * from tb_produtos where preco > 50;



select * from  tb_produtos where preco between 3 and 60;


select * from  tb_produtos where preco >= 3 and preco <= 60;

select * from  tb_produtos where descricao like "%C%";


select * from  tb_produtos inner join  tb_categorias 
on tb_categorias.id = tb_produtos.categoria_id;


select * from  tb_produtos inner join  tb_categorias 
on  tb_categorias.id = tb_produtos.categoria_id 
where tb_categorias.id = 1;
