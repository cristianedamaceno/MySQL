create database db_game_online;

use db_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255),
habilidade varchar(150),
hp int,
habespecial varchar(255),
primary key (id)
);

insert into tb_classes(nome,habilidade,hp,habespecial) values ("Bruxa","demonologia",100,"servidão demoniaca"); -- 1 bruxa 
insert into tb_classes(nome,habilidade,hp,habespecial) values ("Guerreiro","fúria",500,"tornado de aço"); -- 2 guerreiro
insert into tb_classes(nome,habilidade,hp,habespecial) values ("Sacerdote","sombra",250,"entropia do caos"); -- 3 sacerdote
insert into tb_classes(nome,habilidade,hp,habespecial) values ("Monje","mestre cervejeira",800,"serenidade"); -- 4 monge
insert into tb_classes(nome,habilidade,hp,habespecial) values ("Mago","arcano",50,"orbe arcano"); -- 5 mago 

select * from tb_classes;

create table tb_personagem(
id bigint auto_increment,
nome varchar(100),
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagem(nome,nivel,ataque,defesa,classe_id) values ("Cassandra",120,1500, 1000,1);
insert into tb_personagem(nome,nivel,ataque,defesa,classe_id) values ("Kandish",100,5000,3000,2);
insert into tb_personagem(nome,nivel,ataque,defesa,classe_id) values ("Claask",80,2500,1000,4);
insert into tb_personagem(nome,nivel,ataque,defesa,classe_id) values ("Amapola",120,3000,5000,3);
insert into tb_personagem(nome,nivel,ataque,defesa,classe_id) values ("Bandur",50,5000,2500,2);
insert into tb_personagem(nome,nivel,ataque,defesa,classe_id) values ("Ladysky",90,4000,1000,5);
insert into tb_personagem(nome,nivel,ataque,defesa,classe_id) values ("Odyn",100,5200,2000,1);
insert into tb_personagem(nome,nivel,ataque,defesa,classe_id) values ("BelakSirc",120,3000,2500,4);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "c%";

select * from tb_personagem inner join tb_classes 
on tb_personagem.classe_id = tb_classes.id;

select *from tb_personagem inner join tb_classes 
on tb_personagem.classe_id = tb_classes.id
where tb_classes.id = 5;


