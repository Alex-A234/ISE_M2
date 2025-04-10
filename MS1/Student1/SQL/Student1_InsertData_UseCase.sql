-- This script inserts data into the database for a use case where a customer buys items from different warehouses.

-- Show items before Customer purchases items.
SELECT * FROM Item;
SELECT * FROM Item_Stored_In_Shelf;

-- Insert data into Purchase table (Customer purchases items)
INSERT INTO Purchase (ItemID, CustomerID, Quantity, PurchasePrice)
SELECT 101, 1001, 4, Price FROM Item WHERE ItemID = 101;

INSERT INTO Purchase (ItemID, CustomerID, Quantity, PurchasePrice)
SELECT 102, 1001, 3, Price FROM Item WHERE ItemID = 102;

INSERT INTO Purchase (ItemID, CustomerID, Quantity, PurchasePrice)
SELECT 103, 1003, 1, Price FROM Item WHERE ItemID = 103;

INSERT INTO Purchase (ItemID, CustomerID, Quantity, PurchasePrice)
SELECT 104, 1004, 5, Price FROM Item WHERE ItemID = 104;

INSERT INTO Purchase (ItemID, CustomerID, Quantity, PurchasePrice)
SELECT 105, 1005, 2, Price FROM Item WHERE ItemID = 105;

-- Update the quantity in the Item_Stored_In_Shelf table (After the purchase)
UPDATE Item_Stored_In_Shelf SET Quantity = Quantity - 4 
WHERE ItemID = 101 AND WarehouseID = 1 AND ShelfNr = 1;

UPDATE Item_Stored_In_Shelf SET Quantity = Quantity - 3 
WHERE ItemID = 102 AND WarehouseID = 2 AND ShelfNr = 1;

UPDATE Item_Stored_In_Shelf SET Quantity = Quantity - 1 
WHERE ItemID = 103 AND WarehouseID = 3 AND ShelfNr = 1;

UPDATE Item_Stored_In_Shelf SET Quantity = Quantity - 5 
WHERE ItemID = 104 AND WarehouseID = 4 AND ShelfNr = 1;

UPDATE Item_Stored_In_Shelf SET Quantity = Quantity - 2 
WHERE ItemID = 105 AND WarehouseID = 5 AND ShelfNr = 1;

-- Update the available quantity in the Item table
UPDATE Item SET Available_Quantity = Available_Quantity - 4 
WHERE ItemID = 101 AND Available_Quantity >= 4;

UPDATE Item SET Available_Quantity = Available_Quantity - 3 
WHERE ItemID = 102 AND Available_Quantity >= 3;

UPDATE Item SET Available_Quantity = Available_Quantity - 1 
WHERE ItemID = 103 AND Available_Quantity >= 1;

UPDATE Item SET Available_Quantity = Available_Quantity - 5 
WHERE ItemID = 104 AND Available_Quantity >= 5;

UPDATE Item SET Available_Quantity = Available_Quantity - 2 
WHERE ItemID = 105 AND Available_Quantity >= 2;

-- Check the updated data in the tables
SELECT * FROM Item;
SELECT * FROM Item_Stored_In_Shelf;
