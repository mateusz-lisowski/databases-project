-- Close all connections to the database
-- alter database KomoraCelna set single_user with rollback immediate
ALTER DATABASE KomoraCelna SET SINGLE_USER WITH ROLLBACK IMMEDIATE

-- Deleting whole database
DROP DATABASE KomoraCelna;
