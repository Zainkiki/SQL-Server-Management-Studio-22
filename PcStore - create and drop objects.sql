USE PcStore2;
GO

DROP VIEW IF EXISTS selling.OrderTotals;
DROP VIEW IF EXISTS selling.OrderHistory;
DROP VIEW IF EXISTS production.Product_List;
GO

DROP PROCEDURE IF EXISTS production.GetProductList;
GO

DROP TABLE IF EXISTS selling.orderItems;
DROP TABLE IF EXISTS selling.buyOrders;
DROP TABLE IF EXISTS selling.kunder;
DROP TABLE IF EXISTS selling.postNr;
DROP TABLE IF EXISTS selling.saelger;
DROP TABLE IF EXISTS production.productSpecifications;
DROP TABLE IF EXISTS production.specifications;
DROP TABLE IF EXISTS production.products;
DROP TABLE IF EXISTS production.brands;
GO

DROP SCHEMA IF EXISTS production;
DROP SCHEMA IF EXISTS selling;
GO

CREATE SCHEMA production;
GO

CREATE SCHEMA selling;
GO

CREATE TABLE selling.kunder (
    Customer_id INT IDENTITY(1,1) PRIMARY KEY,
    First_name VARCHAR(20) NOT NULL,
    Last_name VARCHAR(20) NOT NULL,
    Phone INT CHECK (Phone > 9999999 AND Phone < 100000000) NOT NULL,
    Email VARCHAR(75) NOT NULL,
    Gade VARCHAR(50) NOT NULL,
    PostNr INT CHECK (PostNr > 99 AND PostNr < 10000) NOT NULL
);
GO

CREATE TABLE selling.postNr (
    PostNr SMALLINT PRIMARY KEY,
    ByNavn NVARCHAR(75) NOT NULL
);
GO

CREATE TABLE selling.saelger (
    Saelger_id INT IDENTITY(1,1) PRIMARY KEY,
    Virksomhedsnavn VARCHAR(100) NOT NULL,
    CVR INT CHECK (CVR > 9999999 AND CVR < 100000000) NOT NULL,
    Gade VARCHAR(50) NOT NULL,
    PostNr INT CHECK (PostNr > 999 AND PostNr < 10000) NOT NULL
);
GO

CREATE TABLE selling.buyOrders (
    Orders_id INT IDENTITY(1,1) PRIMARY KEY,
    Saelger_id INT NOT NULL,
    Customer_id INT NOT NULL,
    Order_date DATE NOT NULL,
    Order_status VARCHAR(50) NOT NULL
        CHECK (Order_status IN ('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled')),
    FOREIGN KEY (Saelger_id)
        REFERENCES selling.saelger(Saelger_id),
    FOREIGN KEY (Customer_id)
        REFERENCES selling.kunder(Customer_id)
);
GO

CREATE TABLE production.brands (
    Brand_id INT IDENTITY(1,1) PRIMARY KEY,
    Brand_name VARCHAR(100) NOT NULL UNIQUE
);
GO

CREATE TABLE production.products (
    Product_id INT IDENTITY(1,1) PRIMARY KEY,
    Model_Info VARCHAR(100) NOT NULL,
    Product_type VARCHAR(30) NOT NULL,
    Brand_id INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0),
    FOREIGN KEY (Brand_id)
        REFERENCES production.brands(Brand_id)
);
GO

CREATE TABLE production.specifications (
    Specification_id INT IDENTITY(1,1) PRIMARY KEY,
    Specification_name VARCHAR(50) NOT NULL UNIQUE,
    Unit VARCHAR(20) NULL
);
GO

CREATE TABLE production.productSpecifications (
    ProductSpecification_id INT IDENTITY(1,1) PRIMARY KEY,
    Product_id INT NOT NULL,
    Specification_id INT NOT NULL,
    Specification_value VARCHAR(100) NOT NULL,
    FOREIGN KEY (Product_id)
        REFERENCES production.products(Product_id),
    FOREIGN KEY (Specification_id)
        REFERENCES production.specifications(Specification_id),
    UNIQUE (Product_id, Specification_id)
);
GO

CREATE TABLE selling.orderItems (
    OrderItem_id INT IDENTITY(1,1) PRIMARY KEY,
    Orders_id INT NOT NULL,
    Product_id INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    Unit_price DECIMAL(10,2) NOT NULL CHECK (Unit_price > 0),
    FOREIGN KEY (Orders_id)
        REFERENCES selling.buyOrders(Orders_id),
    FOREIGN KEY (Product_id)
        REFERENCES production.products(Product_id)
);
GO

CREATE VIEW production.Product_List AS
SELECT
    p.Product_id,
    p.Model_Info,
    p.Product_type,
    b.Brand_name,
    p.Price,
    s.Specification_name,
    ps.Specification_value,
    s.Unit
FROM production.products AS p
JOIN production.brands AS b
    ON p.Brand_id = b.Brand_id
LEFT JOIN production.productSpecifications AS ps
    ON p.Product_id = ps.Product_id
LEFT JOIN production.specifications AS s
    ON ps.Specification_id = s.Specification_id;
GO

CREATE PROCEDURE production.GetProductList
AS
BEGIN
    SELECT
        Product_id,
        Model_Info,
        Product_type,
        Brand_name,
        Price,
        Specification_name,
        Specification_value,
        Unit
    FROM production.Product_List
    ORDER BY
        Product_type ASC,
        Brand_name ASC,
        Model_Info ASC;
END;
GO

CREATE VIEW selling.OrderHistory AS
SELECT
    o.Orders_id,
    o.Order_date,
    o.Order_status,
    c.Customer_id,
    c.First_name,
    c.Last_name,
    s.Saelger_id,
    s.Virksomhedsnavn,
    oi.OrderItem_id,
    oi.Product_id,
    p.Model_Info,
    b.Brand_name,
    oi.Quantity,
    oi.Unit_price,
    oi.Quantity * oi.Unit_price AS Line_total
FROM selling.buyOrders AS o
JOIN selling.kunder AS c
    ON o.Customer_id = c.Customer_id
JOIN selling.saelger AS s
    ON o.Saelger_id = s.Saelger_id
JOIN selling.orderItems AS oi
    ON o.Orders_id = oi.Orders_id
JOIN production.products AS p
    ON oi.Product_id = p.Product_id
JOIN production.brands AS b
    ON p.Brand_id = b.Brand_id;
GO

CREATE VIEW selling.OrderTotals AS
SELECT
    o.Orders_id,
    o.Order_date,
    o.Order_status,
    c.Customer_id,
    c.First_name,
    c.Last_name,
    SUM(oi.Quantity * oi.Unit_price) AS Order_total
FROM selling.buyOrders AS o
JOIN selling.kunder AS c
    ON o.Customer_id = c.Customer_id
JOIN selling.orderItems AS oi
    ON o.Orders_id = oi.Orders_id
GROUP BY
    o.Orders_id,
    o.Order_date,
    o.Order_status,
    c.Customer_id,
    c.First_name,
    c.Last_name;
GO
