# 1. Załóż bazę o nazwie: Lista Pracowników.
create database employee_list;
use employee_list; # ! ważne, by o tym nei zapomnieć

# 2. Załóż tabelę o nazwie: Pracownicy.
# 3. twórz 5 kolumn, a także dobierz i ustaw dla każdej CONSTRAINTS:
# ID
# Imię
# Nazwisko
# Stanowisko
# Dział
create table employee (
    id         int primary key auto_increment, # primary key - unikalny i niepusty; auto_increment - automatyczne dodawanie id
    name       text(20),                       # tekst(20) - długość wpisku może wynosić max 20 znaków
    surname    text(20),
    position   text(20),
    department text(20)
);

select * from employee;

# 4. Wprowadź dane osób, z którymi pracujesz w swojej firmie.
# Każda pozycja ma mieć wypełnione wszystkie dane zgodnie z wymaganiem.
insert into employee (name, surname, position, department)  values # nie używam id,
                                                                  # ponieważ w tworzeniu tabeli użyłam auto_increment
    ('Jack', 'Smith', 'Data Engineer', 'IT'),
    ('Mary', 'Taylor', 'Boss', ''),
    ('Linda', 'Evans', 'Data Analyst', 'IT'),
    ('Lily', 'Johnson', 'Project Manger', 'IT');

# 5. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo.
select * from employee;

# 6. Dodaj kolumnę: Data zatrudnienia.
alter table employee add `date of hire` text;

# 7. Dodaj nowego pracownika uzupełniając wszystkie dane.
insert into employee (name, surname, position, department)
 values ('Edith', 'Potter', 'Support Specialist', 'IT');

# 8. Sprawdź, czy dane zostały zmienione, wyświetlając wszystkie pozycje.
# Zwróć uwagę na dane w kolumnie Data zatrudnienia.
select * from employee;

# 9. Uzupełnij wszystkie brakujące dane w kolumnie o nazwie Data Zatrudnienia.
update employee
set `date of hire` = CURRENT_DATE - INTERVAL FLOOR(RAND() * 365) DAY;
/* od obecnej daty (curent_date) odejmuję wygenerowaną liczbę zmiennoprzecinkową z zakresu od 1 do 365  (rand) zaokrągloną w dół (floor),
 tworzę datę pomnijeszoną o wygenerowaną liczbę dni (day); można wygenerować także day przyszłe poprez zamianę znaku minus na plus
*/

# 10. Sprawdź, czy dane zostały zmienione, zwróć uwagę, co się zmieniło w kolumnie ID.
# nie rozumiem, co miało się zmienić w kolumnie ID
select * from employee
order by `date of hire` asc;

truncate employee; # czyszczenie tabeli z danych; w odróżnieniu od delete bez where, resetuje kolejność id przy auto_increment