#1. Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
use pracownicy;

#2. Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS:
create table pracownicy_5
(
    ID       int primary key,
    Imie     varchar(20),
    Nazwisko varchar(20),
    Wiek     int,
    Kurs     varchar(20)
);

select * from pracownicy_5;

#3. Każdą tabelę uzupełnij danymi z załącznika, lub zaktualizuj.

#4. Wyświetl listę pracowników wg kolumny Imię, eliminując powtarzające się pozycje.
select * from pracownicy_5
order by Imie asc;  # co dalej ???


#5. Wyświetl listę pracowników wg kolumny Nazwisko eliminując powtarzające się pozycje.
select * from pracownicy_5
order by            # co dalej?/? cos z distinct

#6. Wyświetl kursy prowadzone przez pracowników o Nazwisku: „Kowalczyk”.
select * from pracownicy_5
where Nazwisko = 'Kowalczyk';

#7. Wyświetl listę pracowników, dla których nie znamy wieku.
select * from pracownicy_5
where Wiek is null;

#8. Wyświetl wiek pracowników o Imieniu „Patryk”.
select Imie from pracownicy_5
where 'Patryk';    # jak zprwodłowo rozbudować?


# 9. Zmień nazwę tabeli z  „Pracownicy” na „Mentorzy”.
alter table pracownicy_5  rename Pracownicy to Mentorzy; # jak prawidłowo??
# as nie zmienia nazwy kolumny tylko pokazuje w konsoli???