-- 1. Załóż bazę o nazwie: Moje zainteresowania.
create database `my interest`;
use `my interest`;


 /* 2. Załóż tabelę o nazwie: Zainteresowanie.
3. Utwórz 5 kolumn, a także dobierz i ustaw dla każdej CONSTRAINTS:
ID
Nazwa
Opis
Data realizacji */

create table hobbys
(

    id                 int primary key auto_increment,
    name               text(20),
    descripion         text(20),
    `realization date` text(20)
);

-- 4. Wprowadź dane dla kolumn: Nazwa i Opis. (Min 5 pozycji)
insert into hobbys (name, descripion) values
    ('tango', 'i like it'),
    ('to made stained glass', 'awesome'),
    ('collecting shells', 'extaordinary'),
    ('sewing on machine', 'make s fun'),
    ('spirituality', 'ten years from now');
# ('tango', 'i like it', 'on Monday'),
#     ('to made stained glass', 'awesome', 'once in month'),
#     ('collecting shells', 'extaordinary', 'three times a year',),
#     ('sewing on machine', 'make s fun', 'every month'),
#     ('spirituality', 'ten years from now', 'frequently');

-- 5. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo i co pojawia się w kolumnie ID i Data realizacji.
select * from hobbys;

-- 6. Dodaj nową pozycję (wiersz) wypełniając wszystkie dane.
insert into hobbys (name, descripion, `realization date`) values
('cycling', 'tevelling far', 'every weekend');

-- 7. Dodaj brakujące (kolumna realisation date) dane dla wiersza  4.
update hobbys
set `realization date` = 'every month'
where id = 4;

-- 8. Sprawdź, czy dane zostały zmienione, wyświetlając wszystkie pozycje.
select * from hobbys;

-- 9. Usuń wszystkie wiersze, w których jakaś z pozycji jest pusta.
delete from hobbys
where name is null or descripion is null or `realization date` is null;

-- 10. Sprawdź, czy dane zostały zmienione.
select * from hobbys;


use moja_baza;
select * from pracownicy;