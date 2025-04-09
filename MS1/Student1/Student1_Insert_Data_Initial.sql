INSERT INTO Seller (SellerID, Name, Description) VALUES
(1, 'Thalia Wien', 'Austria\'s largest bookstore chain'),
(2, 'Morawa', 'Viennese bookseller since 1828'),
(3, 'Hoanzl', 'Austrian media distributor'),
(4, 'Libro', 'Austrian books and stationery'),
(5, 'Almdudler Shop', 'Official merchandise store');

INSERT INTO Address (AddressID, Street, City, ZIP_Code) VALUES
(1, 'Mariahilfer Straße 99', 'Wien', 1060),
(2, 'Herrengasse 4-6', 'Graz', 8010),
(3, 'Landstraße 45', 'Linz', 4020),
(4, 'Getreidegasse 9', 'Salzburg', 5020),
(5, 'Maria-Theresien-Straße 31', 'Innsbruck', 6020);

INSERT INTO Item (ItemID, Name, Price, Rating, Description, Available_Quantity, SellerID) VALUES
(101, 'Sissi DVD Box', 29, 5, 'Classic Austrian film trilogy', 50, 3),
(102, 'Österreich Kochbuch', 24, 4, 'Traditional Austrian recipes', 40, 1),
(103, 'Almdudler 6-Pack', 12, 5, 'Austrian herbal drink', 100, 5),
(104, 'Wien Stadtplan', 8, 4, 'Detailed Vienna map', 75, 4),
(105, 'Mozart: Sein Leben', 19, 4, 'Mozart biography', 30, 2);

INSERT INTO Book (ItemID, Author, ISBN, Page_Count) VALUES
(102, 'Sarah Wiener', '9783710602527', 240),
(104, 'Freytag & Berndt', '9783707910211', 64),
(105, 'Erich Schenk', '9783219112345', 320);

INSERT INTO DvD (ItemID, Duration, Genre, Age_Restriction) VALUES
(101, 285, 'Historical', 6),
(201, 98, 'Comedy', 12),
(202, 112, 'Drama', 12);

INSERT INTO Customer (CustomerID, Name, Phone_Number, AddressID) VALUES
(1001, 'Huber Anna', 06641, 1),
(1002, 'Bauer Thomas', 06642, 2),
(1003, 'Wieser Sabine', 06643, 3),
(1004, 'Eder Franz', 06645, 4),
(1005, 'Mair Petra', 06646, 5);

INSERT INTO Warehouse (WarehouseID, Name, Contact_Tel, AddressID) VALUES
(1, 'Wien Lager West', '+4312345678', 1),
(2, 'Graz Zentrum', '+316543210', 2),
(3, 'Linz Logistik', '+4373245612', 3),
(4, 'Salzburg Versand', '+4366223344', 4),
(5, 'Tirol Lager', '+4351256789', 5);

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
