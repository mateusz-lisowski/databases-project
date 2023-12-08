------------ Update records from categories table ------------


-- Show state before making changes
SELECT * FROM Towary ORDER BY Nazwa_kategorii;


-- Update industrial category
UPDATE Kategorie_towarow
SET Nazwa_kategorii = 'Przemysłowe i chemia domowa', Opis_kategorii = 'Artykuły używane w przemyśle i chemia gospodarstwie domowym.'
WHERE Nazwa_kategorii = 'Przemysłowe';


-- Update AGD category 
UPDATE Kategorie_towarow
SET Nazwa_kategorii = 'Artykuły gospodarstwa domowego', Opis_kategorii = 'Artykuły używane w gospodarstwie domowym.'
WHERE Nazwa_kategorii = 'AGD';


-- Show state after making changes
SELECT * FROM Towary ORDER BY Nazwa_kategorii;


------------ Update records from officers table ------------


-- Show state before making changes
SELECT * FROM Celnicy ORDER BY Nazwa_stanowiska;


-- Update inspector positions 
UPDATE Stanowiska
SET Wynagrodzenie = 11456, Ilosc_godzin_pracy = 12
WHERE Nazwa_stanowiska = 'Inspektor celny';


-- Update positions 
UPDATE Stanowiska
SET Ilosc_godzin_pracy = 8, Nazwa_stanowiska = 'Doradca celny starszy'
WHERE Nazwa_stanowiska = 'Doradca celny';


-- Show state after making changes
SELECT * FROM Celnicy ORDER BY Nazwa_stanowiska;
