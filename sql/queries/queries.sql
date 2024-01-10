-- Ile towarów z danej kategorii przeszło przez granice w ciągu ostatniego roku?
-- Komendant potrzebuje informacji o tym jakie kategorie towarów są najczęściej transportowane przez granicę w celu odpowiedniego dostosowania opłat.

SELECT T.Nazwa_kategorii, COUNT(*)
FROM Towary T
INNER JOIN Przesylki P ON T.ID_towaru = P.ID_towaru
INNER JOIN Przejscia_graniczne PG ON P.Numer_przesylki = PG.Numer_przesylki
WHERE PG.Data_przejscia >= DATEADD(YEAR, -1, GETDATE())
GROUP BY T.Nazwa_kategorii;


-- Ile kontroli przeprowadził każdy z celników?
-- Komendant potrzebuje zestawienia kontroli wykonanych przez każdego celnika w celu ustalenia wysokości premii noworocznej dla każdego z nich.

SELECT C.PESEL, C.Imie_celnika, C.Nazwisko_celnika, COUNT(K.ID_kontroli) AS Ilosc_kontroli
FROM Celnicy C
LEFT JOIN Kontrole K ON C.PESEL = K.PESEL
GROUP BY C.PESEL, C.Imie_celnika, C.Nazwisko_celnika
ORDER BY Ilosc_kontroli DESC


-- Ile przesyłek przeszło przez każde z przejść granicznych?
-- Komendant chce dowiedzieć się, które z przejść granicznych są najbardziej oblegane, by móc skierować tam dodatkowych celników.

SELECT MP.ID_miejsca, MP.Nazwa_miejsca, 
    (SELECT COUNT(PG.Numer_przesylki) 
    FROM Przejscia_graniczne PG 
    WHERE PG.ID_miejsca = MP.ID_miejsca) AS Ilosc_przesylek
FROM Miesca_przejsc MP
ORDER BY Ilosc_przesylek DESC


-- Jaki jest stosunek kontroli zatwierdzonych do wszystkich przeprowadzonych przez danego celnika i czy jest mniejszy od średniej?
-- Komendant jest zobowiązany przeprowadzić audyt zlecony mu przez CBA. 
-- W tym celu chce znaleźć celników, którzy mają niską średnią skuteczność kontroli w porównaniu do całej reszty.

SELECT C.PESEL, C.Imie_celnika, C.Nazwisko_celnika, 
    SUM(CAST(K.Status_kontroli AS INT)) AS Zatwierdzone,
    COUNT(K.ID_kontroli) AS Wszystkie,
    SUM(CAST(K.Status_kontroli AS FLOAT)) / COUNT(K.ID_kontroli) AS Stosunek
FROM Celnicy C
LEFT JOIN Kontrole K ON C.PESEL = K.PESEL
GROUP BY C.PESEL, C.Imie_celnika, C.Nazwisko_celnika
HAVING SUM(CAST(K.Status_kontroli AS FLOAT)) / COUNT(K.ID_kontroli) < (
    SELECT AVG(CAST(K2.Status_kontroli AS FLOAT))
    FROM Kontrole K2
)
ORDER BY Stosunek DESC


-- Jaka jest średnia waga przesyłek z danych kategorii towarów?
-- Komendant musi ustalić nowe limity wagowe dla każdej kategorii tak,
-- aby dla towaru z każdej kategorii znalazło się odpowiednio dużo miejsca w magazynie.

SELECT KT.Nazwa_kategorii, AVG(P.Waga) AS Srednia_waga_przesylki
FROM Kategorie_towarow KT
INNER JOIN Towary T ON KT.Nazwa_kategorii = T.Nazwa_kategorii
INNER JOIN Przesylki P ON T.ID_towaru = P.ID_towaru
GROUP BY KT.Nazwa_kategorii


-- Którzy klienci nadali w sumie najwięcej przesyłek?
-- Komendant chce przeprowadzić ankietę zadowolenia wśród klientów komory. 
-- Niestety z braku zasobów ludzkich i czasowych musi znaleźć najaktywniejszych klientów.
-- W tym celu chce się dowiedzieć który klient/którzy klienci nadali w sumie najwięcej przesyłek.

-- Stworzenie widoku
CREATE VIEW Klienci_Najwiecej_Przesylek AS
SELECT K.ID_klienta, K.Imie, K.Nazwisko, COUNT(P.Numer_przesylki) AS Liczba_przesylek
FROM Klienci K
LEFT JOIN Dokumenty_celne D ON K.ID_klienta = D.ID_klienta
LEFT JOIN Przesylki P ON D.Numer_deklaracji = P.Numer_deklaracji
GROUP BY K.ID_klienta, K.Imie, K.Nazwisko;

-- Zapytanie korzystające z widoku
SELECT ID_klienta, Imie, Nazwisko, Liczba_przesylek
FROM Klienci_Najwiecej_Przesylek
WHERE Liczba_przesylek = (
    SELECT MAX(Liczba_przesylek)
    FROM Klienci_Najwiecej_Przesylek
)


-- Jakich trzech klientów zapłaciło w sumie najwięcej za wystawienie dokumentów celnych?
-- Komendant chce nagrodzić zniżką na przyszłe zamówienia tych trzech klientów, którzy dokonali opłat na największą sumę.

SELECT TOP 3 K.ID_klienta, K.Imie, K.Nazwisko, SUM(O.Kwota_oplaty) AS Suma_oplaty
FROM Klienci K
JOIN Dokumenty_celne DC ON K.ID_klienta = DC.ID_klienta
JOIN Oplaty O ON DC.Nazwa_oplaty = O.Nazwa_oplaty
GROUP BY K.ID_klienta, K.Imie, K.Nazwisko
ORDER BY SUM(O.Kwota_oplaty) DESC;
