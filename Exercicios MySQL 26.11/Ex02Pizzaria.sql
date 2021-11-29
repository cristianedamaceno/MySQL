 create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_clientes(
id bigint auto_increment,
nome varchar(255),
endereco varchar(150),
formapg varchar(255),
primary key (id)
);

insert into tb_clientes(nome,endereco,formapg) values ("Cristiane","rua cuitelão 376","débito"); 
insert into tb_clientes(nome,endereco,formapg) values ("Katia","rua cuitelão 376","credito"); 
insert into tb_clientes(nome,endereco,formapg) values ("Regina","Avenida Central 386","dinheiro"); 
insert into tb_clientes(nome,endereco,formapg) values ("Mayara","Rua Santos 900","débito"); 
insert into tb_clientes(nome,endereco,formapg) values ("Beatriz","Rua Belverer 300","credito"); 

select * from tb_clientes;

drop table tb_clientes;

create table tb_pizza(
id bigint auto_increment,
nomepizza varchar(100),
tamanho varchar(100),
sabor varchar(255),
preco decimal not null,
cliente_id bigint,
primary key (id),
foreign key (cliente_id) references tb_clientes(id)
);

insert into tb_pizza(nomepizza,tamanho,sabor,preco,cliente_id) values ("Pepperone","Grande","Pepperone, queijo, catupiry", 38.00,1);
insert into tb_pizza(nomepizza,tamanho,sabor,preco,cliente_id) values ("Atum","Média","Atum,Cebola", 32.00, 5);
insert into tb_pizza(nomepizza,tamanho,sabor,preco,cliente_id) values ("Bauru","Grande","Presunto, tomate, mussarela", 34.00,2);
insert into tb_pizza(nomepizza,tamanho,sabor,preco,cliente_id) values ("Canadense","Grande","Lombo fatiado, cebola, catupiry",48.00,3);
insert into tb_pizza(nomepizza,tamanho,sabor,preco,cliente_id) values ("Camarão","Grande","Camarão, catupiry, parmesão", 70.00,5);
insert into tb_pizza(nomepizza,tamanho,sabor,preco,cliente_id) values ("Parma","Grande","Presunto Parma, catupiry, cebola", 60.00,4);
insert into tb_pizza(nomepizza,tamanho,sabor,preco,cliente_id) values ("Calabresa","Grande","Pepperone, queijo, catupiry",29.00,5);
insert into tb_pizza(nomepizza,tamanho,sabor,preco,cliente_id) values ("Frango","Grande","Frango,mussarela,bacon", 29.00,1);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nomepizza like "%c%";

select * from tb_pizza inner join tb_clientes
on tb_clientes.id = tb_pizza.cliente_id;


