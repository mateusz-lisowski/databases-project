-- !!! In Microsoft SQL Server Management Studio you have to close old script which used this database and create new !!!

-- Close all connections to the database
ALTER DATABASE KomoraCelna SET SINGLE_USER WITH ROLLBACK IMMEDIATE

-- Deleting whole database
DROP DATABASE KomoraCelna;
