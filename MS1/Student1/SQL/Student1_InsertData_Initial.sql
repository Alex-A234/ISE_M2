INSERT INTO Seller (SellerID, Name, Description) VALUES
(1, 'Thalia Wien', 'Austria''s largest bookstore chain'),
(2, 'Morawa', 'Viennese bookseller since 1828'),
(3, 'Hoanzl', 'Austrian media distributor'),
(4, 'Libro', 'Austrian books and stationery'),
(5, 'Almdudler Shop', 'Official merchandise store');

INSERT INTO Item (ItemID, Name, Price, Rating, Description, Available_Quantity, SellerID) VALUES
(101, 'Sissi DVD Box', 29.00, 5, 'Classic Austrian film trilogy', 50, 3),
(102, 'Österreich Kochbuch', 24.00, 4, 'Traditional Austrian recipes', 40, 1),
(103, 'Almdudler 6-Pack', 12.00, 5, 'Austrian herbal drink (6x330ml)', 100, 5),
(104, 'Wien Stadtplan', 8.00, 4, 'Detailed Vienna map (English/German)', 75, 4),
(105, 'Mozart: Sein Leben', 19.00, 4, 'Mozart biography (German edition)', 30, 2);

INSERT INTO Book (ItemID, Author, ISBN, Page_Count) VALUES
(102, 'Sarah Wiener', '978-3-7106-0252-7', 240),
(104, 'Freytag & Berndt', '978-3-7079-1021-1', 64),
(105, 'Erich Schenk', '978-3-219-11234-5', 320);

INSERT INTO DvD (ItemID, Duration, Genre, Age_Restriction) VALUES
(101, 285, 'Historical', 6),
(201, 98, 'Comedy', 12),
(202, 112, 'Drama', 12);

INSERT INTO Customer (CustomerID, Name, Phone_Number, Street, City, ZIP_Code) VALUES
(1001, 'Huber Anna', '436641123456', 'Mariahilfer Straße 99', 'Wien', '1060'),
(1002, 'Bauer Thomas', '436642123456', 'Herrengasse 4-6', 'Graz', '8010'),
(1003, 'Wieser Sabine', '436643123456', 'Landstraße 45', 'Linz', '4020'),
(1004, 'Eder Franz', '436645123456', 'Getreidegasse 9', 'Salzburg', '5020'),
(1005, 'Mair Petra', '436646123456', 'Maria-Theresien-Straße 31', 'Innsbruck', '6020');

INSERT INTO Warehouse (WarehouseID, Name, Contact_Tel, Street, City, ZIP_Code) VALUES
(1, 'Wien Lager West', '431234567890', 'Lagerhausstraße 1', 'Wien', '1100'),
(2, 'Graz Zentrum', '43316543210', 'Lagerstraße 5', 'Graz', '8010'),
(3, 'Linz Logistik', '43732456120', 'Industriezeile 10', 'Linz', '4030'),
(4, 'Salzburg Versand', '43662233440', 'Versandpark 3', 'Salzburg', '5020'),
(5, 'Tirol Lager', '43512567890', 'Lagerweg 8', 'Innsbruck', '6020');

INSERT INTO Shelf (WarehouseID, ShelfNr, _Section, Capacity) VALUES
(1, 1, 1, 500),
(2, 1, 2, 400),
(3, 1, 3, 600),
(4, 1, 1, 300),
(5, 1, 1, 450);

INSERT INTO Item_Stored_In_Shelf (ItemID, WarehouseID, ShelfNr, Quantity) VALUES
(101, 1, 1, 25),
(102, 2, 1, 30),
(103, 3, 1, 50),
(104, 4, 1, 40),
(105, 5, 1, 20);