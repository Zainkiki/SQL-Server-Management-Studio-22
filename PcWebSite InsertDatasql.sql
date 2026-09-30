USE PcWebSite;
GO

INSERT INTO production.brands (Brand_name)
VALUES
('NVIDIA'),
('AMD'),
('Intel'),
('Corsair'),
('ASUS'),
('MSI'),
('Gigabyte'),
('Kingston'),
('G.Skill'),
('Seasonic'),
('be quiet!'),
('EVGA'),
('ASRock'),
('Samsung'),
('Crucial');
GO

INSERT INTO production.specifications (Specification_name, Unit)
VALUES
('VRAM', 'GB'),
('Clock Speed', 'MHz'),
('Memory', 'GB'),
('Wattage', 'W'),
('Chipset', NULL),
('Memory Type', NULL),
('Socket', NULL),
('Form Factor', NULL);
GO

INSERT INTO selling.postNr (PostNr, ByNavn)
VALUES
(1000,'København K'),
(1050,'København K'),
(2100,'København Ø'),
(2200,'København N'),
(2300,'København S'),
(2400,'København NV'),
(2500,'Valby'),
(2600,'Glostrup'),
(2700,'Brønshøj'),
(2800,'Kongens Lyngby'),
(2900,'Hellerup'),
(3000,'Helsingør'),
(3400,'Hillerød'),
(4000,'Roskilde'),
(4100,'Ringsted'),
(4200,'Slagelse'),
(4300,'Holbæk'),
(4600,'Køge'),
(4700,'Næstved'),
(4800,'Nykøbing Falster'),
(5000,'Odense'),
(5200,'Odense V'),
(5230,'Odense M'),
(5260,'Odense S'),
(5300,'Kerteminde'),
(5500,'Middelfart'),
(5600,'Faaborg'),
(5700,'Svendborg'),
(6000,'Kolding'),
(6100,'Haderslev'),
(6200,'Aabenraa'),
(6400,'Sønderborg'),
(6500,'Vojens'),
(6600,'Vejen'),
(6700,'Esbjerg'),
(6800,'Varde'),
(6900,'Skjern'),
(7000,'Fredericia'),
(7100,'Vejle'),
(7200,'Grindsted'),
(7300,'Jelling'),
(7400,'Herning'),
(7500,'Holstebro'),
(7600,'Struer'),
(7700,'Thisted'),
(7800,'Skive'),
(7900,'Nykøbing Mors'),
(8000,'Aarhus'),
(8200,'Aarhus N'),
(8210,'Aarhus V'),
(8240,'Risskov'),
(8260,'Viby J'),
(8270,'Højbjerg'),
(8300,'Odder'),
(8500,'Grenaa'),
(8600,'Silkeborg'),
(8700,'Horsens'),
(8800,'Viborg'),
(8900,'Randers'),
(9000,'Aalborg'),
(9200,'Aalborg SV'),
(9400,'Nørresundby'),
(9500,'Hobro'),
(9600,'Aars'),
(9800,'Hjørring'),
(9900,'Frederikshavn');
GO

INSERT INTO production.products
(Model_Info, Product_type, Brand_id, Price)
VALUES
('GeForce RTX 5090 32GB','GPU',1,19999.00),
('GeForce RTX 5080 16GB','GPU',1,14999.00),
('GeForce RTX 5070 Ti 16GB','GPU',1,9999.00),
('GeForce RTX 5070 12GB','GPU',1,7499.00),
('GeForce RTX 5060 Ti 16GB','GPU',1,5499.00),
('GeForce RTX 5060 8GB','GPU',1,3999.00),
('GeForce RTX 4090 24GB','GPU',1,15999.00),
('GeForce RTX 4080 SUPER 16GB','GPU',1,10999.00),
('GeForce RTX 4070 Ti SUPER 16GB','GPU',1,7499.00),
('GeForce RTX 4070 SUPER 12GB','GPU',1,5799.00),
('GeForce RTX 4060 Ti 8GB','GPU',1,3999.00),
('GeForce RTX 4060 8GB','GPU',1,3299.00),
('GeForce RTX 3090 Ti 24GB','GPU',1,12999.00),
('GeForce RTX 3090 24GB','GPU',1,9999.00),
('GeForce RTX 3080 Ti 12GB','GPU',1,8999.00),
('Radeon RX 8900 XTX 32GB','GPU',2,12999.00),
('Radeon RX 8800 XT 16GB','GPU',2,9499.00),
('Radeon RX 8700 XT 16GB','GPU',2,7499.00),
('Radeon RX 8600 XT 12GB','GPU',2,5499.00),
('Radeon RX 8500 8GB','GPU',2,3999.00),
('Radeon RX 7900 XTX 24GB','GPU',2,8499.00),
('Radeon RX 7900 XT 20GB','GPU',2,6999.00),
('Radeon RX 7800 XT 16GB','GPU',2,4999.00),
('Radeon RX 7700 XT 12GB','GPU',2,4199.00),
('Radeon RX 7600 XT 16GB','GPU',2,3299.00),
('Radeon RX 7600 8GB','GPU',2,2699.00),
('ROG Strix RTX 5090 32GB','GPU',5,22999.00),
('ROG Strix RTX 5080 16GB','GPU',5,16999.00),
('ROG Strix RTX 5070 Ti 16GB','GPU',5,11499.00),
('ROG Strix RTX 5070 12GB','GPU',5,8499.00),
('Gaming X Trio RTX 5090 32GB','GPU',6,22499.00),
('Gaming X Trio RTX 5080 16GB','GPU',6,16499.00),
('Gaming X Trio RTX 5070 Ti 16GB','GPU',6,10999.00),
('Gaming X RTX 5070 12GB','GPU',6,7999.00),
('AORUS RTX 5090 Master 32GB','GPU',7,21999.00),
('AORUS RTX 5080 Master 16GB','GPU',7,15999.00),
('AORUS RTX 5070 Ti Master 16GB','GPU',7,10999.00),
('AORUS RTX 5070 Elite 12GB','GPU',7,7999.00),
('EVGA RTX 4080 FTW3 16GB','GPU',12,11999.00),
('EVGA RTX 4070 FTW3 12GB','GPU',12,6999.00),
('ASRock RX 7900 XTX Taichi 24GB','GPU',13,9499.00),
('ASRock RX 7800 XT Steel Legend 16GB','GPU',13,5499.00),
('ASUS TUF RTX 4090 24GB','GPU',5,16999.00),
('ASUS TUF RTX 4080 SUPER 16GB','GPU',5,11499.00),
('MSI Suprim RTX 4090 24GB','GPU',6,17999.00),
('MSI Suprim RTX 4080 SUPER 16GB','GPU',6,12499.00),
('Gigabyte Gaming OC RTX 4090 24GB','GPU',7,17499.00),
('Gigabyte Gaming OC RTX 4080 SUPER 16GB','GPU',7,11999.00),
('Radeon RX 6950 XT 16GB','GPU',2,7499.00),
('GeForce RTX 3080 10GB','GPU',1,6999.00),
('RTX 5070 Ventus 12GB','GPU',6,7599.00),
('RTX 5060 Gaming OC 8GB','GPU',7,4199.00),
('RX 7900 GRE 16GB','GPU',2,5799.00),
('RX 7800 GRE 16GB','GPU',2,5199.00),
('RTX 4070 Ti 12GB','GPU',1,6799.00),
('RTX 4060 Ti 16GB','GPU',1,4499.00),
('RX 7700 12GB','GPU',2,3799.00),
('RX 7600 8GB Gaming','GPU',2,2899.00),
('RTX 3060 12GB','GPU',1,2999.00),
('RTX 3070 8GB','GPU',1,3999.00),
('RX 6700 XT 12GB','GPU',2,3499.00),
('RX 6800 XT 16GB','GPU',2,4599.00),
('RTX 2080 SUPER 8GB','GPU',1,2999.00),
('Core Ultra 9 285K','CPU',3,4999.00),
('Core Ultra 7 265K','CPU',3,3799.00),
('Core Ultra 5 245K','CPU',3,2899.00),
('Core Ultra 5 225F','CPU',3,1999.00),
('Core i9-14900KS','CPU',3,4999.00),
('Core i9-14900K','CPU',3,4499.00),
('Core i7-14700K','CPU',3,3299.00),
('Core i5-14600K','CPU',3,2499.00),
('Core i5-14400F','CPU',3,1599.00),
('Core i3-14100F','CPU',3,999.00),
('Core i9-13900K','CPU',3,3999.00),
('Core i7-13700K','CPU',3,2999.00),
('Core i5-13600K','CPU',3,2299.00),
('Core i5-13400F','CPU',3,1499.00),
('Core i3-13100F','CPU',3,899.00),
('Core i9-12900K','CPU',3,3299.00),
('Core i7-12700K','CPU',3,2599.00),
('Core i5-12600K','CPU',3,1999.00),
('Core i5-12400F','CPU',3,1399.00),
('Core i3-12100F','CPU',3,799.00),
('Ryzen 9 9950X','CPU',2,5499.00),
('Ryzen 9 9900X','CPU',2,3999.00),
('Ryzen 7 9700X','CPU',2,3299.00),
('Ryzen 5 9600X','CPU',2,2299.00),
('Ryzen 9 7950X3D','CPU',2,4999.00),
('Ryzen 9 7950X','CPU',2,4499.00),
('Ryzen 9 7900X','CPU',2,3299.00),
('Ryzen 7 7800X3D','CPU',2,2999.00),
('Ryzen 7 7700X','CPU',2,2499.00),
('Ryzen 7 7700','CPU',2,2199.00),
('Ryzen 5 7600X','CPU',2,1799.00),
('Ryzen 5 7600','CPU',2,1599.00),
('Ryzen 5 7500F','CPU',2,1399.00),
('Ryzen 7 5800X3D','CPU',2,2199.00),
('Ryzen 7 5800X','CPU',2,1799.00),
('Ryzen 5 5600X','CPU',2,1199.00),
('Ryzen 5 5600','CPU',2,999.00),
('Ryzen 5 5500','CPU',2,799.00),
('Core i9-11900K','CPU',3,1999.00),
('Core i7-11700K','CPU',3,1699.00),
('Core i5-11600K','CPU',3,1299.00),
('Core i5-11400F','CPU',3,999.00),
('Core i3-10100F','CPU',3,699.00),
('Ryzen 9 5900X','CPU',2,2499.00),
('Ryzen 7 5700X','CPU',2,1499.00),
('Ryzen 5 3600','CPU',2,899.00),
('Core i5-10400F','CPU',3,899.00),
('Core i7-10700K','CPU',3,1499.00),
('Vengeance RGB 16GB DDR5','RAM',4,599.00),
('Vengeance RGB 32GB DDR5','RAM',4,999.00),
('Vengeance RGB 64GB DDR5','RAM',4,1799.00),
('Vengeance RGB 96GB DDR5','RAM',4,2599.00),
('Vengeance LPX 16GB DDR4','RAM',4,499.00),
('Vengeance LPX 32GB DDR4','RAM',4,799.00),
('Vengeance LPX 64GB DDR4','RAM',4,1399.00),
('Dominator Platinum 32GB','RAM',4,1399.00),
('Dominator Platinum 64GB','RAM',4,2399.00),
('Dominator Titanium 32GB','RAM',4,1599.00),
('Dominator Titanium 64GB','RAM',4,2899.00),
('FURY Beast 16GB DDR5','RAM',8,499.00),
('FURY Beast 32GB DDR5','RAM',8,899.00),
('FURY Beast 64GB DDR5','RAM',8,1599.00),
('FURY Beast 96GB DDR5','RAM',8,2399.00),
('FURY Beast 32GB DDR4','RAM',8,699.00),
('FURY Beast 64GB DDR4','RAM',8,1199.00),
('FURY Renegade 32GB DDR5','RAM',8,1099.00),
('FURY Renegade 64GB DDR5','RAM',8,1999.00),
('FURY Renegade 96GB DDR5','RAM',8,2999.00),
('Trident Z5 RGB 16GB','RAM',9,699.00),
('Trident Z5 RGB 32GB','RAM',9,1199.00),
('Trident Z5 RGB 64GB','RAM',9,2099.00),
('Trident Z5 RGB 96GB','RAM',9,2999.00),
('Trident Z5 Neo 32GB','RAM',9,1099.00),
('Trident Z5 Neo 64GB','RAM',9,1999.00),
('Trident Z5 Neo 96GB','RAM',9,2899.00),
('Ripjaws S5 16GB','RAM',9,549.00),
('Ripjaws S5 32GB','RAM',9,949.00),
('Ripjaws S5 64GB','RAM',9,1699.00),
('Ripjaws S5 96GB','RAM',9,2699.00),
('Crucial Pro 16GB DDR5','RAM',15,499.00),
('Crucial Pro 32GB DDR5','RAM',15,849.00),
('Crucial Pro 64GB DDR5','RAM',15,1499.00),
('Crucial Pro 96GB DDR5','RAM',15,2299.00),
('Crucial Ballistix 16GB','RAM',15,449.00),
('Crucial Ballistix 32GB','RAM',15,749.00),
('Samsung DDR5 16GB','RAM',14,599.00),
('Samsung DDR5 32GB','RAM',14,999.00),
('Samsung DDR5 64GB','RAM',14,1899.00),
('Samsung DDR5 96GB','RAM',14,2799.00),
('Kingston Fury 16GB','RAM',8,499.00),
('Kingston Fury 32GB','RAM',8,899.00),
('Kingston Fury 64GB','RAM',8,1599.00),
('Kingston Fury 96GB','RAM',8,2399.00),
('Corsair Vengeance 128GB','RAM',4,3499.00),
('G.Skill Trident 128GB','RAM',9,3999.00),
('Focus GX-650','PSU',10,899.00),
('Focus GX-750','PSU',10,999.00),
('Focus GX-850','PSU',10,1099.00),
('Focus GX-1000','PSU',10,1399.00),
('Focus GX-1200','PSU',10,1699.00),
('Focus PX-850','PSU',10,1399.00),
('Focus PX-1000','PSU',10,1699.00),
('Prime GX-850','PSU',10,1299.00),
('Prime GX-1000','PSU',10,1599.00),
('Prime TX-850','PSU',10,1999.00),
('Prime TX-1000','PSU',10,2199.00),
('Prime TX-1300','PSU',10,2699.00),
('Vertex GX-850','PSU',10,1299.00),
('Vertex GX-1000','PSU',10,1599.00),
('Vertex GX-1200','PSU',10,1899.00),
('Straight Power 12 750W','PSU',11,1199.00),
('Straight Power 12 850W','PSU',11,1299.00),
('Straight Power 12 1000W','PSU',11,1599.00),
('Straight Power 12 1200W','PSU',11,1899.00),
('Straight Power 12 1500W','PSU',11,2499.00),
('Pure Power 12 M 650W','PSU',11,899.00),
('Pure Power 12 M 750W','PSU',11,999.00),
('Pure Power 12 M 850W','PSU',11,1199.00),
('Pure Power 12 M 1000W','PSU',11,1499.00),
('Pure Power 12 M 1200W','PSU',11,1799.00),
('Dark Power 13 750W','PSU',11,1599.00),
('Dark Power 13 850W','PSU',11,1799.00),
('Dark Power 13 1000W','PSU',11,2199.00),
('Dark Power Pro 13 1300W','PSU',11,2499.00),
('Dark Power Pro 13 1600W','PSU',11,2999.00),
('RM650x','PSU',4,899.00),
('RM750x','PSU',4,999.00),
('RM850x','PSU',4,1199.00),
('RM1000x','PSU',4,1499.00),
('RM1200x','PSU',4,1799.00),
('RM750e','PSU',4,899.00),
('RM850e','PSU',4,1099.00),
('RM1000e','PSU',4,1399.00),
('RM850x Shift','PSU',4,1399.00),
('RM1000x Shift','PSU',4,1699.00),
('HX850i','PSU',4,1699.00),
('HX1000i','PSU',4,1899.00),
('HX1200i','PSU',4,2299.00),
('HX1500i','PSU',4,2799.00),
('SF750','PSU',4,1399.00),
('SF1000L','PSU',4,1799.00),
('EVGA SuperNOVA 850 G6','PSU',12,1199.00),
('EVGA SuperNOVA 1000 G6','PSU',12,1499.00),
('EVGA SuperNOVA 1300 G+','PSU',12,2199.00),
('Seasonic Vertex PX-1200','PSU',10,1999.00),
('ROG Maximus Z890 Hero','Motherboard',5,4999.00),
('ROG Strix Z890-E Gaming','Motherboard',5,3499.00),
('ROG Strix Z890-F Gaming','Motherboard',5,2999.00),
('ROG Strix Z890-A Gaming','Motherboard',5,2899.00),
('ROG Strix B850-F Gaming','Motherboard',5,2499.00),
('ROG Strix B850-A Gaming','Motherboard',5,2399.00),
('ROG Crosshair X870E Hero','Motherboard',5,4999.00),
('ROG Strix X870E-E Gaming','Motherboard',5,3699.00),
('ROG Strix X870-F Gaming','Motherboard',5,2999.00),
('ROG Strix B650E-E Gaming','Motherboard',5,2599.00),
('MAG Z890 Tomahawk','Motherboard',6,2699.00),
('MAG Z890 Gaming Plus','Motherboard',6,2399.00),
('MAG Z790 Tomahawk','Motherboard',6,2199.00),
('MAG Z790 Mortar','Motherboard',6,2299.00),
('MAG B850 Tomahawk','Motherboard',6,2199.00),
('MAG B650 Tomahawk','Motherboard',6,1899.00),
('MAG B650 Mortar','Motherboard',6,1999.00),
('MPG Z890 Carbon WiFi','Motherboard',6,3799.00),
('MPG Z790 Carbon WiFi','Motherboard',6,3199.00),
('MPG X870E Carbon WiFi','Motherboard',6,3499.00),
('AORUS Z890 Master','Motherboard',7,3999.00),
('AORUS Z890 Elite','Motherboard',7,2999.00),
('AORUS Z890 Pro','Motherboard',7,3299.00),
('AORUS Z790 Master','Motherboard',7,3499.00),
('AORUS Z790 Elite AX','Motherboard',7,2399.00),
('AORUS X870E Master','Motherboard',7,3999.00),
('AORUS X870 Elite','Motherboard',7,2999.00),
('B850 AORUS Elite AX','Motherboard',7,1999.00),
('B650 AORUS Elite AX','Motherboard',7,1699.00),
('B650 AORUS Pro AX','Motherboard',7,2299.00),
('ASRock Z890 Taichi','Motherboard',13,3999.00),
('ASRock Z890 Steel Legend','Motherboard',13,2699.00),
('ASRock Z790 Steel Legend','Motherboard',13,2399.00),
('ASRock Z790 Pro RS','Motherboard',13,1999.00),
('ASRock B850 Steel Legend','Motherboard',13,2199.00),
('ASRock B650 Steel Legend','Motherboard',13,1799.00),
('ASRock B650E Steel Legend','Motherboard',13,2299.00),
('ASRock B760 Steel Legend','Motherboard',13,1699.00),
('ASRock X870E Steel Legend','Motherboard',13,2999.00),
('ASRock X670E Steel Legend','Motherboard',13,2799.00),
('ASUS TUF Gaming Z890-Pro','Motherboard',5,2899.00),
('ASUS TUF Gaming B850-Plus','Motherboard',5,2299.00),
('MSI PRO Z890-A','Motherboard',6,2199.00),
('MSI PRO B850-P','Motherboard',6,1799.00),
('Gigabyte Z890 Gaming X','Motherboard',7,2399.00),
('Gigabyte B850 Gaming X','Motherboard',7,1899.00),
('ASRock B650M Pro RS','Motherboard',13,1499.00),
('ASRock B650M-HDV/M.2','Motherboard',13,1299.00);
GO

INSERT INTO production.productSpecifications
(Product_id, Specification_id, Specification_value)
SELECT
    Product_id,
    1,
    CASE
        WHEN Product_id % 10 IN (0,1) THEN '8'
        WHEN Product_id % 10 IN (2,3,4) THEN '12'
        WHEN Product_id % 10 IN (5,6,7,8) THEN '16'
        ELSE '24'
    END
FROM production.products
WHERE Product_type = 'GPU';

INSERT INTO production.productSpecifications
(Product_id, Specification_id, Specification_value)
SELECT
    Product_id,
    2,
    CASE
        WHEN Product_id % 10 IN (0,1) THEN '3200'
        WHEN Product_id % 10 IN (2,3) THEN '3500'
        WHEN Product_id % 10 IN (4,5,6) THEN '3800'
        ELSE '4200'
    END
FROM production.products
WHERE Product_type = 'CPU';

INSERT INTO production.productSpecifications
(Product_id, Specification_id, Specification_value)
SELECT
    Product_id,
    3,
    CASE
        WHEN Product_id % 10 IN (0,1) THEN '16'
        WHEN Product_id % 10 IN (2,3,4) THEN '32'
        WHEN Product_id % 10 IN (5,6,7) THEN '64'
        ELSE '96'
    END
FROM production.products
WHERE Product_type = 'RAM';

INSERT INTO production.productSpecifications
(Product_id, Specification_id, Specification_value)
SELECT
    Product_id,
    4,
    CASE
        WHEN Product_id % 10 = 0 THEN '650'
        WHEN Product_id % 10 = 1 THEN '750'
        WHEN Product_id % 10 IN (2,3,4) THEN '850'
        WHEN Product_id % 10 IN (5,6) THEN '1000'
        WHEN Product_id % 10 IN (7,8) THEN '1200'
        ELSE '1500'
    END
FROM production.products
WHERE Product_type = 'PSU';

INSERT INTO production.productSpecifications
(Product_id, Specification_id, Specification_value)
SELECT
    Product_id,
    5,
    CASE
        WHEN Model_Info LIKE '%Z890%' THEN 'Z890'
        WHEN Model_Info LIKE '%B850%' THEN 'B850'
        WHEN Model_Info LIKE '%X870%' THEN 'X870'
        WHEN Model_Info LIKE '%Z790%' THEN 'Z790'
        WHEN Model_Info LIKE '%B650%' THEN 'B650'
        WHEN Model_Info LIKE '%X670%' THEN 'X670'
        WHEN Model_Info LIKE '%B760%' THEN 'B760'
        ELSE 'B650'
    END
FROM production.products
WHERE Product_type = 'Motherboard';
GO

INSERT INTO selling.kunder
(First_name, Last_name, Phone, Email, Gade, PostNr)
SELECT
    FirstNames.FirstName,
    LastNames.LastName,
    20000000 + n,
    LOWER(FirstNames.FirstName + '.' + LastNames.LastName + CAST(n AS VARCHAR(10)) + '@email.dk'),
    CASE n % 12
        WHEN 0 THEN 'Norregade '
        WHEN 1 THEN 'Vestergade '
        WHEN 2 THEN 'Ostergade '
        WHEN 3 THEN 'Sondergade '
        WHEN 4 THEN 'Parkvej '
        WHEN 5 THEN 'Skovvej '
        WHEN 6 THEN 'Stationsvej '
        WHEN 7 THEN 'Bakkevej '
        WHEN 8 THEN 'Engvej '
        WHEN 9 THEN 'Birkevej '
        WHEN 10 THEN 'Havnevej '
        ELSE 'Industrivej '
    END + CAST((n % 90) + 1 AS VARCHAR(3)),
    PostCodes.PostNr
FROM
(
    SELECT TOP (500)
        ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects a
    CROSS JOIN sys.objects b
) Numbers
CROSS APPLY
(
    SELECT CASE n % 20
        WHEN 0 THEN 'Anders'
        WHEN 1 THEN 'Mikkel'
        WHEN 2 THEN 'Frederik'
        WHEN 3 THEN 'Emil'
        WHEN 4 THEN 'Oliver'
        WHEN 5 THEN 'William'
        WHEN 6 THEN 'Noah'
        WHEN 7 THEN 'Lucas'
        WHEN 8 THEN 'Malthe'
        WHEN 9 THEN 'Oscar'
        WHEN 10 THEN 'Victor'
        WHEN 11 THEN 'Alexander'
        WHEN 12 THEN 'Magnus'
        WHEN 13 THEN 'Elias'
        WHEN 14 THEN 'Alfred'
        WHEN 15 THEN 'Carl'
        WHEN 16 THEN 'August'
        WHEN 17 THEN 'Valdemar'
        WHEN 18 THEN 'Arthur'
        ELSE 'Benjamin'
    END AS FirstName
) FirstNames
CROSS APPLY
(
    SELECT CASE n % 20
        WHEN 0 THEN 'Jensen'
        WHEN 1 THEN 'Nielsen'
        WHEN 2 THEN 'Hansen'
        WHEN 3 THEN 'Pedersen'
        WHEN 4 THEN 'Andersen'
        WHEN 5 THEN 'Christensen'
        WHEN 6 THEN 'Larsen'
        WHEN 7 THEN 'Sorensen'
        WHEN 8 THEN 'Rasmussen'
        WHEN 9 THEN 'Jorgensen'
        WHEN 10 THEN 'Madsen'
        WHEN 11 THEN 'Kristensen'
        WHEN 12 THEN 'Olsen'
        WHEN 13 THEN 'Thomsen'
        WHEN 14 THEN 'Poulsen'
        WHEN 15 THEN 'Johansen'
        WHEN 16 THEN 'Knudsen'
        WHEN 17 THEN 'Mortensen'
        WHEN 18 THEN 'Jakobsen'
        ELSE 'Lund'
    END AS LastName
) LastNames
CROSS APPLY
(
    SELECT CASE n % 20
        WHEN 0 THEN 5000
        WHEN 1 THEN 8000
        WHEN 2 THEN 2100
        WHEN 3 THEN 9000
        WHEN 4 THEN 6700
        WHEN 5 THEN 4000
        WHEN 6 THEN 5000
        WHEN 7 THEN 5700
        WHEN 8 THEN 6000
        WHEN 9 THEN 7000
        WHEN 10 THEN 7400
        WHEN 11 THEN 7500
        WHEN 12 THEN 7600
        WHEN 13 THEN 7700
        WHEN 14 THEN 7800
        WHEN 15 THEN 8000
        WHEN 16 THEN 8200
        WHEN 17 THEN 8500
        WHEN 18 THEN 8600
        ELSE 9000
    END AS PostNr
) PostCodes;
GO

INSERT INTO selling.saelger
(Virksomhedsnavn, CVR, Gade, PostNr)
VALUES
('Nordic PC ApS',12345678,'Industrivej 10',5000),
('TechHouse Danmark ApS',23456789,'Handvaerkervej 22',8000),
('GamingGear ApS',34567890,'Elektronikvej 7',2100),
('ComputerWorld ApS',45678901,'Erhvervsvej 15',9000),
('HardwareCenter ApS',56789012,'Teknikvej 31',6700),
('PC Eksperten ApS',67890123,'Datavej 4',5000),
('DigitalShop ApS',78901234,'Industrivej 44',8000),
('Pro Hardware ApS',89012345,'Computervej 19',9000),
('PowerPC ApS',11223344,'Industrivej 55',6700),
('MegaHardware ApS',22334455,'Teknikvej 42',8000),
('Danish Components ApS',33445566,'Datavej 16',2100),
('Elite Gaming ApS',44556677,'Gamingvej 8',5000),
('PC World Nordic ApS',55667788,'Computervej 29',9000),
('Future Hardware ApS',66778899,'Industrivej 73',8000),
('Tech Outlet ApS',77889911,'Erhvervsvej 38',6700),
('Digital Hardware ApS',88991122,'Elektronikvej 19',5000),
('Computer Depot ApS',99112233,'Lagervej 12',9000),
('Gaming Center ApS',10223344,'Gamingvej 31',8000),
('Hardware Hub ApS',21334455,'Teknikvej 55',2100),
('Nordic Components ApS',32445566,'Industrivej 91',5000);
GO

DECLARE @CustomerCount INT;
DECLARE @SellerCount INT;
DECLARE @ProductCount INT;

SELECT @CustomerCount = COUNT(*) FROM selling.kunder;
SELECT @SellerCount = COUNT(*) FROM selling.saelger;
SELECT @ProductCount = COUNT(*) FROM production.products;

DROP TABLE IF EXISTS #Customers;
DROP TABLE IF EXISTS #Sellers;

SELECT
    ROW_NUMBER() OVER (ORDER BY Customer_id) AS RowNumber,
    Customer_id
INTO #Customers
FROM selling.kunder;

SELECT
    ROW_NUMBER() OVER (ORDER BY Saelger_id) AS RowNumber,
    Saelger_id
INTO #Sellers
FROM selling.saelger;

INSERT INTO selling.buyOrders
(Saelger_id, Customer_id, Order_date, Order_status)
SELECT
    s.Saelger_id,
    c.Customer_id,
    DATEADD(
        DAY,
        -((n * 7) % 730),
        CAST(GETDATE() AS DATE)
    ),
    CASE
        WHEN n % 23 = 0 THEN 'Cancelled'
        WHEN n % 11 = 0 THEN 'Processing'
        WHEN n % 7 = 0 THEN 'Shipped'
        WHEN n % 5 = 0 THEN 'Pending'
        ELSE 'Delivered'
    END
FROM
(
    SELECT TOP (3000)
        ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects a
    CROSS JOIN sys.objects b
) Numbers
JOIN #Customers c
    ON c.RowNumber = ((Numbers.n - 1) % @CustomerCount) + 1
JOIN #Sellers s
    ON s.RowNumber = ((Numbers.n - 1) % @SellerCount) + 1;
GO

INSERT INTO selling.orderItems
(Orders_id, Product_id, Quantity, Unit_price)
SELECT
    o.Orders_id,
    p.Product_id,
    CASE
        WHEN o.Orders_id % 17 = 0 THEN 3
        WHEN o.Orders_id % 7 = 0 THEN 2
        ELSE 1
    END,
    p.Price
FROM selling.buyOrders o
JOIN production.products p
    ON p.Product_id =
       ((o.Orders_id * 7 - 1) % (SELECT COUNT(*) FROM production.products)) + 1;
GO

INSERT INTO selling.orderItems
(Orders_id, Product_id, Quantity, Unit_price)
SELECT
    o.Orders_id,
    p.Product_id,
    CASE
        WHEN o.Orders_id % 19 = 0 THEN 2
        ELSE 1
    END,
    p.Price
FROM selling.buyOrders o
JOIN production.products p
    ON p.Product_id =
       ((o.Orders_id * 11 - 1) % (SELECT COUNT(*) FROM production.products)) + 1
WHERE o.Orders_id % 4 <> 0;
GO

INSERT INTO selling.orderItems
(Orders_id, Product_id, Quantity, Unit_price)
SELECT
    o.Orders_id,
    p.Product_id,
    CASE
        WHEN o.Orders_id % 13 = 0 THEN 3
        ELSE 1
    END,
    p.Price
FROM selling.buyOrders o
JOIN production.products p
    ON p.Product_id =
       ((o.Orders_id * 17 - 1) % (SELECT COUNT(*) FROM production.products)) + 1
WHERE o.Orders_id % 2 = 0;
GO

INSERT INTO selling.orderItems
(Orders_id, Product_id, Quantity, Unit_price)
SELECT
    o.Orders_id,
    p.Product_id,
    CASE
        WHEN o.Orders_id % 29 = 0 THEN 2
        ELSE 1
    END,
    p.Price
FROM selling.buyOrders o
JOIN production.products p
    ON p.Product_id =
       ((o.Orders_id * 23 - 1) % (SELECT COUNT(*) FROM production.products)) + 1
WHERE o.Orders_id % 4 = 0;
GO
