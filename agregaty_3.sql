#Agregaty - Zadanie 3 - Funkcje związane z datą

USE aggregates;
SELECT * FROM aggregates.batman;

#a. Rozłóż datę pokazaną w kolumnie start_date na trzy kolumny: rok, miesiąc, dzień.
SELECT
    LEFT(start_date, 4) AS rok,    # suma znaków od lewej
    MID(start_date, 6,2) AS miesiąc,   # liczba pojedynczych znaków od lewej + tuaj: suma znaków miesiąca
    RIGHT(start_date, 2) AS dzień    #suma znaków od prawej
    FROM aggregates.batman;

#b. Wyświetl kolumnę start_date oraz kolumnę final_date, która wyświetli datę o 3 dni późniejszą, niż data w start_date.
SELECT DATE_ADD(start_date, INTERVAL 3 DAY) AS final_date FROM aggregates.batman ;  #!

#c. Wyświetl dzisiejszą datę.
SELECT current_date;

#d. Wyświetl nazwę obecnego miesiąca.
SELECT month(current_date);

#e. Wyświetl start_date, a następnie kolumny określające: numer tygodnia, nazwę miesiąca, kwartał, numer dnia w roku.
SELECT start_date, weekofyear(start_date), monthname(start_date), quarter(start_date), dayofyear(start_date)
FROM aggregates.batman;