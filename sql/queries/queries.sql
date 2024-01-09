--  Ile towarów z danej kategori przeszło przez granice w ciągu ostatniego roku. 

SELECT T.Nazwa_kategorii, COUNT(*)
FROM Towary T
INNER JOIN Przesylki P ON T.ID_towaru = P.ID_towaru
INNER JOIN Przejscia_graniczne PG ON P.Numer_przesylki = PG.Numer_przesylki
WHERE PG.Data_przejscia >= DATEADD(YEAR, -1, GETDATE())
GROUP BY T.Nazwa_kategorii;


-- Ile kontroli przeprowadził każdy z celników

SELECT C.PESEL, C.Imie_celnika, C.Nazwisko_celnika, COUNT(K.ID_kontroli) AS Ilosc_kontroli
FROM Celnicy C
LEFT JOIN Kontrole K ON C.PESEL = K.PESEL
GROUP BY C.PESEL, C.Imie_celnika, C.Nazwisko_celnika
ORDER BY Ilosc_kontroli DESC


-- Ile przesyłek przeszło przez każde z przejść granicznych

SELECT MP.ID_miejsca, MP.Nazwa_miejsca, 
    (SELECT COUNT(PG.Numer_przesylki) 
    FROM Przejscia_graniczne PG 
    WHERE PG.ID_miejsca = MP.ID_miejsca) AS Ilosc_przesylek
FROM Miesca_przejsc MP
ORDER BY Ilosc_przesylek DESC


-- Jaki jest stosunek kontroli zatwierdzonych do wszystkich przeprowadzonych przez danego celnika
SELECT C.PESEL, C.Imie_celnika, C.Nazwisko_celnika, 
    SUM(CAST(K.Status_kontroli AS INT)) AS Zatwierdzone,
    COUNT(K.ID_kontroli) AS Wszystkie,
    SUM(CAST(K.Status_kontroli AS FLOAT)) / COUNT(K.ID_kontroli) AS Stosunek
FROM Celnicy C
LEFT JOIN Kontrole K ON C.PESEL = K.PESEL
GROUP BY C.PESEL, C.Imie_celnika, C.Nazwisko_celnika
HAVING SUM(CAST(K.Status_kontroli AS FLOAT)) / COUNT(K.ID_kontroli) > (
    SELECT AVG(CAST(K2.Status_kontroli AS FLOAT)) / COUNT(K2.ID_kontroli)
    FROM Kontrole K2
)
ORDER BY Stosunek DESC
