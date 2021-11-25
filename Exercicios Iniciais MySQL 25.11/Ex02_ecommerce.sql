create database db_ecommerce;

create table tb_produtos (
id bigint auto_increment,
nome varchar(200),
genero varchar(20),
categoria varchar(150),
preco decimal(5,2),
primary key (id)
);

insert into tb_produtos (nome,genero,categoria,preco) values ("vestido preto", "feminino", "vestido", 200.00);
insert into tb_produtos (nome,genero,categoria,preco) values ("blusa azul", "masculino", "camiseta", 198.80);
insert into tb_produtos (nome,genero,categoria,preco) values ("calça flary", "feminino", "calça", 88.00);
insert into tb_produtos (nome,genero,categoria,preco) values ("camisa social branca", "masculino", "social", 800.50);
insert into tb_produtos (nome,genero,categoria,preco) values ("calça jeans", "unissex", "calça", 300.00);
insert into tb_produtos (nome,genero,categoria,preco) values ("blusa geek guardiões galaxia", "unissex", "camiseta", 600.00);
insert into tb_produtos (nome,genero,categoria,preco) values ("vestido branco", "feminino", "vestido", 510.00);
insert into tb_produtos (nome,genero,categoria,preco) values ("colar", "feminino", "acessório", 35.00);

select * from tb_produtos;
select *from tb_produtos where preco < 500.00;
select *from tb_produtos where preco > 500.00;

drop table tb_produtos;

update tb_produtos set preco = 180.00 where id = 5;
update tb_produtos set preco = 180.00 where id = 7
