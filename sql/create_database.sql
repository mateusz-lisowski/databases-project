-- Create new database
CREATE DATABASE KomoraCelna;

-- Set our new database to be used
USE KomoraCelna ;

-- Function to check if given date is grater than other date
CREATE FUNCTION CheckDateGreaterThanInControl (
    @dateToCheck DATE
)
RETURNS BIT
AS
BEGIN
    DECLARE @result BIT
    IF EXISTS (SELECT 1 FROM Kontrole WHERE Data_kontroli <= @dateToCheck)
        SET @result = 0
    ELSE
        SET @result = 1
    RETURN @result
END;
