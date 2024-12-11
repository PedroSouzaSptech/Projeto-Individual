-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

create database healthsport;

use healthsport;


create table Usuario(
idUsuario int primary key auto_increment,
NomeCompleto varchar (45),
Email varchar (100),
Senha varchar (45),
NomeClube varchar (45)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES Usuario(idUsuario)
);

select * from aviso;

select * from Usuario;	

DELETE FROM Usuario WHERE idUsuario = '21';

	
select nomeClube, count(nomeClube) as 'Votos' from Usuario group by nomeClube; 

select count(nomeClube) from Usuario;

	INSERT INTO Usuario (NomeCompleto, Email, Senha, NomeClube) VALUES 
('João Silva', 'joao.silva@example.com', 'senha123', 'América-MG'),
('Maria Oliveira', 'maria.oliveira@example.com', 'senha123', 'Athletico-PR'),
('Carlos Pereira', 'carlos.pereira@example.com', 'senha123', 'Atlético-MG'),
('Ana Souza', 'ana.souza@example.com', 'senha123', 'Bahia'),
('Pedro Santos', 'pedro.santos@example.com', 'senha123', 'Botafogo'),
('Paula Lima', 'paula.lima@example.com', 'senha123', 'Corinthians'),
('Lucas Rocha', 'lucas.rocha@example.com', 'senha123', 'Coritiba'),
('Fernanda Alves', 'fernanda.alves@example.com', 'senha123', 'Cruzeiro'),
('Ricardo Gomes', 'ricardo.gomes@example.com', 'senha123', 'Cuiabá'),
('Juliana Costa', 'juliana.costa@example.com', 'senha123', 'Flamengo');

-- Registros adicionais para São Paulo e outros clubes selecionados
INSERT INTO Usuario (NomeCompleto, Email, Senha, NomeClube) VALUES 
('Roberto Farias', 'roberto.farias@example.com', 'senha123', 'São Paulo'),
('Luciana Vieira', 'luciana.vieira@example.com', 'senha123', 'São Paulo'),
('Eduardo Santos', 'eduardo.santos@example.com', 'senha123', 'São Paulo'),
('Mateus Lima', 'mateus.lima@example.com', 'senha123', 'Corinthians'),
('Vanessa Silva', 'vanessa.silva@example.com', 'senha123', 'Corinthians'),
('Diego Costa', 'diego.costa@example.com', 'senha123', 'Corinthians'),
('Aline Souza', 'aline.souza@example.com', 'senha123', 'Flamengo'),
('Henrique Ramos', 'henrique.ramos@example.com', 'senha123', 'Flamengo'),
('Patrícia Almeida', 'patricia.almeida@example.com', 'senha123', 'Flamengo');




