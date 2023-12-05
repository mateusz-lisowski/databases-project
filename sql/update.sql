-- Update industrial category
UPDATE Kategorie_towarow
SET Nazwa_kategorii = 'Przemysłowe i gospodarstwa domowego', Opis_kategorii = 'Artykuły używane w przemyśle i gospodarstwie domowym.'
WHERE Nazwa_kategorii = 'Przemysłowe';


-- Update AGD category 
UPDATE Kategorie_towarow
SET Nazwa_kategorii = 'AGD', Opis_kategorii = 'Artykuły używane w gospodarstwie domowym.'
WHERE Nazwa_kategorii = 'Przemysłowe i gospodarstwa domowego';


-- Update inspector positions 
UPDATE Stanowiska
SET Wynagrodzenie = 11456, Ilosc_godzin_pracy = 12
WHERE Nazwa_stanowiska = 'Inspektor celny';


-- Update positions 
UPDATE Stanowiska
SET Ilosc_godzin_pracy = 8
WHERE Nazwa_stanowiska = 'Doradca celny';
