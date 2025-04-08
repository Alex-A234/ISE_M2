CREATE TABLE Seller (
	SellerID INT PRIMARY KEY,
	Name CHAR(200),
	Description TEXT(16384)
);

CREATE TABLE Item (
	ItemID INT PRIMARY KEY, Name CHAR(200),
	Price INT,
	Rating INT,
	Description TEXT(16384),
	Available_Quantity INT,
	SellerID INT,
	FOREIGN KEY (SellerID) REFERENCES Seller(SellerID)
);

CREATE TABLE DvD (
	ItemID INT PRIMARY KEY REFERENCES Item(ItemID)
	Duration INT,
	Genre CHAR(64),
	Age_Restiction INT
);

CREATE TABLE Book (
	ItemID INT PRIMARY KEY REFERENCES Item(ItemID),
	Author CHAR(64),
	ISBN CHAR(32),
	Page_Count INT
);

CREATE TABLE Address (
	AddressID INT PRIMARY KEY,
	Street VARCHAR(256),
	City CHAR(128),
	ZIP_Code INT
); 
	
CREATE TABLE Customer (
	CustomerID INT PRIMARY KEY,
	Name CHAR(64),
	Phone_Number INT,
	AddressID INT,
	FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);

CREATE TABLE Warehouse (
	WarehouseID INT PRIMARY KEY,
	Name CHAR(64),
	Contact_Tel CHAR(20),
	AddressID INT,
	FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);

CREATE TABLE Shelf (
	WarehouseID INT,
	ShelfNr INT,
	_Section INT,
	Capacity INT,
	PRIMARY Key(WarehouseID, ShelfNr) );
	FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID),

CREATE TABLE Item_Contains_Item (
	ItemBundleID INT,
	ItemElementID INT,
	PRIMARY Key(ItemBundleID, ItemElementID)
	FOREIGN Key (ItemBundleID) REFERENCES Item(ItemID),
	FOREIGN Key (ItemElementID) REFERENCES Item(ItemID),
);

CREATE TABLE Item_Stored_In_Shelf (
	ItemID INT,
	WarehouseID INT,
	ShelfNr INT,
	Quantity INT,
	PRIMARY Key(ItemID, WarehouseID, ShelfNr) );
	FOREIGN Key (ItemID) REFERENCES Item(ItemID),
	FOREIGN Key (WarehouseID, ShelfNr) REFERENCES Shelf(WarehouseID, ShelfNr),

CREATE TABLE Customer_Buys_Item (
	ItemID INT,
	CustomerID INT,
	FOREIGN Key (ItemID) REFERENCES Item(ItemID),
	FOREIGN Key (CustomerID) REFERENCES Customer(CustomerID),
	PRIMARY Key(ItemID, CustomerID)
);
