INSERT INTO Seller(SellerID, Name, Description) VALUES (1, "Tor Books", "fantasy books");
INSERT INTO Seller(SellerID, Name, Description) VALUES (2, "EA Movies", "action movie dvds");
INSERT INTO Seller(SellerID, Name, Description) VALUES (3, "Wizards of the Coast", "D&D core rule books (any version), campaign modules, etc.");

INSERT INTO Item(ItemID, Name, Price, Rating, Description, Available_Quantity, SellerID) VALUES (1, "Way of the King", 19.99, 4.5, "Roshar is a world of stone and storms. [...]", 22, 1);
INSERT INTO Item(ItemID, Name, Price, Rating, Description, Available_Quantity, SellerID) VALUES (2, "Interstellar", 19.99, 4.7, "In the near future around the American Midwest, [...]", 77, 2);
INSERT INTO Item(ItemID, Name, Price, Rating, Description, Available_Quantity, SellerID) VALUES (3, "Dungeons & Dragons 2024 Player's Handbook", 44.99, 4.5, "This new and improved Player’s Handbook is the ultimate guide for fifth edition D&D players. [...]", 33, 3); 
INSERT INTO Item(ItemID, Name, Price, Rating, Description, Available_Quantity, SellerID) VALUES (4, "Words of Radiance", 19.99, 4.9, "Roshar is a world of stone and storms. [...]", 22, 1); 
INSERT INTO Item(ItemID, Name, Price, Rating, Description, Available_Quantity, SellerID) VALUES (5, "Oathbringer", 19.99, 4.6, "Roshar is a world of stone and storms. [...]", 0, 1); 
INSERT INTO Item(ItemID, Name, Price, Rating, Description, Available_Quantity, SellerID) VALUES (6, "Rythmn of War", 19.99, 4.8, "Roshar is a world of stone and storms. [...]", 0, 1); 
INSERT INTO Item(ItemID, Name, Price, Rating, Description, Available_Quantity, SellerID) VALUES (7, "Wind and Truth", 19.99, 4.4, "Roshar is a world of stone and storms. [...]", 0, 1); 

INSERT INTO Book(ItemID, Author, ISBN, Page_Count) VALUES (1, "Brandon Sanderson", "9780765326355", 1007);
INSERT INTO DvD(ItemID, Duration, Genre, Age_Restriction) VALUES (2, 169, "Science Fiction", 13);
INSERT INTO Book(ItemID, Author, ISBN, Page_Count) VALUES (3, "Wizards of the Coast", "9780786969517", 192);
INSERT INTO Book(ItemID, Author, ISBN, Page_Count) VALUES (4, "Brandon Sanderson", "9780765326356", 1057); 
INSERT INTO Book(ItemID, Author, ISBN, Page_Count) VALUES (5, "Brandon Sanderson", "9780765326357", 1107); 
INSERT INTO Book(ItemID, Author, ISBN, Page_Count) VALUES (6, "Brandon Sanderson", "9780765326358", 1207); 
INSERT INTO Book(ItemID, Author, ISBN, Page_Count) VALUES (7, "Brandon Sanderson", "9780765326359", 1307); 

INSERT INTO Address(AddressID, Street, City, ZIP_Code) VALUES (1, "Waeringer Straße 25", "Wien", 1090);
INSERT INTO Address(AddressID, Street, City, ZIP_Code) VALUES (2, "Hauptstraße 2", "St. Pölten", 3100);
INSERT INTO Address(AddressID, Street, City, ZIP_Code) VALUES (3, "Bahnhofstraße 22", "Linz", 4020);

INSERT INTO Warehouse(WarehouseID, Name, Contact_Tel, AddressID) VALUES (1, "Wien09 Storage", "01/123 45 67", 1);
INSERT INTO Warehouse(WarehouseID, Name, Contact_Tel, AddressID) VALUES (2, "St. Pölten, Mühlviertel Storage", "02742/123 45 67", 2);
INSERT INTO Warehouse(WarehouseID, Name, Contact_Tel, AddressID) VALUES (3, "Linz Oberösterreich Storage", "0732/123 45 67", 3);

INSERT INTO Shelf(WarehouseID, ShelfNr, _Section, Capacity) VALUES (1, 1, 1, 2000); 
INSERT INTO Shelf(WarehouseID, ShelfNr, _Section, Capacity) VALUES (2, 2, 2, 4000); 
INSERT INTO Shelf(WarehouseID, ShelfNr, _Section, Capacity) VALUES (3, 3, 2, 5000); 

INSERT INTO Item_Stored_In_Shelf(ItemID, WarehouseID, ShelfNr, Quantity) VALUES (1, 1, 1, 22); 
INSERT INTO Item_Stored_In_Shelf(ItemID, WarehouseID, ShelfNr, Quantity) VALUES (2, 3, 3, 77); 
INSERT INTO Item_Stored_In_Shelf(ItemID, WarehouseID, ShelfNr, Quantity) VALUES (3, 2, 2, 33); 
INSERT INTO Item_Stored_In_Shelf(ItemID, WarehouseID, ShelfNr, Quantity) VALUES (4, 1, 1, 22); 
