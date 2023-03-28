-- Active: 1680021869614@@127.0.0.1@3306

CREATE TABLE books(
    id TEXT PRIMARY KEY NOT NULL UNIQUE, name TEXT NOT NULL, 
    author TEXT NOT NULL,
    page_count INTEGER, 
    price REAL NOT NULL
);

SELECT * FROM books;

INSERT INTO books (id, name, author, page_count, price)
VALUES 
(8503012928, "O Quinze", "Rachel de Queiroz", 208, 24.95), 
(8578887239, "Dom Casmurro", "Machado de Assis", NULL, 46.77);

INSERT INTO books
VALUES
(1, "Aventuras de Programação", "Labenu", 1000, 100);

SELECT name FROM books;

UPDATE books
SET
name = "Aventuras aventurosas"
WHERE id = 1;

UPDATE books SET 
name = "Adventure"
WHERE name = "Aventuras aventurosas";

UPDATE books SET
page_count = 463
WHERE name = "Dom Casmurro";

DELETE FROM books 
WHERE id = 1;

CREATE TABLE tasks( 
    id TEXT PRIMARY KEY NOT NULL UNIQUE, name TEXT NOT NULL, 
    description TEXT NOT NULL
);

SELECT * FROM tasks;

INSERT INTO tasks
VALUES
(123, "Estudar", "Estudar para a Labenu");

INSERT INTO tasks
VALUES
(234, "Ler", "Terminar de ler um livro"), 
(345, "Descansar", "Descansar no final de semana");

UPDATE tasks SET
name = "Continuar a ler"
WHERE id = 123;

DELETE FROM tasks
WHERE id = 123;
