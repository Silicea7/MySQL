#1. Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
use pracownicy;
#2. Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS:
create table pracownicy_4
(
    ID       int primary key,
    Imie     varchar(20),
    Nazwisko varchar(20),
    Wiek     int,
    Kurs     varchar(20)
);

select * from pracownicy_4;

#3. Każdą tabelę uzupełnij danymi z załącznika, lub zaktualizuj.

#4. Wyświetl listę pracowników o Imieniu: Anna.
select * from pracownicy_4
where imie = 'Anna';

#5. Wyświetl listę pracowników z brakującą daną w kolumnie Imię.
select * from pracownicy_4
where Imie is null;

#6. Wyświetl kursy prowadzone przez pracowników w wieku od 30 lat do 40 lat.
select * from pracownicy_4
where wiek between 30 and 40;

#7. Wyświetl wiek pracowników z ID od 1 do 7.
select * from pracownicy_4
where ID between 1 and 7;

#8. Wyświetl listę pracowników z brakującymi danymi w kolumnie wiek.
select * from pracownicy_4
where Wiek is null;  #???

#9. Zmień nazwę kolumny „Kurs” na „Szkolenie”.
alter table pracownicy_4 rename column Kurs to Szkolenie;