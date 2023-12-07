-- !!! Run this script before creating tables !!!

-- Function to check if given date is grater than other date
CREATE FUNCTION CheckDocumentStatus (
    @documentNumber UNIQUEIDENTIFIER
)
RETURNS BIT
AS
BEGIN
    DECLARE @result BIT
    IF EXISTS (SELECT 1 FROM Dokumenty_celne WHERE Numer_deklaracji = @documentNumber AND Status_deklaracji = 0)
        SET @result = 0
    ELSE
        SET @result = 1
    RETURN @result
END;