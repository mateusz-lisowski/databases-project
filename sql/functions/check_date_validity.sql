-- !!! Run this script before creating tables !!!

-- Function to check if given date is grater than other date
CREATE FUNCTION CheckDateGreaterThanInControl (
    @packageNumber UNIQUEIDENTIFIER,
    @dateToCheck DATE
)
RETURNS BIT
AS
BEGIN
    DECLARE @result BIT
    IF EXISTS (SELECT 1 FROM Kontrole WHERE Data_kontroli > @dateToCheck AND Numer_przesylki = @packageNumber)
        SET @result = 0
    ELSE
        SET @result = 1
    RETURN @result
END;