-- Seed data for Production.Product so tutorials have rows to query.
-- The AdventureWorks scripts in this repo create the schema only; run this
-- afterwards against your AdventureWorks database, e.g.:
--   sqlcmd -S localhost -d AdventureWorks2022 -i AdventureWorks-seed-products.sql

SET IDENTITY_INSERT Production.Product ON;

INSERT INTO Production.Product
    (ProductID, Name, ProductNumber, MakeFlag, FinishedGoodsFlag, Color,
     SafetyStockLevel, ReorderPoint, StandardCost, ListPrice,
     DaysToManufacture, SellStartDate, rowguid, ModifiedDate)
VALUES
    (680, 'HL Road Frame - Black, 58', 'FR-R92B-58', 1, 1, 'Black', 500, 375, 1059.31, 1431.50, 1, '2008-04-30', NEWID(), GETDATE()),
    (706, 'HL Road Frame - Red, 58',   'FR-R92R-58', 1, 1, 'Red',   500, 375, 1059.31, 1431.50, 1, '2008-04-30', NEWID(), GETDATE()),
    (707, 'Sport-100 Helmet, Red',     'HL-U509-R',  0, 1, 'Red',     4,   3,   13.08,   34.99, 0, '2011-05-31', NEWID(), GETDATE()),
    (708, 'Sport-100 Helmet, Black',   'HL-U509',    0, 1, 'Black',   4,   3,   13.08,   34.99, 0, '2011-05-31', NEWID(), GETDATE()),
    (709, 'Mountain Bike Socks, M',    'SO-B909-M',  0, 1, 'White',   4,   3,    3.40,    9.50, 0, '2011-05-31', NEWID(), GETDATE()),
    (712, 'AWC Logo Cap',              'CA-1098',    0, 1, 'Multi',   4,   3,    6.92,    8.99, 0, '2011-05-31', NEWID(), GETDATE()),
    (771, 'Mountain-100 Silver, 38',   'BK-M82S-38', 1, 1, 'Silver',100,  75, 1912.15, 3399.99, 4, '2011-05-31', NEWID(), GETDATE()),
    (775, 'Mountain-100 Black, 38',    'BK-M82B-38', 1, 1, 'Black', 100,  75, 1898.09, 3374.99, 4, '2011-05-31', NEWID(), GETDATE()),
    (776, 'Mountain-100 Black, 42',    'BK-M82B-42', 1, 1, 'Black', 100,  75, 1898.09, 3374.99, 4, '2011-05-31', NEWID(), GETDATE()),
    (999, 'Road-750 Black, 52',        'BK-R19B-52', 1, 1, 'Black', 100,  75,  343.65,  539.99, 4, '2011-05-31', NEWID(), GETDATE());

SET IDENTITY_INSERT Production.Product OFF;

SELECT COUNT(*) AS ProductRows FROM Production.Product;
