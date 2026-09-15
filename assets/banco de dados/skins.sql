CREATE DATABASE marketplace_skin;

USE marketplace_skins; 

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL
);



-- TABELA SKIN


CREATE TABLE skin (
    id_skin INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    preco_promocional DECIMAL(10,2),
    tipo ENUM('Arma', 'Faca', 'Skin de Personagem') NOT NULL,
    data_criacao DATE NOT NULL,
    data_atualizacao DATE NOT NULL
);


-- TABELA TRANSACAO


CREATE TABLE transacao (
    id_transacao INT AUTO_INCREMENT PRIMARY KEY,
    pagamento DECIMAL(10,2) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    data_pagamento DATETIME NOT NULL,
    banco_utilizado VARCHAR(100) NOT NULL
);
