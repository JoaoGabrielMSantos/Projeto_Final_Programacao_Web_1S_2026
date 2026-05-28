CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE usuarios (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    perfil ENUM('bibliotecario', 'leitor') NOT NULL
);

CREATE TABLE livros (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    autor VARCHAR(150) NOT NULL,
    ano_publicacao INTEGER,
    quantidade_disponivel INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE emprestimos (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    livro_id INTEGER NOT NULL,
    leitor_id INTEGER NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao_prevista DATE NOT NULL,
    data_devolucao_real DATE,
    status ENUM('ativo', 'devolvido', 'atrasado') NOT NULL,
   
    CONSTRAINT fk_livro
        FOREIGN KEY (livro_id)
        REFERENCES livros(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_leitor
        FOREIGN KEY (leitor_id)
        REFERENCES usuarios(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);