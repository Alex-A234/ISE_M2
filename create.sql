CREATE TABLE Seller (
	SellerID INT PRIMARY KEY,
	Name CHAR(200),
	Description VARCHAR(16384)
);

CREATE TABLE Item (
	ItemID INT PRIMARY KEY,
	Name CHAR(200),
	Price INT,
	Rating INT,
	Description VARCHAR(16384),
	Available_Quantity INT,
	FOREIGN KEY (SellerID) REFERENCES Seller(SellerID)
);

CREATE TABLE DvD (
	ItemID INT PRIMARY KEY REFERENCES Item(ItemID), --IS-A Item
	Duration INT,
	Genre CHAR(64),
	Age_Restiction INT
);

CREATE TABLE Book (
	ItemID INT PRIMARY KEY REFERENCES Item(ItemID), --IS-A Item
	Author CHAR(64),
	ISBN CHAR(32),
	Page_Count INT
);

CREATE TABLE Customer (
	CustomerID INT PRIMARY KEY,
	Name CHAR(64),
	Phone_Number INT,
	FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);

CREATE TABLE Address (
	AddressID INT PRIMARY KEY,
	Street CHAR(256),
	City CHAR(128),
	ZIP_Code INT
);

CREATE TABLE Warehouse (
	WarehouseID INT PRIMARY KEY,
	Name CHAR(64),
	Conact_Tel CHAR(20),
	FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);

CREATE TABLE Shelf (
	ShelfNr INT PRIMARY KEY,
	_Section INT,
	Capacity INT,
	FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID)
);

CREATE TABLE Item_Contains_Item (
	FOREIGN Key ItemBundleID REFERENCES Item(ItemID),
	FOREIGN Key ItemElementID REFERENCES Item(ItemID),
	PRIMARY Key(ItemBundleID, ItemElementID)
);

CREATE TABLE Item_Stored_In_Shelf (
	FOREIGN Key ItemID REFERENCES Item(ItemID),
	FOREIGN Key ShelfNr REFERENCES Shelf(ShelfNr),
	Quantity INT,
	PRIMARY Key(ItemID, ShelfNr)
);

CREATE TABLE Customer_Buys_Item (
	FOREIGN Key ItemID REFERENCES Item(ItemID),
	FOREIGN Key CustomerID REFERENCES Customer(CustomerID),
	PRIMARY Key(ItemID, CustomerID)
);

INSERT INTO Seller (1, "Steve", "sells stuff");
