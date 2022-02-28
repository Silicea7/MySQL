# 1. Załóż bazę o nazwie: Lista Prezentów.
create database gift_list;

use gift_list;

# 2. Załóż tabelę o nazwie: Prezenty_2020.
# 3. Utwórz 5 kolumn, a także dobierz i ustaw dla każdej CONSTRAINTS:
# ID
# Imię obdarowanego
# Pomysł na prezent
# Cena
# Miejsce zakupu
create table prezenty_2020 (
    id                int,
    imie_obdarowanego text,
    pomysl_na_prezent text,
    cena              int,
    miejsce_zakupu    text
);

# 4. Wprowadź dane osób, dla których kupujesz świąteczne prezenty (min. 5).
# Każda pozycja ma mieć wypełnione wszystkie dane zgodnie z wymaganiem.
insert into prezenty_2020 (id, imie_obdarowanego, pomysl_na_prezent, cena, miejsce_zakupu)
 VALUES (1, 'Ania', 'obraz', 100, 'galeria'),
        (2, 'Jroslaw', 'czapka', 20, 'sklep sportowy'),
        (3, 'Ola', 'bumerang', 50, 'decatlon'),
        (4, 'Dawid', 'ukulele', 100, 'sklep muzyczny'),
        (5, 'Daniel', 'perfumy', 40,'perfumeria');

# 5. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo.
select * from prezenty_2020;

# 6. Zmień pomysł na prezent dla osoby zapisanej w pozycji 3 na wartość „Rower”.
update prezenty_2020
set pomysl_na_prezent = 'rower'
where id = 3;

# 7. Sprawdź, czy dane zostały zmienione wyświetlając tylko tę pozycję.
select * from prezenty_2020
where pomysl_na_prezent = 'rower';

# 8. Usuń pozycję 1.
delete from prezenty_2020
where id = 1;

# 9. Sprawdź, czy dane zostały zmienione, zwróć uwagę, co się zmieniło w kolumnie ID.
select * from prezenty_2020;

# 10. Usuń kolumnę o nazwie Miejsce zakupu.
alter table prezenty_2020
drop column miejsce_zakupu;

# 11. Wyświetl zawartość kolumny Imię obdarowanego dla pozycji 3,4,5  i sprawdź, czy dane są prawidłowe.
select imie_obdarowanego
from prezenty_2020
where id between 3 and 5;

