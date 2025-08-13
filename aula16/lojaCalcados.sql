CREATE DATABASE loja_calcados;
USE loja_calcados;

CREATE TABLE IF NOT EXISTS categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE marcas (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    categoria_id INT,
    marca_id INT,
    preco DECIMAL(10,2) NOT NULL,
    estoque_total INT DEFAULT 0,
    ativo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id_categoria),
    FOREIGN KEY (marca_id) REFERENCES marcas(id_marca)
);

CREATE TABLE estoques (
    id_estoque INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    tamanho VARCHAR(10),
    cor VARCHAR(30),
    quantidade INT DEFAULT 0,
    FOREIGN KEY (produto_id) REFERENCES produtos(id_produto)
);

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20),
    endereco TEXT,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2),
    forma_pagamento VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_venda (
    id_item_venda INT AUTO_INCREMENT PRIMARY KEY,
    venda_id INT,
    produto_id INT,
    tamanho VARCHAR(10),
    cor VARCHAR(30),
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (venda_id) REFERENCES vendas(id_venda),
    FOREIGN KEY (produto_id) REFERENCES produtos(id_produto)
);