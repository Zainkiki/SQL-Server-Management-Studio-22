--USE BikeStores
--GO

---- Opgave 6

--SELECT * FROM sales.customers
--ORDER BY first_name;

--SET IDENTITY_INSERT sales.staffs ON;  
--IF NOT EXISTS (SELECT * FROM sales.staffs WHERE staff_id = '11')
--BEGIN
--INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(11,'Loki','Hamthis','loki.hamthis@bikes.shop','(831) 535-5544',1,2,7);
--END 
--SET IDENTITY_INSERT sales.staffs OFF;

--UPDATE sales.customers SET street = 'sde' WHERE customer_id = 600;
--SELECT * FROM sales.customers WHERE customer_id = 600;

--BACKUP DATABASE	BikeStores
--TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\BigDogZ.bak';

--DELETE FROM sales.orders WHERE customer_id = '10';
--SELECT * FROM sales.customers WHERE first_name = 'Pamelia' and last_name = 'Newman';
--SELECT * FROM sales.orders WHERE customer_id = '10';

--USE MASTER
--GO
--ALTER DATABASE BikeStores SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

--RESTORE DATABASE BikeStores 
--	FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\BigDogZ.bak'
--	WITH REPLACE;
--ALTER DATABASE BikeStores SET MULTI_USER;
---- END Opgave 6

---- Opgave 8
--USE AdventureWorks2019;
--GO
--GRANT EXECUTE ON SCHEMA::HumanResources
--    TO bsAdmin;

--GRANT SELECT ON OBJECT::HumanResources.vEmployee
--    TO bsAdmin;

--GRANT SELECT ON OBJECT::HumanResources.vEmployeeDepartment
--    TO bsAdmin;

--GRANT EXECUTE on OBJECT::HumanResources.uspUpdateEmployeeHireInfo
--    TO AWLZain;

----END Opgave 8

---- Opgave 9
--USE FlatTextImport
--GO

--DROP TABLE IF EXISTS TestBulkInsert;
--GO

--CREATE TABLE TestBulkInsert(
--    country_id INT,
--    country_name NVARCHAR(50),
--    country_code NVARCHAR(50)
--);
--GO

--BULK INSERT TestBulkInsert
--FROM 'C:\Users\temp\Desktop\FlatText.txt'
--WITH (
--    CODEPAGE = '65001',
--    FIELDTERMINATOR = '|',
--    ROWTERMINATOR = '\n', 
--    FIRSTROW = 2            
--);
---- END Opgave 9

---- Opgave 10 
--USE BikeStores
--GO
--SELECT * FROM sales.customers;

---- END Opgave 10

----Opgave 12
--USE BikeStores;
--GO

--SELECT * FROM sales.customers
--ORDER BY first_name ASC;

--SELECT production.products.product_name,
--       production.brands.brand_name,
--       production.categories.category_name
--FROM production.products
--JOIN production.brands
--ON production.products.brand_id = production.brands.brand_id
--JOIN production.categories
--ON production.products.category_id = production.categories.category_id
--ORDER BY production.products.product_name ASC;


--SELECT sales.orders.order_id,
--       sales.customers.first_name,
--       sales.customers.last_name
--FROM sales.orders
--JOIN sales.customers
--ON sales.orders.customer_id = sales.customers.customer_id
--ORDER BY sales.orders.order_date DESC;

---- END Opgave 12

---- Opgave 17
--CREATE PROCEDURE IndsaetKundeMedRollback
--    @Navn NVARCHAR(100),
--    @Email NVARCHAR(100),
--    @By NVARCHAR(50)
--AS
--BEGIN
--    BEGIN TRY

--        BEGIN TRANSACTION;

--        INSERT INTO -- what ever I chose here fx selling.kunder or what ever but Im not gonna do it for now 
--        VALUES (@Navn, @Email, @By); -- what to insert

--        COMMIT TRANSACTION;

--    END TRY

--    BEGIN CATCH

--        ROLLBACK TRANSACTION;

--        PRINT 'Der opstod en fejl. Ændringen er blevet fortrudt.';

--    END CATCH
--END;
--GO
---- END Opgave 17