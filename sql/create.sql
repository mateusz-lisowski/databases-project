-- Create table for categories of items
CREATE TABLE Kategorie_towarow (

    Nazwa_kategorii NVARCHAR(50) PRIMARY KEY 
        CHECK (LEN(Nazwa_kategorii) >= 3 AND LEN(Nazwa_kategorii) <= 50),

    Opis_kategorii NVARCHAR(200) 
        CHECK (LEN(Opis_kategorii) >= 10 AND LEN(Opis_kategorii) <= 200)

);


-- Create table for items
CREATE TABLE Towary (

    ID_towaru UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,

    Nazwa_kategorii NVARCHAR(50) REFERENCES Kategorie_towarow(Nazwa_kategorii),

    Nazwa_towaru NVARCHAR(50) 
        CHECK (LEN(Nazwa_towaru) >= 3 AND LEN(Nazwa_towaru) <= 50),

    Wartosc_towaru INT CHECK (Wartosc_towaru > 0),

    Data_przybycia DATE DEFAULT GETDATE()

);


-- Create table for clients
CREATE TABLE Klienci (

	ID_klienta UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,

	Imie NVARCHAR(50) 
        CHECK (LEN(Imie) >= 3 AND LEN(Imie) <= 50),

	Nazwisko NVARCHAR(50) 
        CHECK (LEN(Nazwisko) >= 3 AND LEN(Nazwisko) <= 50),

	Numer_telefonu NVARCHAR(11)
		CHECK (Numer_telefonu NOT LIKE '%[^0-9]%'),

	Email NVARCHAR(50)
		CHECK (LEN(Email) <= 50 AND Email LIKE '%@%'),

	Miasto NVARCHAR(50) 
        CHECK (LEN(Miasto) >= 3 AND LEN(Miasto) <= 50),

	Kod_pocztowy NVARCHAR(6) 
        CHECK (LEN(Kod_pocztowy) = 6 AND Kod_pocztowy LIKE '__-___'),

	Ulica NVARCHAR(50) 
        CHECK (LEN(Ulica) >= 3 AND LEN(Ulica) <= 50),

);


-- Create table for payments
CREATE TABLE Oplaty (
	
	Nazwa_oplaty NVARCHAR(50) PRIMARY KEY 
		CHECK (LEN(Nazwa_oplaty) >= 3 AND LEN(Nazwa_oplaty) <= 50),

	Kwota_oplaty INT CHECK (Kwota_oplaty > 0),

);


-- Create table for payments' documents
CREATE TABLE Dokumenty_celne (
	
	Numer_deklaracji UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
	
	ID_klienta UNIQUEIDENTIFIER REFERENCES Klienci(ID_klienta),

	Nazwa_oplaty NVARCHAR(50) REFERENCES Oplaty(Nazwa_oplaty),

	Data_wystawienia DATE DEFAULT GETDATE(),

	Kwota_cla INT CHECK (Kwota_cla > 0),

	Status_deklaracji BIT DEFAULT 0,

);


-- Create table for packages
CREATE TABLE Przesylki (
	
	Numer_przesylki UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,

	ID_towaru UNIQUEIDENTIFIER REFERENCES Towary(ID_towaru),

	Numer_deklaracji UNIQUEIDENTIFIER REFERENCES Dokumenty_celne(Numer_deklaracji),

	Waga INT CHECK (Waga > 0),
);


-- Create table for places
CREATE TABLE Miesca_przejsc (
	
	ID_miejsca UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,

	Nazwa_miejsca NVARCHAR(50)
		CHECK (LEN(Nazwa_miejsca) >= 3 AND LEN(Nazwa_miejsca) <= 50),

);


-- Create table for custom officers' positions
CREATE TABLE Stanowiska (
	
	Nazwa_stanowiska NVARCHAR(50) PRIMARY KEY 
		CHECK (LEN(Nazwa_stanowiska) >= 3 AND LEN(Nazwa_stanowiska) <= 50),

	Wynagrodzenie INT CHECK (Wynagrodzenie > 0),

	Ilosc_godzin_pracy INT CHECK (Ilosc_godzin_pracy <= 16 AND Ilosc_godzin_pracy >= 0),
	
);


-- Create table for custom officers
CREATE TABLE Celnicy (
	
	PESEL NVARCHAR(11) PRIMARY KEY
		CHECK (PESEL NOT LIKE '%[^0-9]%'),

	Nazwa_stanowiska NVARCHAR(50) REFERENCES Stanowiska(Nazwa_stanowiska),

	Imie_celnika NVARCHAR(50)
		CHECK (LEN(Imie_celnika) >= 3 AND LEN(Imie_celnika) <= 50),

	Nazwisko_celnika NVARCHAR(50)
		CHECK (LEN(Nazwisko_celnika) >= 3 AND LEN(Nazwisko_celnika) <= 50),

);


-- Create table for border crosings
CREATE TABLE Przejscia_graniczne (
	
	ID_przejscia UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,

	Numer_przesylki UNIQUEIDENTIFIER REFERENCES Przesylki(Numer_przesylki),

	ID_miejsca UNIQUEIDENTIFIER REFERENCES Miesca_przejsc(ID_miejsca),

	PESEL NVARCHAR(11) REFERENCES Celnicy(PESEL),

	Data_przejscia DATE DEFAULT GETDATE()
		CHECK (dbo.CheckDateGreaterThanInControl(Data_przejscia) = 1) 
);


-- Create table for controls
CREATE TABLE Kontrole (
	
	ID_kontroli UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,

	PESEL NVARCHAR(11) REFERENCES Celnicy(PESEL),

	Numer_przesylki UNIQUEIDENTIFIER REFERENCES Przesylki(Numer_przesylki),

	Data_kontroli DATE DEFAULT GETDATE(),

	Status_kontroli BIT DEFAULT 1,

	Uwagi NVARCHAR(200) 
        CHECK (LEN(Uwagi) >= 10 AND LEN(Uwagi) <= 200)

);