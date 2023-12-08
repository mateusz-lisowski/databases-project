------------ Insert valid records to the tables ------------


-- Insert documents with false status check
INSERT INTO Dokumenty_celne (Numer_deklaracji, ID_klienta, Nazwa_oplaty, Kwota_cla, Status_deklaracji) 
VALUES 
    ('e10f9128-a9ac-4ce3-b920-6cec16a09fb6', 'ae6a1a30-1f68-4e27-b5b3-053d47822497', 'PCC', 23145, 0),
    ('6b19020b-02cf-4ca8-8e4c-295530a0828c', 'ae6a1a30-1f68-4e27-b5b3-053d47822497', 'PCC', 245, 1);


-- Insert values which will create error to packages table
INSERT INTO Przesylki (Numer_przesylki, ID_towaru, Numer_deklaracji, Waga)
VALUES
    ('f5a737d2-3975-4c6f-b97a-66bd5f934878', '43ee2287-1ac6-4bda-b43c-9e215218f0e3', '6b19020b-02cf-4ca8-8e4c-295530a0828c', 69010);


-- Insert special values to controls table
INSERT INTO Kontrole (PESEL, Numer_przesylki, Status_kontroli, Uwagi) 
VALUES
    ('70050556789', 'f5a737d2-3975-4c6f-b97a-66bd5f934878', 0, 'Kontrola wykazała braki');


------------ Try to insert invalid records to the tables ------------


-- Insert values which will create error to packages table
INSERT INTO Przesylki (Numer_przesylki, ID_towaru, Numer_deklaracji, Waga)
VALUES
    ('fdf35601-c99f-4017-8a27-a506e51f002b', '43ee2287-1ac6-4bda-b43c-9e215218f0e3', 'e10f9128-a9ac-4ce3-b920-6cec16a09fb6', 6900);


-- Insert values which will create error to borders crossings table
INSERT INTO Przejscia_graniczne (Numer_przesylki, ID_miejsca, PESEL) 
VALUES
    ('f5a737d2-3975-4c6f-b97a-66bd5f934878', '169d646c-5dcb-4aa9-b970-3c00412cb0f3', '95060667890');
    