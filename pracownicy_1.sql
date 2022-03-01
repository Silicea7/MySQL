# 1. Stwórz Bazę Pracownicy
use pracownicy;

# 2. Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS:
create table pracownicy_1
(
    ID       int primary key,
    Imie     varchar(20),
    Nazwisko varchar(20),
    Wiek     int,
    Kurs     varchar(20)
);

select * from pracownicy_1;

truncate pracownicy_1;

# 3. Każdą tabelę uzupełnij danymi z tabeli z załącznika.

# 4. Wyświetl listę pracowników starszych niż 30 lat.
select * from pracownicy_1
where wiek > 30;

# 5. Wyświetl listę pracowników młodszych niż 30 lat.
select * from pracownicy_1
where wiek < 30;

# 6. Wyświetl listę pracowników, których nazwisko zaczyna się na „K” i kończy na „ki”
select * from pracownicy_1
where nazwisko like 'K%' '%ski';

# 7. Zmień nazwę kolumny „ID” na „NR”
alter table pracownicy_1 rename column ID to NR;

#8. Wyświetl pozycje, w których są puste pola.
select * from pracownicy_1
where `imie` or `nazwisko` or `wiek` or `kurs` is null;

# 9. Wyświetl wszystkich pracowników z kursu „Java”.
select * from pracownicy_1
where  kurs = 'java';