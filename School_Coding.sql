-- 1. Załóż bazę o nazwie: School_Coding.
CREATE DATABASE School_Coding;
USE School_Coding;

/* 2. Załóż tabelę o nazwie: Mentors.
3. Utwórz 6 kolumn, a także dobierz i ustaw dla każdej CONSTRAINTS:
ID
Imię
Nazwisko
Specjalizacja
Data zatrudnienia
Data zwolnienia */
CREATE TABLE Mentors (
 ID INTEGER PRIMARY KEY,
 first_name TEXT,
 surname TEXT,
 specialization TEXT,
 date_of_hire DATE,
 date_of_discharge DATE
 );

 -- 4.  Wprowadź dane (10 pozycji od 1 do 10). Każda pozycja ma mieć wypełnione wszystkie dane zgodnie z wymaganiem).
 INSERT INTO Mentors ( first_name, surname, specialization, date_of_hire, date_of_discharge)
 VALUES ( 'Sophia', 'Smith', 'clinical psychology', '2017-05-03', '2019-05-03'),
 ( 'Emily', 'Jones', 'cognitive psychology', '2017-05-03', '2019-05-03'),
 ( 'Linda', 'Williams', 'developmental psychology', '2017-05-03', '2019-05-03'),
 ( 'Madison', 'Taylor', 'educational psychology', '2017-05-03', '2019-05-03'),
 ( 'Susan', 'Davies', 'forensic psychology', '2017-05-03', '2019-05-03'),
 ( 'Lily', 'Evans', 'health psychology', '2017-05-03', '2019-05-03'),
 ( 'Jake', 'Johnson', 'social psychology', '2017-05-03', '2019-05-03'),
 ( 'George', 'Martin', 'neuropsychology', '2017-05-03', '2019-05-03'),
 ( 'James', 'Clarke', 'environmental psychology', '2017-05-03', '2019-05-03');

ALTER TABLE Mentors CHANGE id id INT(10)AUTO_INCREMENT; # po usunięciu ID w insercie zapytanie było błędne
                                                       # i zmodyfikowałam kolumnę id na taką, która automatycznie
                                                       # generuje id

-- 5. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo.
SELECT * FROM  Mentors;

-- 6. Zmień Nazwisko Mentora w pozycji nr 5.
UPDATE Mentors
SET surname = 'Stuard'
WHERE ID = 5;

-- 7. Sprawdź, czy dane zostały zmienione, wyświetlając tylko tę pozycję.
SELECT  surname FROM Mentors
WHERE ID = 5;


-- 8. Zmień stanowisko mentora w pozycji 9.
UPDATE Mentors
SET specialization = 'counseling psychology'
WHERE ID = 9;

-- 9. Sprawdź, czy dane zostały zmienione, wyświetlając tylko tę pozycję.
SELECT id
FROM Mentors
WHERE specialization = 'counseling psychology';

-- 10. Dodaj kolumnę o nazwie Wynagrodzenie, a także dobierz i ustaw CONSTRAINTS.
ALTER TABLE Mentors ADD COLUMN salary int;

-- 11. Uzupełnij kolumnę wartością 1000 dla pozycji 1,2,3.
UPDATE Mentors
SET salary = '1000'
WHERE ID <= 3;

-- 12. Wyświetl pozycję 1,2,3 i sprawdź, czy dane są prawidłowe.
SELECT * FROM Mentors
WHERE id <=3;

