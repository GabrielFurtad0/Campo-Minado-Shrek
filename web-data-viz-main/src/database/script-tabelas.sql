drop database shrek;

create database shrek;

use shrek;

create table jogador(
id int primary key auto_increment,
login varchar(50),
senha varchar(20)
);

create table pontuacao(
fkJogador int,
pontuacao int,
qtdArmadilha int,
qtdTesouro int,
vida int,
constraint fk_jogador_pontuacao foreign key (fkJogador) references jogador(id)
);

select j.id, j.login as nome_usuario, p.pontuacao as pontuacao
from pontuacao p
inner join jogador j on p.fkJogador = j.id;

select * from jogador;
