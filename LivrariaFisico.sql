/* logicoLivraria: */

CREATE TABLE Livro (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR,
    isbn VARCHAR,
    idioma VARCHAR,
    ano_publicacao DATE,
    preco_venda FLOAT,
    sinopse VARCHAR,
    fk_Editora_id_editora INT,
    fk_Estoque_id_estoque INT,
    fk_Promocoes_id_promocao INT,
    fk_ItemDeVenda_id_item_venda INT
);

CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR,
    cargo VARCHAR,
    cpf VARCHAR,
    telefone VARCHAR,
    data_contratacao DATE
);

CREATE TABLE Venda (
    id_venda INT PRIMARY KEY,
    data_venda DATE,
    total FLOAT,
    fk_Funcionario_id_funcionario INT,
    fk_Cliente_id_cliente INT,
    fk_ItemDeVenda_id_item_venda INT
);

CREATE TABLE Estoque (
    id_estoque INT PRIMARY KEY,
    quantidade_disponivel INT,
    localização VARCHAR
);

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY,
    nome VARCHAR,
    descricao VARCHAR
);

CREATE TABLE Autor (
    id_autor INT PRIMARY KEY,
    nome VARCHAR,
    biografia VARCHAR,
    nacionalidade VARCHAR
);

CREATE TABLE Editora (
    id_editora INT PRIMARY KEY,
    nome VARCHAR,
    cnpj VARCHAR,
    telefone VARCHAR,
    fk_endereco_endereco_PK INT
);

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR,
    cpf VARCHAR,
    telefone VARCHAR,
    email VARCHAR
);

CREATE TABLE ItemDeVenda (
    id_item_venda INT PRIMARY KEY,
    quantidade INT,
    preco_unitario FLOAT,
    subtotal FLOAT
);

CREATE TABLE Fornecedor (
    id_fornecedor INT PRIMARY KEY,
    nome VARCHAR,
    cnpj VARCHAR,
    telefone VARCHAR,
    fk_endereco_endereco_PK INT
);

CREATE TABLE Compra (
    id_compra INT PRIMARY KEY,
    data_compra DATE,
    total FLOAT,
    fk_Fornecedor_id_fornecedor INT,
    fk_Funcionario_id_funcionario INT
);

CREATE TABLE ItemDaCompra (
    id_item_compra INT PRIMARY KEY,
    quantidade INT,
    preco_unitario FLOAT,
    subtotal FLOAT,
    fk_Estoque_id_estoque INT,
    fk_Compra_id_compra INT
);

CREATE TABLE FormasDePagamento (
    id_forma_pagamento INT PRIMARY KEY,
    tipo VARCHAR,
    descricao VARCHAR,
    fk_Venda_id_venda INT
);

CREATE TABLE Promocoes (
    id_promocao INT PRIMARY KEY,
    descricao VARCHAR,
    data_inicio DATE,
    data_fim DATE,
    percentual_desconto FLOAT
);

CREATE TABLE endereco (
    endereco_PK INT NOT NULL,
    ruaEndereco VARCHAR,
    numeroEndereco INT,
    cepEndereco VARCHAR,
    id_enderco INT,
    PRIMARY KEY (endereco_PK, id_enderco)
);

CREATE TABLE endereco (
    endereco_PK INT NOT NULL,
    ruaEndereco VARCHAR,
    id_enderco INT,
    numeroEndereco INT,
    cepEndereco VARCHAR,
    PRIMARY KEY (endereco_PK, id_enderco)
);

CREATE TABLE possui (
    fk_Livro_id_livro INT,
    fk_Autor_id_autor INT
);

CREATE TABLE contem (
    fk_Categoria_id_categoria INT,
    fk_Livro_id_livro INT
);
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_2
    FOREIGN KEY (fk_Editora_id_editora)
    REFERENCES Editora (id_editora)
    ON DELETE RESTRICT;
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_3
    FOREIGN KEY (fk_Estoque_id_estoque)
    REFERENCES Estoque (id_estoque)
    ON DELETE CASCADE;
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_4
    FOREIGN KEY (fk_Promocoes_id_promocao)
    REFERENCES Promocoes (id_promocao)
    ON DELETE CASCADE;
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_5
    FOREIGN KEY (fk_ItemDeVenda_id_item_venda)
    REFERENCES ItemDeVenda (id_item_venda)
    ON DELETE RESTRICT;
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_2
    FOREIGN KEY (fk_Funcionario_id_funcionario)
    REFERENCES Funcionario (id_funcionario)
    ON DELETE CASCADE;
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_3
    FOREIGN KEY (fk_Cliente_id_cliente)
    REFERENCES Cliente (id_cliente)
    ON DELETE RESTRICT;
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_4
    FOREIGN KEY (fk_ItemDeVenda_id_item_venda)
    REFERENCES ItemDeVenda (id_item_venda)
    ON DELETE RESTRICT;
 
ALTER TABLE Editora ADD CONSTRAINT FK_Editora_2
    FOREIGN KEY (fk_endereco_endereco_PK, ???)
    REFERENCES endereco (endereco_PK, ???)
    ON DELETE NO ACTION;
 
ALTER TABLE Fornecedor ADD CONSTRAINT FK_Fornecedor_2
    FOREIGN KEY (fk_endereco_endereco_PK, ???)
    REFERENCES endereco (endereco_PK, ???)
    ON DELETE NO ACTION;
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra_2
    FOREIGN KEY (fk_Fornecedor_id_fornecedor)
    REFERENCES Fornecedor (id_fornecedor)
    ON DELETE CASCADE;
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra_3
    FOREIGN KEY (fk_Funcionario_id_funcionario)
    REFERENCES Funcionario (id_funcionario)
    ON DELETE CASCADE;
 
ALTER TABLE ItemDaCompra ADD CONSTRAINT FK_ItemDaCompra_2
    FOREIGN KEY (fk_Estoque_id_estoque)
    REFERENCES Estoque (id_estoque)
    ON DELETE CASCADE;
 
ALTER TABLE ItemDaCompra ADD CONSTRAINT FK_ItemDaCompra_3
    FOREIGN KEY (fk_Compra_id_compra)
    REFERENCES Compra (id_compra)
    ON DELETE RESTRICT;
 
ALTER TABLE FormasDePagamento ADD CONSTRAINT FK_FormasDePagamento_2
    FOREIGN KEY (fk_Venda_id_venda)
    REFERENCES Venda (id_venda)
    ON DELETE RESTRICT;
 
ALTER TABLE possui ADD CONSTRAINT FK_possui_1
    FOREIGN KEY (fk_Livro_id_livro)
    REFERENCES Livro (id_livro)
    ON DELETE RESTRICT;
 
ALTER TABLE possui ADD CONSTRAINT FK_possui_2
    FOREIGN KEY (fk_Autor_id_autor)
    REFERENCES Autor (id_autor)
    ON DELETE RESTRICT;
 
ALTER TABLE contem ADD CONSTRAINT FK_contem_1
    FOREIGN KEY (fk_Categoria_id_categoria)
    REFERENCES Categoria (id_categoria)
    ON DELETE RESTRICT;
 
ALTER TABLE contem ADD CONSTRAINT FK_contem_2
    FOREIGN KEY (fk_Livro_id_livro)
    REFERENCES Livro (id_livro)
    ON DELETE SET NULL;
