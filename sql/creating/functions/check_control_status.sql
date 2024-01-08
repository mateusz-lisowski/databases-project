-- !!! Run this script before creating tables !!!

-- Function to check if given date is grater than other date
CREATE FUNCTION CheckControlStatus (
    @packageNumber UNIQUEIDENTIFIER
)
RETURNS BIT
AS
BEGIN
    DECLARE @result BIT
    IF EXISTS (SELECT 1 FROM Kontrole WHERE Numer_przesylki = @packageNumber AND Status_kontroli = 0)
        SET @result = 0
    ELSE
        SET @result = 1
    RETURN @result
END;