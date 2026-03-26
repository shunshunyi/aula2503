PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Livros;
DROP TABLE IF EXISTS Autores;

CREATE TABLE Autores (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Livros (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo VARCHAR(255) NOT NULL,
    isbn VARCHAR(13) UNIQUE,
    ano_publicacao INTEGER,
    autor_id INTEGER,
    FOREIGN KEY (autor_id) REFERENCES Autores(id)
);

INSERT INTO Autores (nome) VALUES ('Machado de Assis');

INSERT INTO Livros (titulo, isbn, ano_publicacao, autor_id)
VALUES ('Dom Casmurro', '1234567890123', 1899, 1);

INSERT INTO Livros (titulo, isbn, ano_publicacao, autor_id)
VALUES ('Livro Teste', '9999999999999', 2024, 999);

SELECT titulo FROM Livros;

SELECT * FROM Livros WHERE ano_publicacao > 2020;

SELECT titulo FROM Livros WHERE ano_publicacao > 2020;