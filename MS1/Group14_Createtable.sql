CREATE TABLE Seller (
    SellerID INT PRIMARY KEY,
    Name CHAR(200),
    Description TEXT(16384)
);

CREATE TABLE Item (
    ItemID INT PRIMARY KEY,
    Name CHAR(200),
    Price INT,
    Rating INT,
    Description TEXT(16384),
    Available_Quantity INT,
    SellerID INT,
    FOREIGN KEY (SellerID) REFERENCES Seller(SellerID)
);

CREATE TABLE DvD (
    ItemID INT PRIMARY KEY REFERENCES Item(ItemID),
    Duration INT,
    Genre CHAR(64),
    Age_Restriction INT
);

CREATE TABLE Book (
    ItemID INT PRIMARY KEY REFERENCES Item(ItemID),
    Author CHAR(64),
    ISBN CHAR(32),
    Page_Count INT
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name CHAR(64),
    Phone_Number CHAR(20),
    Street VARCHAR(256),
    City CHAR(128),
    ZIP_Code INT
);

CREATE TABLE Warehouse (
    WarehouseID INT PRIMARY KEY,
    Name CHAR(64),
    Contact_Tel CHAR(20),
    Street VARCHAR(256),
    City CHAR(128),
    ZIP_Code INT
);

CREATE TABLE Shelf (
    WarehouseID INT,
    ShelfNr INT,
    _Section INT,
    Capacity INT,
    PRIMARY KEY (WarehouseID, ShelfNr),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID)
);

CREATE TABLE Item_Contains_Item (
    ItemBundleID INT,
    ItemElementID INT,
    PRIMARY KEY (ItemBundleID, ItemElementID),
    FOREIGN KEY (ItemBundleID) REFERENCES Item(ItemID),
    FOREIGN KEY (ItemElementID) REFERENCES Item(ItemID)
);

CREATE TABLE Item_Stored_In_Shelf (
    ItemID INT,
    WarehouseID INT,
    ShelfNr INT,
    Quantity INT,
    PRIMARY KEY (ItemID, WarehouseID, ShelfNr),
    FOREIGN KEY (ItemID) REFERENCES Item(ItemID),
    FOREIGN KEY (WarehouseID, ShelfNr) REFERENCES Shelf(WarehouseID, ShelfNr)
);

CREATE TABLE Purchase (
    PurchaseID INT AUTO_INCREMENT PRIMARY KEY,
    ItemID INT,
    CustomerID INT,
    PurchaseDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Quantity INT NOT NULL DEFAULT 1,
    PurchasePrice INT NOT NULL,
    FOREIGN KEY (ItemID) REFERENCES Item(ItemID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);