-- Show state before making changes
SELECT * FROM Kategorie_towarow ORDER BY Nazwa_kategorii
SELECT * FROM Stanowiska ORDER BY Nazwa_stanowiska


-- Deleting empty category
DELETE FROM Kategorie_towarow
WHERE Nazwa_kategorii = 'Pusta';

 
-- Deleting inspector position
DELETE FROM Celnicy
WHERE Nazwa_stanowiska = 'Inspektor celny';


-- Deleting inspector position
DELETE FROM Celnicy
WHERE Nazwa_stanowiska = 'Doradca celny';


-- Show state after making changes
SELECT * FROM Kategorie_towarow ORDER BY Nazwa_kategorii
SELECT * FROM Stanowiska ORDER BY Nazwa_stanowiska
