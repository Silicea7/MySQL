-- 1  Stwórz bazę danych.
CREATE DATABASE books;

USE books;

/* 2 Stwórz tabelę nazwaną Biblioteczka z trzema kolumnami:
id, który przechowuje INTEGER - CONSTRAINTS
Tytuł, który przechowuje TEXT
Data zakupu, którą przechowuje DATA */
CREATE TABLE Bookcase
(
    ID            INTEGER,
    title         TEXT,
    purchase_date DATE
);

CREATE TABLE Produkty(
	Id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nazwa_produktu VARCHAR(30),
    Producent VARCHAR(20)
);

-- 3  Dodaj książkę o Twoim ulubionym tytule do Biblioteczki wraz z pozostałymi danymi.
INSERT INTO Bookcase (ID, title, purchase_date)
VALUES (1, 'Emotional Freedom', '2017-07-07');

-- 4 Sprawdź, czy książka została dodana do bazy danych i sprawdź, czy dane są prawidłowe.
SELECT * FROM Bookcase;


-- 5 Dodaj kolejne dwie ulubione książki do Biblioteczki wraz z identyfikatorem
-- (wg. kolejności którą najbardziej lubisz) i pozostałymi danymi.
INSERT INTO Bookcase (ID, title, purchase_date)
VALUES (2, 'Working with Emotional Intelligence', '2017-07-07'),
(3, 'Seven and a Half Lessons About the Brain', '2017-07-07');

-- 6 Zmień ulubioną książkę na książkę, która najmniej Ci się podoba. Zaktualizujcie tą pozycję.
UPDATE Bookcase
SET title = 'TWo and a Half Men Quiz Book', purchase_date = '2013-03-27'
    WHERE id = 1;

-- 7 Dodaj nową kolumnę o nazwie Autor.
ALTER TABLE Bookcase ADD Author text;

-- 8  Uzupełnij kolumnę Autor danymi dla wszystkich pozycji.
UPDATE Bookcase
SET Author  = 'Judith Orloff'
WHERE id = 1;

UPDATE Bookcase
SET Author  = 'Daniel Goleman'
WHERE id = 2;

UPDATE Bookcase
SET Author  = 'Lisa Berett'
WHERE id = 3;

-- 9  Usuń pozycje z ulubionymi książkami.
DELETE FROM Bookcase
WHERE id = 2 or id = 3;  # or !

-- 10 Sprawdź dane autora dla pozycji, która została w bazie
SELECT * FROM Bookcase;
