-- Inserting example data to categories table
INSERT INTO Kategorie_towarow (Nazwa_kategorii, Opis_kategorii)
VALUES 
    ('Spożywcze', 'Wszystkie towary, które mogą być konsumowane przez ludzi.'),
    ('Przemysłowe', 'Towary, które są wykorzystywane w celach przemysłowych.'),
    ('Surowce', 'Wszystkie towary, które są zużywane do produkcji różnych przedmiotów.'),
    ('Energetyczne', 'Towary wykorzystywane w celach energetycznych.'),
    ('Szczególnie niebezpieczne', 'Towary, które muszą byc traktowane ze szczególną ostrożnościa, takie jak materiały wybuchowe.'),
    ('Elektronika', 'Kategoria obejmująca elektroniczne produkty.'),
    ('Odzież', 'Kategoria zawierająca różne rodzaje odzieży.'),
    ('AGD', 'Kategoria sprzętu AGD, takiego jak lodówki, pralki, odkurzacze.'),
    ('Książki', 'Kategoria zawierająca różne gatunki książek.'),
    ('Pusta', 'Kategoria do usunięcia.'),
    ('Sport', 'Kategoria obejmująca produkty sportowe.');


-- Inserting example data to items table
INSERT INTO Towary (ID_towaru, Nazwa_kategorii, Nazwa_towaru, Wartosc_towaru) 
VALUES 
    ('43ee2287-1ac6-4bda-b43c-9e215218f0e3', 'Przemysłowe', 'Szczoteczki do zębów', 5000),
    ('2012ed76-795b-4425-a32c-69be39917b70', 'Spożywcze', 'Jabłka', 1000),
    ('1ace2ba7-f6f6-4fb6-9d8d-83d58f8e9a9f', 'Spożywcze', 'Cukierki', 7000),
    ('f82175e3-cf3b-4289-8825-149ecc4a879e', 'Przemysłowe', 'Grzebienie', 3000),
    ('ded5f8d0-a59a-415e-890b-aaf39124e616', 'Surowce', 'Stal', 10000),
    ('d9a7eedf-d7d0-4f43-9930-557e1a2e08a5', 'Szczególnie niebezpieczne', 'Amunicja NATO centralnego zapłonu 5.56', 15000),
    ('74bf247b-43dd-46dc-b8d2-c79055fc7079', 'Szczególnie niebezpieczne', 'Fajerwerki', 25000),
    ('2d18843e-15aa-4650-ad2c-376ef694fadd', 'Surowce', 'Złoto', 200000),
    ('e6021457-3b77-4ccf-b3e4-232aa4b4fa11', 'Energetyczne', 'Paliwo PB 95', 34000),
    ('d23c3cd6-de84-4e72-b123-b4401e7da23b', 'Energetyczne', 'Węgiel kamienny/Antracyt', 69000),
    ('69651949-3393-4fd4-91ba-162c22b9d9b5', 'Elektronika', 'Smartfon', 12445),
    ('74df34b6-63d5-4855-b8d1-5084e58fecf8', 'Odzież', 'Spodnie jeansowe', 678),
    ('19938841-3470-4d96-bc88-d6b08a72fdb6', 'AGD', 'Lodówka', 67811),
    ('f070c44b-cc7a-429d-b2ab-c0c33e1999b1', 'Książki', 'Władca Pierścieni', 169),
    ('6e19191b-4291-4dbc-90bf-be8d089af9ca', 'Sport', 'Rower', 169),
    ('b43b49a8-29ef-4654-8d43-c598d647b662', 'Elektronika', 'Tablet', 12445),
    ('7ab56c1e-3620-43a9-a134-d281296b9d04', 'Odzież', 'Kurtka puchowa', 678),
    ('40e9ffe0-63dc-44cb-94e5-12e5d7b1bcc6', 'AGD', 'Mikrofala', 67811),
    ('bd1a265c-3fe8-41e0-81b2-6039ac2c3e54', 'Książki', 'Hobbit', 169),
    ('5b69e49d-58a1-4e14-80e2-d524d9539f08', 'Sport', 'Rolki', 169);


-- Inserting values into clients table
INSERT INTO Klienci (ID_klienta, Imie, Nazwisko, Numer_telefonu, Email, Miasto, Kod_pocztowy, Ulica)
VALUES 
    ('ae6a1a30-1f68-4e27-b5b3-053d47822497', 'Marian', 'Jostak', '48123456789', 'marian@email.com', 'Kielce', '34-098', 'ul. Pogodna 1'),
    ('2c8a1815-2f69-4a95-9e66-3407ddb2c29e', 'Barbara', 'Jostak', '69123456789', 'barbara@email.com', 'Kielce', '34-098', 'ul. Pogodna 1'),
    ('2fc0c828-5f83-445f-85e0-8597bb2e4af4', 'Jerzy', 'Żytowski', '48123456999', 'jurek@email.com', 'Warszawa', '14-118', 'ul. Pochmurna 34'),
    ('e8d414d9-aa31-4aa9-b891-43cd2d853ed1', 'Zofia', 'Kossak', '48225556789', 'zoe@email.com', 'Kraków', '55-598', 'ul. Zamkowa 3/7'),
    ('f08c1245-1048-4af0-bf62-9034106f07fd', 'Józef', 'Jóźwiak', '48123456789', 'jozek@email.com', 'Kielce', '74-778', 'ul. Tęczy 9/6'),
    ('ba4d6f97-a800-4907-b433-0ff511385174', 'Jan', 'Kowalski', '123456789', 'jan@example.com', 'Warszawa', '00-001', 'Aleje Jerozolimskie 100'),
    ('0a4b660a-f94e-4ea3-bb7c-f3cc56713f85', 'Anna', 'Nowak', '987654321', 'anna@example.com', 'Kraków', '30-002', 'ul. Długa 5'),
    ('9e29088d-2eca-4058-8e9e-02d20677f3ef', 'Piotr', 'Wiśniewski', '666111222', 'piotr@example.com', 'Gdańsk', '80-003', 'ul. Sportowa 20'),
    ('6e210269-abc8-4e68-b4ce-56c9dffc37f3', 'Katarzyna', 'Lis', '555222333', 'katarzyna@example.com', 'Poznań', '60-004', 'ul. Kwiatowa 8'),
    ('12c2af47-3a63-4098-baea-80abee34b549', 'Marek', 'Zając', '111333555', 'marek@example.com', 'Wrocław', '50-005', 'ul. Krótka 15');


-- Inserting values to payments table
INSERT INTO Oplaty (Nazwa_oplaty, Kwota_oplaty)
VALUES 
    ('CIT', 69),
    ('CIT-32', 169),
    ('PCC', 13),
    ('PCC-L', 16),
    ('OC import', 500),
    ('OC składowanie', 100),
    ('OC przegląd', 50),
    ('OC formalności celne', 200),
    ('OC inspekcję', 150);


-- Inserting values to payments' documents table
INSERT INTO Dokumenty_celne (Numer_deklaracji, ID_klienta, Nazwa_oplaty, Kwota_cla) 
VALUES 
    ('7f4c83f4-b64f-4240-8f88-308633d2dbd9', 'ae6a1a30-1f68-4e27-b5b3-053d47822497', 'PCC', 2345),
    ('c32c19a7-b102-4d4a-9955-a2bdb363985e', '2c8a1815-2f69-4a95-9e66-3407ddb2c29e', 'CIT-32', 67123),
    ('619c7d5f-e14b-4e2a-87a0-4d538b25a815', '2fc0c828-5f83-445f-85e0-8597bb2e4af4', 'CIT-32', 44678),
    ('cd2fe06e-a9ab-47e8-9ee9-73807821f32d', 'e8d414d9-aa31-4aa9-b891-43cd2d853ed1', 'OC import', 113455),
    ('b0441998-e2f0-4f24-b17b-3e307642be94', 'f08c1245-1048-4af0-bf62-9034106f07fd', 'PCC-L', 113455),
    ('83e8abf1-8698-4706-aec3-ad1b2b9d2ca2', 'ba4d6f97-a800-4907-b433-0ff511385174', 'OC składowanie', 113455),
    ('18f74113-ee4e-4719-9535-2b9ca17771e7', '0a4b660a-f94e-4ea3-bb7c-f3cc56713f85', 'OC przegląd', 113455),
    ('ebb515f9-0522-4f2b-957b-a53ac1ca4fd2', '9e29088d-2eca-4058-8e9e-02d20677f3ef', 'OC przegląd', 113455),
    ('95378a82-3c8b-4c3f-bc5c-e38dcfd527b8', '6e210269-abc8-4e68-b4ce-56c9dffc37f3', 'OC inspekcję', 113455),
    ('2892cc48-4bf8-4860-bf9e-6955bc0ce557', '12c2af47-3a63-4098-baea-80abee34b549', 'OC formalności celne', 113455),
    ('f22cd577-bec3-4f00-ab5d-f3980defcee9', 'ae6a1a30-1f68-4e27-b5b3-053d47822497', 'PCC', 913452),
    ('f2cab599-a6c5-482b-a787-49687f122850', 'ae6a1a30-1f68-4e27-b5b3-053d47822497', 'PCC', 2345),
    ('171b6d92-74eb-4294-a6b1-b9d33cfccda8', '2c8a1815-2f69-4a95-9e66-3407ddb2c29e', 'CIT-32', 67123),
    ('058daa59-ecf1-4662-83cd-3257e2201f32', '2fc0c828-5f83-445f-85e0-8597bb2e4af4', 'CIT-32', 44678),
    ('039cccdd-2422-4a1f-bcf0-6818b97214d6', 'e8d414d9-aa31-4aa9-b891-43cd2d853ed1', 'OC import', 113455),
    ('46201993-59e9-4181-9a55-478a40de08d3', 'f08c1245-1048-4af0-bf62-9034106f07fd', 'PCC-L', 113455),
    ('e1f6f50c-12f4-4b9b-9d63-2177c2f15f84', 'ba4d6f97-a800-4907-b433-0ff511385174', 'OC składowanie', 113455),
    ('99e3eb26-2a72-4f7e-bbf4-c3bb11aaf8ca', '0a4b660a-f94e-4ea3-bb7c-f3cc56713f85', 'OC przegląd', 113455),
    ('f1de14b3-7d3c-4ae0-9cda-469a82c8e95a', '9e29088d-2eca-4058-8e9e-02d20677f3ef', 'OC przegląd', 113455),
    ('e3bba12d-4120-46ee-b9e0-8c03ba7bd44a', '6e210269-abc8-4e68-b4ce-56c9dffc37f3', 'OC inspekcję', 113455),
    ('cce666ca-9c47-42e7-b485-fb9be7b30a1d', '12c2af47-3a63-4098-baea-80abee34b549', 'OC formalności celne', 113455),
    ('cd0a07f6-2944-4ff8-88fb-347bcb9d9a0b', 'ae6a1a30-1f68-4e27-b5b3-053d47822497', 'PCC', 913452);


-- Inserting values with unchecked status to payments' documents table
INSERT INTO Dokumenty_celne (Numer_deklaracji, ID_klienta, Nazwa_oplaty, Kwota_cla, Status_deklaracji) 
VALUES 
    ('816f650b-c3bd-4d19-89f1-5c4bf2a7eeb7', '12c2af47-3a63-4098-baea-80abee34b549', 'OC przegląd', 69623, 0),
    ('ad9c7681-1054-45d0-92fd-56ee524d6898', 'ae6a1a30-1f68-4e27-b5b3-053d47822497', 'PCC', 6123, 0),
    ('a0bd832e-05ad-470b-8ddb-4f16a876ebec', '2c8a1815-2f69-4a95-9e66-3407ddb2c29e', 'CIT-32', 6623, 0);


-- Inserting values to packages table
INSERT INTO Przesylki (Numer_przesylki, ID_towaru, Numer_deklaracji, Waga)
VALUES
    ('4440c1ef-5f1a-424f-a681-4a78b6ef435d', '43ee2287-1ac6-4bda-b43c-9e215218f0e3', '7f4c83f4-b64f-4240-8f88-308633d2dbd9', 6900),
    ('a3919d5e-ea4b-49c3-ab9e-4767f6499f6c', '2012ed76-795b-4425-a32c-69be39917b70', 'c32c19a7-b102-4d4a-9955-a2bdb363985e', 112),
    ('8062f2fb-abbe-4cfa-9811-6bdc9ed2cbf5', '1ace2ba7-f6f6-4fb6-9d8d-83d58f8e9a9f', '619c7d5f-e14b-4e2a-87a0-4d538b25a815', 6969),
    ('8d0943f0-0f63-4e61-9b14-dcae9d0af44c', 'f82175e3-cf3b-4289-8825-149ecc4a879e', 'cd2fe06e-a9ab-47e8-9ee9-73807821f32d', 6139),
    ('4f6c969f-17fd-4d0a-b29f-36dbdd3d82cd', 'ded5f8d0-a59a-415e-890b-aaf39124e616', 'b0441998-e2f0-4f24-b17b-3e307642be94', 73221),
    ('356c14e2-123b-4c8a-af2e-beb3bd96d49c', 'd9a7eedf-d7d0-4f43-9930-557e1a2e08a5', '83e8abf1-8698-4706-aec3-ad1b2b9d2ca2', 6900),
    ('a947994b-4cb5-4040-a26c-f831b3d23bb4', '74bf247b-43dd-46dc-b8d2-c79055fc7079', '18f74113-ee4e-4719-9535-2b9ca17771e7', 112),
    ('aaa2cb49-6f02-4092-8444-57aac14498eb', '2d18843e-15aa-4650-ad2c-376ef694fadd', 'ebb515f9-0522-4f2b-957b-a53ac1ca4fd2', 63969),
    ('cf639078-8862-4663-a2e9-43a38a8e4d60', 'e6021457-3b77-4ccf-b3e4-232aa4b4fa11', '95378a82-3c8b-4c3f-bc5c-e38dcfd527b8', 6139),
    ('0d23f417-a2c9-45a0-b53d-d45f58a8a46d', 'd23c3cd6-de84-4e72-b123-b4401e7da23b', '2892cc48-4bf8-4860-bf9e-6955bc0ce557', 61339),
    ('605632fe-75e8-44c0-8925-366886744afe', '69651949-3393-4fd4-91ba-162c22b9d9b5', 'f22cd577-bec3-4f00-ab5d-f3980defcee9', 6139),
    ('8e81b8c3-3526-4c24-bf28-e678a3fded27', '74df34b6-63d5-4855-b8d1-5084e58fecf8', 'f2cab599-a6c5-482b-a787-49687f122850', 8613139),
    ('efd717e7-1427-47a3-ac0b-694a68b42691', '19938841-3470-4d96-bc88-d6b08a72fdb6', '171b6d92-74eb-4294-a6b1-b9d33cfccda8', 6139),
    ('984f9274-2272-48f7-8e6e-77b84199ea6d', 'f070c44b-cc7a-429d-b2ab-c0c33e1999b1', '058daa59-ecf1-4662-83cd-3257e2201f32', 6139),
    ('c9c72387-77bd-4405-b949-119e3b51489f', '6e19191b-4291-4dbc-90bf-be8d089af9ca', '039cccdd-2422-4a1f-bcf0-6818b97214d6', 786139),
    ('25b87ac3-9798-4919-a8aa-320af074d95b', 'b43b49a8-29ef-4654-8d43-c598d647b662', '46201993-59e9-4181-9a55-478a40de08d3', 56139),
    ('8cf9b182-f6b7-467a-a83f-232df1bedad5', '7ab56c1e-3620-43a9-a134-d281296b9d04', 'e1f6f50c-12f4-4b9b-9d63-2177c2f15f84', 6139),
    ('539ad1e6-32f8-47a5-ab0d-647cb92cc99a', '40e9ffe0-63dc-44cb-94e5-12e5d7b1bcc6', '99e3eb26-2a72-4f7e-bbf4-c3bb11aaf8ca', 64139),
    ('75640b7e-a495-4e3c-9c9a-fd988f8ff273', 'bd1a265c-3fe8-41e0-81b2-6039ac2c3e54', 'f1de14b3-7d3c-4ae0-9cda-469a82c8e95a', 65139),
    ('4af50f43-53f3-4186-bc50-7331b7953834', '5b69e49d-58a1-4e14-80e2-d524d9539f08', 'e3bba12d-4120-46ee-b9e0-8c03ba7bd44a', 6139),
    ('59263988-a9bd-4d02-ada1-019dc62a4ab5', '43ee2287-1ac6-4bda-b43c-9e215218f0e3', 'cce666ca-9c47-42e7-b485-fb9be7b30a1d', 6139),
    ('7208c35c-9a5d-4ba7-a71d-a039448f33e6', '43ee2287-1ac6-4bda-b43c-9e215218f0e3', 'cce666ca-9c47-42e7-b485-fb9be7b30a1d', 813901),
    ('0836edaa-6d7c-402c-a2ea-6610b4d830f2', '43ee2287-1ac6-4bda-b43c-9e215218f0e3', 'cce666ca-9c47-42e7-b485-fb9be7b30a1d', 613902),
    ('5c652482-2969-434d-9cb3-82a34e28830d', '5b69e49d-58a1-4e14-80e2-d524d9539f08', 'cd0a07f6-2944-4ff8-88fb-347bcb9d9a0b', 73221);

-- Inserting values to places table
INSERT INTO Miesca_przejsc (ID_miejsca, Nazwa_miejsca)
VALUES 
    ('169d646c-5dcb-4aa9-b970-3c00412cb0f3', 'Kukuryki-Kozłowiczy'),
    ('dca657a1-09f8-4ab0-9b7a-90195c09ca8d', 'Medyka-Korczowa'),
    ('66183a2e-cd41-451f-832e-84eb4fe58795', 'Dorohusk-Hrebenne'),
    ('dddc5769-8dfa-4990-9ebb-efe23ff8b88b', 'Zgorzelec-Görlitz'),
    ('3d65bd27-88e5-4a80-8532-549d99045ee9', 'Kuźnica Białostocka-Bruzgi'),
    ('1638a3fb-5f10-4af3-85e1-9fa82e0bb31d', 'Terespol-Brest'),
    ('5e916c38-f7bd-4e81-8095-0f9f4c87e80e', 'Grzechotki-Piesienica'),
    ('01245800-ae80-4e9d-a186-35b5f524f5a1', 'Kudowa-Słone'),
    ('dfdd88d7-94ce-4277-9c1b-800e423db5cf', 'Łysa Polana-Podhorodisko'),
    ('f0e3469a-13f3-4618-bb6f-6455b65a4779', 'Bobrowniki-Hohenwutzen'),
    ('b02e1781-dcd6-43b5-a3d7-64762483baa8', 'Cieszyn-Czeski Cieszyn');


-- Inserting values to custom officers' positions table
INSERT INTO Stanowiska (Nazwa_stanowiska, Wynagrodzenie, Ilosc_godzin_pracy)
VALUES 
    ('Inspektor celny', 6000, 8),
    ('Referent ds. deklaracji celnych', 4500, 16),
    ('Kontroler celny', 5500, 8),
    ('Egzaminator celny', 5000, 7),
    ('Analityk celny', 5800, 8),
    ('Specjalista ds. kontroli granicznej', 6200, 8),
    ('Inspektor kontroli celnej', 5700, 8),
    ('Doradca celny', 5300, 7),
    ('Asystent celny', 4800, 6),
    ('Pracownik ds. dokumentacji celnej', 5100, 7);


-- Inserting values to custom officers table
INSERT INTO Celnicy (PESEL, Nazwa_stanowiska, Imie_celnika, Nazwisko_celnika)
VALUES 
    ('91010112345', 'Inspektor celny', 'Adam', 'Kowalski'),
    ('85020223456', 'Referent ds. deklaracji celnych', 'Anna', 'Nowak'),
    ('80030334567', 'Kontroler celny', 'Piotr', 'Wiśniewski'),
    ('75040445678', 'Egzaminator celny', 'Monika', 'Wójcik'),
    ('70050556789', 'Analityk celny', 'Kamil', 'Lewandowski'),
    ('95060667890', 'Specjalista ds. kontroli granicznej', 'Magdalena', 'Kamińska'),
    ('96070778901', 'Inspektor kontroli celnej', 'Bartosz', 'Kozłowski'),
    ('97080889012', 'Doradca celny', 'Karolina', 'Jankowska'),
    ('98090990123', 'Asystent celny', 'Marcin', 'Wójcik'),
    ('99010101234', 'Pracownik ds. dokumentacji celnej', 'Patrycja', 'Zielińska'),
    ('92020212345', 'Inspektor celny', 'Jakub', 'Szymański'),
    ('88030323456', 'Referent ds. deklaracji celnych', 'Aleksandra', 'Dąbrowska'),
    ('83040434567', 'Kontroler celny', 'Oliwia', 'Witkowska'),
    ('78050545678', 'Egzaminator celny', 'Michał', 'Kaczmarek'),
    ('73060656789', 'Analityk celny', 'Kinga', 'Zając'),
    ('97070767890', 'Specjalista ds. kontroli granicznej', 'Grzegorz', 'Krawczyk'),
    ('98080878901', 'Inspektor kontroli celnej', 'Natalia', 'Piotrowska'),
    ('99090989012', 'Doradca celny', 'Damian', 'Grabowski'),
    ('92010190123', 'Asystent celny', 'Weronika', 'Pawlak'),
    ('99020201234', 'Pracownik ds. dokumentacji celnej', 'Łukasz', 'Michalski');


-- Inserting values to border crosings table
INSERT INTO Przejscia_graniczne (Numer_przesylki, ID_miejsca, PESEL) 
VALUES
    ('4440c1ef-5f1a-424f-a681-4a78b6ef435d', '169d646c-5dcb-4aa9-b970-3c00412cb0f3', '95060667890'),
    ('a3919d5e-ea4b-49c3-ab9e-4767f6499f6c', 'dca657a1-09f8-4ab0-9b7a-90195c09ca8d', '95060667890'),
    ('8062f2fb-abbe-4cfa-9811-6bdc9ed2cbf5', '66183a2e-cd41-451f-832e-84eb4fe58795', '95060667890'),
    ('8d0943f0-0f63-4e61-9b14-dcae9d0af44c', 'dddc5769-8dfa-4990-9ebb-efe23ff8b88b', '97070767890'),
    ('4f6c969f-17fd-4d0a-b29f-36dbdd3d82cd', '3d65bd27-88e5-4a80-8532-549d99045ee9', '97070767890'),
    ('356c14e2-123b-4c8a-af2e-beb3bd96d49c', '1638a3fb-5f10-4af3-85e1-9fa82e0bb31d', '80030334567'),
    ('a947994b-4cb5-4040-a26c-f831b3d23bb4', '5e916c38-f7bd-4e81-8095-0f9f4c87e80e', '80030334567'),
    ('aaa2cb49-6f02-4092-8444-57aac14498eb', '01245800-ae80-4e9d-a186-35b5f524f5a1', '80030334567'),
    ('cf639078-8862-4663-a2e9-43a38a8e4d60', 'dfdd88d7-94ce-4277-9c1b-800e423db5cf', '83040434567'),
    ('0d23f417-a2c9-45a0-b53d-d45f58a8a46d', 'f0e3469a-13f3-4618-bb6f-6455b65a4779', '83040434567'),
    ('605632fe-75e8-44c0-8925-366886744afe', 'b02e1781-dcd6-43b5-a3d7-64762483baa8', '95060667890'),
    ('8e81b8c3-3526-4c24-bf28-e678a3fded27', '169d646c-5dcb-4aa9-b970-3c00412cb0f3', '95060667890'),
    ('efd717e7-1427-47a3-ac0b-694a68b42691', 'dca657a1-09f8-4ab0-9b7a-90195c09ca8d', '95060667890'),
    ('984f9274-2272-48f7-8e6e-77b84199ea6d', '66183a2e-cd41-451f-832e-84eb4fe58795', '97070767890'),
    ('c9c72387-77bd-4405-b949-119e3b51489f', 'dddc5769-8dfa-4990-9ebb-efe23ff8b88b', '97070767890'),
    ('25b87ac3-9798-4919-a8aa-320af074d95b', '3d65bd27-88e5-4a80-8532-549d99045ee9', '80030334567'),
    ('8cf9b182-f6b7-467a-a83f-232df1bedad5', '1638a3fb-5f10-4af3-85e1-9fa82e0bb31d', '80030334567'),
    ('539ad1e6-32f8-47a5-ab0d-647cb92cc99a', '5e916c38-f7bd-4e81-8095-0f9f4c87e80e', '80030334567'),
    ('75640b7e-a495-4e3c-9c9a-fd988f8ff273', '01245800-ae80-4e9d-a186-35b5f524f5a1', '83040434567'),
    ('4af50f43-53f3-4186-bc50-7331b7953834', 'dfdd88d7-94ce-4277-9c1b-800e423db5cf', '83040434567'),
    ('59263988-a9bd-4d02-ada1-019dc62a4ab5', 'f0e3469a-13f3-4618-bb6f-6455b65a4779', '80030334567'),
    ('5c652482-2969-434d-9cb3-82a34e28830d', 'b02e1781-dcd6-43b5-a3d7-64762483baa8', '80030334567');
    

-- Insert values to controls table
INSERT INTO Kontrole (PESEL, Numer_przesylki, Uwagi) 
VALUES
    ('70050556789', '4440c1ef-5f1a-424f-a681-4a78b6ef435d', 'Kontrola przebiegła pomyślnie'),
    ('73060656789', 'a3919d5e-ea4b-49c3-ab9e-4767f6499f6c', 'Kontrola przebiegła pomyślnie'),
    ('73060656789', '8062f2fb-abbe-4cfa-9811-6bdc9ed2cbf5', 'Kontrola przebiegła pomyślnie'),
    ('70050556789', '8d0943f0-0f63-4e61-9b14-dcae9d0af44c', 'Kontrola przebiegła pomyślnie'),
    ('92010190123', '4f6c969f-17fd-4d0a-b29f-36dbdd3d82cd', 'Kontrola przebiegła pomyślnie'),
    ('70050556789', '356c14e2-123b-4c8a-af2e-beb3bd96d49c', 'Kontrola przebiegła pomyślnie'),
    ('92010190123', 'a947994b-4cb5-4040-a26c-f831b3d23bb4', 'Kontrola przebiegła pomyślnie'),
    ('73060656789', 'aaa2cb49-6f02-4092-8444-57aac14498eb', 'Kontrola przebiegła pomyślnie'),
    ('92010190123', 'cf639078-8862-4663-a2e9-43a38a8e4d60', 'Kontrola przebiegła pomyślnie'),
    ('73060656789', '0d23f417-a2c9-45a0-b53d-d45f58a8a46d', 'Kontrola przebiegła pomyślnie'),
    ('70050556789', '605632fe-75e8-44c0-8925-366886744afe', 'Kontrola przebiegła pomyślnie'),
    ('92010190123', '8e81b8c3-3526-4c24-bf28-e678a3fded27', 'Kontrola przebiegła pomyślnie'),
    ('70050556789', 'efd717e7-1427-47a3-ac0b-694a68b42691', 'Kontrola przebiegła pomyślnie'),
    ('73060656789', '984f9274-2272-48f7-8e6e-77b84199ea6d', 'Kontrola przebiegła pomyślnie'),
    ('92010190123', 'c9c72387-77bd-4405-b949-119e3b51489f', 'Kontrola przebiegła pomyślnie'),
    ('70050556789', '25b87ac3-9798-4919-a8aa-320af074d95b', 'Kontrola przebiegła pomyślnie'),
    ('70050556789', '8cf9b182-f6b7-467a-a83f-232df1bedad5', 'Kontrola przebiegła pomyślnie'),
    ('73060656789', '539ad1e6-32f8-47a5-ab0d-647cb92cc99a', 'Kontrola przebiegła pomyślnie'),
    ('70050556789', '75640b7e-a495-4e3c-9c9a-fd988f8ff273', 'Kontrola przebiegła pomyślnie'),
    ('70050556789', '4af50f43-53f3-4186-bc50-7331b7953834', 'Kontrola przebiegła pomyślnie'),
    ('92010190123', '59263988-a9bd-4d02-ada1-019dc62a4ab5', 'Kontrola przebiegła pomyślnie'),
    ('73060656789', '5c652482-2969-434d-9cb3-82a34e28830d', 'Kontrola przebiegła pomyślnie');


-- Insert values with controls which did not passed to controls table
INSERT INTO Kontrole (PESEL, Numer_przesylki, Status_kontroli, Uwagi) 
VALUES
    ('70050556789', '7208c35c-9a5d-4ba7-a71d-a039448f33e6', 0, 'Kontrola wykazała nieprawidłowaości'),
    ('73060656789', '0836edaa-6d7c-402c-a2ea-6610b4d830f2', 0, 'Kontrola wykazała nieprawidłowaości');