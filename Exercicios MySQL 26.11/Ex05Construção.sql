create database db_contruindo_vidas;

use db_contruindo_vidas;

create table  tb_categorias(
 id bigint auto_increment,
 ferramentas varchar (250),
materiais varchar (250),
tintas varchar (250),
 primary key (id)
);

insert into tb_categorias (ferramentas,materiais,tintas) value ("Alicate","Cimento","Branca"); -- item 01 
insert into tb_categorias (ferramentas,materiais,tintas) value ("Espatula,martelo","Massa corrida,Tijolo","Azul"); -- item 02 
insert into tb_categorias (ferramentas,materiais,tintas) value ("Chave Philips","Bloco,areia","amarela"); -- item 03 
insert into tb_categorias (ferramentas,materiais,tintas) value ("Rolo de Pintura","Conexões ","Verde"); -- item 04 
insert into tb_categorias (ferramentas,materiais,tintas) value ("Pincel","Mangueira,","Tinta Acrilica rosa"); -- item 05


create table  tb_produtos(
 id bigint not null auto_increment,
 codigo varchar(255),
 quantidade bigint,
 preco decimal (8,2),
 categoria_id bigint,
 primary key (id),
 foreign key (categoria_id) references tb_categorias(id)
);

insert into  tb_produtos (codigo, quantidade, preco, categoria_id) values ("IBH1021 ",10, 69.70,1);
insert into  tb_produtos (codigo, quantidade, preco, categoria_id) values ("ICH1410 ",20, 48.50,2);
insert into  tb_produtos (codigo, quantidade, preco, categoria_id) values ("IYH2803 ",30, 30.00,3);
insert into  tb_produtos (codigo, quantidade, preco, categoria_id) values ("IBH3549 ",40, 100.00,4);
insert into  tb_produtos (codigo, quantidade, preco, categoria_id) values ("IBH0106 ",50, 30.00,5);
insert into  tb_produtos (codigo, quantidade, preco, categoria_id) values ("IBH9874 ",3, 3.00,1);
insert into  tb_produtos (codigo, quantidade, preco, categoria_id) values ("IBH2010 ",13, 89.90,2);
insert into  tb_produtos (codigo, quantidade, preco, categoria_id) values ("IBH3040 ",20, 10.00,3);


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