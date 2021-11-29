create database db_cursoDaMinhaVida;

use  db_cursoDaMinhaVida;

create table tb_categorias(
id bigint auto_increment,
formacao varchar (250),
descricao varchar (250),
classificacao varchar(250),
primary key (id)
);
insert into tb_categorias (formacao,descricao,codigo) value ("Tecnologia Web","Programação em Python do básico ao avançado","5 estrelas"); -- curso 01
insert into tb_categorias (formacao,descricao,codigo) value ("Tecnologia Front-end","Javascript do básico ao avançado","3 estrelas"); -- curso 02
insert into tb_categorias (formacao,descricao,codigo) value ("Data Science","Power Bi completo Basico ao Avançado","4 estrelas"); -- curso 03
insert into tb_categorias (formacao,descricao,codigo) value ("Tecnologia Web","Programando em Java - Basico ao Avançado","5 estrelas"); -- curso 04
insert into tb_categorias (formacao,descricao,codigo) value ("Tecnologia BackEnd","Curso MySQL básico ao Avançado","5 estrelas"); -- curso 05



create table tb_produtos(
id bigint auto_increment,
preco decimal (8,2),
descricao varchar (250),
cargahoraria varchar (250),
categoria_id bigint,
primary key(id),
foreign key (categoria_id)references tb_categorias(id)
);
insert into tb_produtos (preco,descricao,cargahoraria,categoria_id) value ("80.00","curso liguagem Python","40 horas",1);
insert into tb_produtos (preco,descricao,cargahoraria,categoria_id) value ("100.00","curso liguagem JavaScript","40 horas",2);
insert into tb_produtos (preco,descricao,cargahoraria,categoria_id) value ("200.00","curso Power Bi","40 horas",3);
insert into tb_produtos (preco,descricao,cargahoraria,categoria_id) value ("150.00","curso liguagem Java","40 horas",4);
insert into tb_produtos (preco,descricao,cargahoraria,categoria_id) value ("30.00","curso banco de dados MySQL","40 horas",5);
insert into tb_produtos (preco,descricao,cargahoraria,categoria_id) value ("40.00","curso liguagem Python","40 horas",1);
insert into tb_produtos (preco,descricao,cargahoraria,categoria_id) value ("50.00","curso liguagem JavaScript","40 horas",2);
insert into tb_produtos (preco,descricao,cargahoraria,categoria_id) value ("20.00","curso Power Bi","40 horas",3);

drop table tb_categorias;

select*from tb_produtos;



select*from tb_produtos where preco>50.00;



select*from tb_produtos where preco between 3.00 and 60.00;



select*from tb_produtos where descricao like "%j%";




select * from  tb_produtos inner join  tb_categorias 
on tb_categorias.id = tb_produtos.categoria_id;


select * from  tb_produtos inner join  tb_categorias 
on  tb_categorias.id = tb_produtos.categoria_id 

