# Agregaty - Zadanie 2 - Funkcje związane z napisami

USE aggregates;

SELECT * FROM aggregates.batman;

#a. Wyświetl imię i nazwisko w jednej kolumnie. Kolumnie nadaj alias „Pracownik”.
SELECT CONCAT(first_name, ' ', last_name) AS Pracownik FROM aggregates.batman;

#b. Złącz kolumny gift i price tak, aby powstał napis: „rower – cena: ”. Kolumnie nadaj alias: cennik.
SELECT CONCAT(gift, ' - cena: ', price) AS cennik FROM aggregates.batman;

#c. Ponownie wykonaj zadanie 2b – doklej imię i nazwisko pracownika.
SELECT CONCAT(first_name, ' ', last_name, ' | ', gift, ' - cena: ', price) AS cennik FROM aggregates.batman;

#d. Wyświetl prezenty. Ich nazwy mają być wyświetlane wielkimi literami.
SELECT UPPER(gift) FROM aggregates.batman;

#e. Wyświetl imiona. Mają być wyświetlane małymi literami.
SELECT LOWER(first_name) FROM aggregates.batman;

#f. Wyświetl nazwiska oraz dodatkową kolumnę „długość” zawierającą informację o liczbie liter w nazwisku.
SELECT last_name, LENGTH(last_name) AS długość FROM aggregates.batman;

#g. Wyświetl pierwsze dwie litery imion.
SELECT substring(first_name, 1, 2) FROM aggregates.batman;

#h. Wyświetl imię, nazwisko i login użytkownika w formacie: mała litera imienia + 3 pierwsze, małe litery nazwiska.
SELECT LOWER( CONCAT(
    substring(first_name, 1, 1),
    substring(last_name, 3)
    )) AS login FROM aggregates.batman;   #!

# lub można też w ten sposób wykonać
SELECT LOWER( CONCAT(
    LEFT(first_name, 1),
    LEFT(last_name, 3)
    )) AS login FROM aggregates.batman;
# ! substring używa zawsze minimium dwóch dodatkowych parametrów do wykonaiania zapytania, nawet przy wyświetleniu jednego znaku