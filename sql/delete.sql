------------ Delete records from categories table ------------

-- Show state before making changes
SELECT * FROM Kategorie_towarow ORDER BY Nazwa_kategorii;


-- Deleting empty category
DELETE FROM Kategorie_towarow
WHERE Nazwa_kategorii = 'Pusta';


-- Show state after making changes
SELECT * FROM Kategorie_towarow ORDER BY Nazwa_kategorii;


------------ Delete records from officers table ------------


-- Show state before making changes
SELECT * FROM Celnicy ORDER BY Nazwa_stanowiska;


-- Deleting inspector position
DELETE FROM Celnicy
WHERE Nazwa_stanowiska = 'Inspektor celny';


-- Deleting advisor position
DELETE FROM Celnicy
WHERE Nazwa_stanowiska = 'Doradca celny starszy';


-- Show state after making changes
SELECT * FROM Celnicy ORDER BY Nazwa_stanowiska;
