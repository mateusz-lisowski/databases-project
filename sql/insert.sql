-- Inserting example data to categories table

INSERT INTO Kategorie_towarow VALUES ('Spożywcze', 'Wszystkie towary, które mogą być konsumowane przez ludzi.');

INSERT INTO Kategorie_towarow VALUES ('Przemysłowe', 'Towary, które są wykorzystywane w celach przemysłowych.');

INSERT INTO Kategorie_towarow VALUES ('Surowce', 'Wszystkie towary, które są zużywane do produkcji różnych przedmiotów.');

INSERT INTO Kategorie_towarow VALUES ('Energetyczne', 'Towary wykorzystywane w celach energetycznych.');

INSERT INTO Kategorie_towarow VALUES ('Szczególnie niebezpieczne', 'Towary, które muszą byc traktowane ze szczególną ostrożnościa, takie jak materiały wybuchowe.');

-- Inserting example data to items table

INSERT INTO Towary (ID_towaru, Nazwa_kategorii, Nazwa_towaru, Wartosc_towaru) VALUES (
    '43ee2287-1ac6-4bda-b43c-9e215218f0e3','Przemysłowe', 'Szczoteczki do zębów', 5000
);

INSERT INTO Towary (ID_towaru, Nazwa_kategorii, Nazwa_towaru, Wartosc_towaru) VALUES (
    '2012ed76-795b-4425-a32c-69be39917b70', 'Spożywcze', 'Jabłka', 1000
);

INSERT INTO Towary (ID_towaru, Nazwa_kategorii, Nazwa_towaru, Wartosc_towaru) VALUES (
    '1ace2ba7-f6f6-4fb6-9d8d-83d58f8e9a9f', 'Spożywcze', 'Cukierki', 7000
);

INSERT INTO Towary (ID_towaru, Nazwa_kategorii, Nazwa_towaru, Wartosc_towaru) VALUES (
    'f82175e3-cf3b-4289-8825-149ecc4a879e', 'Przemysłowe', 'Grzebienie', 3000
);

INSERT INTO Towary (ID_towaru, Nazwa_kategorii, Nazwa_towaru, Wartosc_towaru) VALUES (
    'ded5f8d0-a59a-415e-890b-aaf39124e616', 'Surowce', 'Stal', 10000
);

INSERT INTO Towary (ID_towaru, Nazwa_kategorii, Nazwa_towaru, Wartosc_towaru) VALUES (
    'd9a7eedf-d7d0-4f43-9930-557e1a2e08a5', 'Szczególnie niebezpieczne', 'Amunicja NATO centralnego zapłonu 5.56', 15000
);

INSERT INTO Towary (ID_towaru, Nazwa_kategorii, Nazwa_towaru, Wartosc_towaru) VALUES (
    '74bf247b-43dd-46dc-b8d2-c79055fc7079', 'Szczególnie niebezpieczne', 'Fajerwerki', 25000
);

INSERT INTO Towary (ID_towaru, Nazwa_kategorii, Nazwa_towaru, Wartosc_towaru) VALUES (
    '2d18843e-15aa-4650-ad2c-376ef694fadd', 'Surowce', 'Złoto', 200000
);

INSERT INTO Towary (ID_towaru, Nazwa_kategorii, Nazwa_towaru, Wartosc_towaru) VALUES (
    'e6021457-3b77-4ccf-b3e4-232aa4b4fa11', 'Energetyczne', 'Paliwo PB 95', 34000
);

INSERT INTO Towary (ID_towaru, Nazwa_kategorii, Nazwa_towaru, Wartosc_towaru) VALUES (
    'd23c3cd6-de84-4e72-b123-b4401e7da23b', 'Energetyczne', 'Węgiel kamienny/Antracyt', 69000
);

-- Inserting values into clients table

INSERT INTO Klienci VALUES ('ae6a1a30-1f68-4e27-b5b3-053d47822497', 'Marian', 'Jostak', '48123456789', 'marian@email.com', 'Kielce', '34-098', 'Pogodna');

INSERT INTO Klienci VALUES ('2c8a1815-2f69-4a95-9e66-3407ddb2c29e', 'Barbara', 'Jostak', '69123456789', 'barbara@email.com', 'Kielce', '34-098', 'Pogodna');

INSERT INTO Klienci VALUES ('2fc0c828-5f83-445f-85e0-8597bb2e4af4', 'Jerzy', 'Żytowski', '48123456999', 'jurek@email.com', 'Warszawa', '14-118', 'Pochmurna');

INSERT INTO Klienci VALUES ('e8d414d9-aa31-4aa9-b891-43cd2d853ed1', 'Zofia', 'Kossak', '48225556789', 'zoe@email.com', 'Kraków', '55-598', 'Zamkowa');

INSERT INTO Klienci VALUES ('f08c1245-1048-4af0-bf62-9034106f07fd', 'Józef', 'Jóźwiak', '48123456789', 'jozek@email.com', 'Kielce', '74-778', 'Tęczy');

-- Inserting values to payments table

INSERT INTO Oplaty VALUES ('CIT', 69);

INSERT INTO Oplaty VALUES ('CIT-32', 169);

INSERT INTO Oplaty VALUES ('PCC', 13);

INSERT INTO Oplaty VALUES ('PCC-L', 16);

-- Inserting values to payments' documents table

INSERT INTO Dokumenty_celne (Numer_deklaracji, ID_klienta, Nazwa_oplaty, Kwota_cla) VALUES (
    'fd32ff10-c227-44ae-8799-f9c39ec406ca', '2fc0c828-5f83-445f-85e0-8597bb2e4af4', 'PCC', 2345
);

INSERT INTO Dokumenty_celne (Numer_deklaracji, ID_klienta, Nazwa_oplaty, Kwota_cla) VALUES (
    'ad474d6a-2906-4bfa-84b9-94d25fb4fba9', 'e8d414d9-aa31-4aa9-b891-43cd2d853ed1', 'CIT-32', 67123
);

INSERT INTO Dokumenty_celne (Numer_deklaracji, ID_klienta, Nazwa_oplaty, Kwota_cla) VALUES (
    'c32b5628-121a-495b-84df-39d3b9b05538', '2c8a1815-2f69-4a95-9e66-3407ddb2c29e', 'CIT-32', 44678
);

INSERT INTO Dokumenty_celne (Numer_deklaracji, ID_klienta, Nazwa_oplaty, Kwota_cla) VALUES (
    '406d5be9-f0eb-459d-b31a-3a8305231328', 'e8d414d9-aa31-4aa9-b891-43cd2d853ed1', 'PCC-L', 113455
);

INSERT INTO Dokumenty_celne (Numer_deklaracji, ID_klienta, Nazwa_oplaty, Kwota_cla) VALUES (
    '17f4d852-9950-4150-ba31-e2f6c8a35249', 'ae6a1a30-1f68-4e27-b5b3-053d47822497', 'PCC', 913452
);

-- Inserting values to packages table

INSERT INTO Przesylki VALUES ('c501f146-4a9c-4b6f-8568-034f98fc0261', 'ded5f8d0-a59a-415e-890b-aaf39124e616', 'fd32ff10-c227-44ae-8799-f9c39ec406ca', 69);

INSERT INTO Przesylki VALUES ('69bd4971-c53a-4e60-8617-97570db7da06', 'ded5f8d0-a59a-415e-890b-aaf39124e616', 'fd32ff10-c227-44ae-8799-f9c39ec406ca', 112);

INSERT INTO Przesylki VALUES ('8c730b99-01f5-4557-9cba-f002445a7e5d', '2012ed76-795b-4425-a32c-69be39917b70', '17f4d852-9950-4150-ba31-e2f6c8a35249', 6969);

INSERT INTO Przesylki VALUES ('5f18f073-f7d7-4a27-ad1b-24f3a27dad1d', '43ee2287-1ac6-4bda-b43c-9e215218f0e3', 'c32b5628-121a-495b-84df-39d3b9b05538', 6139);

INSERT INTO Przesylki VALUES ('49217518-bdf2-483d-82c1-c79c29d7f60a', 'd23c3cd6-de84-4e72-b123-b4401e7da23b', 'ad474d6a-2906-4bfa-84b9-94d25fb4fba9', 73221);

-- Inserting values to places table

INSERT INTO Miesca_przejsc VALUES ('f91f72c2-a246-4efb-b236-35d19c7c3f13', 'Medyka');

INSERT INTO Miesca_przejsc VALUES ('169d646c-5dcb-4aa9-b970-3c00412cb0f3', 'Kukuryki-Kozłowiczy');

-- Inserting values to custom officers' positions table

INSERT INTO Stanowiska VALUES ('Kierownik', 9000, 8);

INSERT INTO Stanowiska VALUES ('Szeregowy', 3000, 12);

INSERT INTO Stanowiska VALUES ('Starszy oficer', 5000, 8);

-- Inserting values to custom officers table

INSERT INTO Celnicy VALUES ('01234567890', 'Kierownik', 'Jan', 'Nowak');

INSERT INTO Celnicy VALUES ('01234567891', 'Szeregowy', 'Tomasz', 'Nowakowski');

INSERT INTO Celnicy VALUES ('01234567892', 'Szeregowy', 'Andrzej', 'Miszewski');

INSERT INTO Celnicy VALUES ('01234567893', 'Szeregowy', 'Paweł', 'Głuch');

INSERT INTO Celnicy VALUES ('01234567894', 'Starszy oficer', 'Rafał', 'Kłopotek');

-- Inserting values to border crosings table

INSERT INTO Przejscia_graniczne (Numer_przesylki, ID_miejsca, PESEL) VALUES (
    'c501f146-4a9c-4b6f-8568-034f98fc0261', 'f91f72c2-a246-4efb-b236-35d19c7c3f13', '01234567891'
);

INSERT INTO Przejscia_graniczne (Numer_przesylki, ID_miejsca, PESEL) VALUES (
    'c501f146-4a9c-4b6f-8568-034f98fc0261', 'f91f72c2-a246-4efb-b236-35d19c7c3f13', '01234567891'
);

INSERT INTO Przejscia_graniczne (Numer_przesylki, ID_miejsca, PESEL) VALUES (
    'c501f146-4a9c-4b6f-8568-034f98fc0261', 'f91f72c2-a246-4efb-b236-35d19c7c3f13', '01234567891'
);

INSERT INTO Przejscia_graniczne (Numer_przesylki, ID_miejsca, PESEL) VALUES (
    '69bd4971-c53a-4e60-8617-97570db7da06', 'f91f72c2-a246-4efb-b236-35d19c7c3f13', '01234567891'
);

INSERT INTO Przejscia_graniczne (Numer_przesylki, ID_miejsca, PESEL) VALUES (
    '69bd4971-c53a-4e60-8617-97570db7da06', 'f91f72c2-a246-4efb-b236-35d19c7c3f13', '01234567894'
);

INSERT INTO Przejscia_graniczne (Numer_przesylki, ID_miejsca, PESEL) VALUES (
    '8c730b99-01f5-4557-9cba-f002445a7e5d', '169d646c-5dcb-4aa9-b970-3c00412cb0f3', '01234567890'
);

INSERT INTO Przejscia_graniczne (Numer_przesylki, ID_miejsca, PESEL) VALUES (
    '5f18f073-f7d7-4a27-ad1b-24f3a27dad1d', 'f91f72c2-a246-4efb-b236-35d19c7c3f13', '01234567890'
);

INSERT INTO Przejscia_graniczne (Numer_przesylki, ID_miejsca, PESEL) VALUES (
    '5f18f073-f7d7-4a27-ad1b-24f3a27dad1d', '169d646c-5dcb-4aa9-b970-3c00412cb0f3', '01234567892'
);

INSERT INTO Przejscia_graniczne (Numer_przesylki, ID_miejsca, PESEL) VALUES (
    '5f18f073-f7d7-4a27-ad1b-24f3a27dad1d', '169d646c-5dcb-4aa9-b970-3c00412cb0f3', '01234567891'
);

-- Insert values to controls table

INSERT INTO Kontrole (PESEL, Numer_przesylki, Uwagi) VALUES (
    '01234567894', 'c501f146-4a9c-4b6f-8568-034f98fc0261', 'Kontrola przesyłki przebiegła pomyślnie.'
);

INSERT INTO Kontrole (PESEL, Numer_przesylki, Status_kontroli, Uwagi) VALUES (
    '01234567894', '49217518-bdf2-483d-82c1-c79c29d7f60a', 0, 'Kontrola przesyłki przebiegła błędnie.'
);

INSERT INTO Kontrole (PESEL, Numer_przesylki, Uwagi) VALUES (
    '01234567894', '8c730b99-01f5-4557-9cba-f002445a7e5d', 'Kontrola przesyłki przebiegła pomyślnie.'
);

INSERT INTO Kontrole (PESEL, Numer_przesylki, Uwagi) VALUES (
    '01234567894', 'c501f146-4a9c-4b6f-8568-034f98fc0261', 'Kontrola przesyłki przebiegła pomyślnie.'
);

INSERT INTO Kontrole (PESEL, Numer_przesylki, Uwagi) VALUES (
    '01234567894', '5f18f073-f7d7-4a27-ad1b-24f3a27dad1d', 'Kontrola przesyłki przebiegła pomyślnie.'
);