#1. Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
use pracownicy;

#2. Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS:
create table pracownicy_3
(
    ID       int primary key,
    Imie     varchar(20),
    Nazwisko varchar(20),
    Wiek     int,
    Kurs     varchar(20)
);

select * from pracownicy_3;

#3. Każdą tabelę uzupełnij danymi z załącznika, lub zaktualizuj.

#4. Wyświetl listę pracowników o Nazwisku: KOWALCZYK.
select * from pracownicy_3
where Nazwisko = 'KOWALCZYK';

#5. Wyświetl listę pracowników w wieku od 30 lat do 40 lat.
select * from pracownicy_3
where Wiek between 30 and 40;

#6. Wyświetl listę pracowników, których nazwisko nie zawiera „and”.
select * from pracownicy_3
where Nazwisko is not 'and';  # ????

#7. Wyświetl listę pracowników z ID od 1 do 7.
select * from pracownicy_3
where ID between 1 and 7;

#8. Wyświetl listę pracowników z brakującymi danymi.
select * from pracownicy_3
where ('imie' or 'nazwisko' or 'wiek' or 'kurs') is null;  # ???

#9. Wyświetl wszystkich pracowników, którzy nie prowadzą żadnego kursu.
select * from pracownicy_3
where kurs is null;