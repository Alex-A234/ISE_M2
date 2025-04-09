-- This script inserts data into the database for a use case where a customer buys items from different warehouses.

SELECT * FROM Item;
SELECT * FROM Item_Stored_In_Shelf;

-- Insert data into Customer_Buys_Item table
INSERT INTO Customer_Buys_Item (ItemID, CustomerID, Quantity, PurchasePrice)
SELECT 101, 1001, 1, Price FROM Item WHERE ItemID = 101;

INSERT INTO Customer_Buys_Item (ItemID, CustomerID, Quantity, PurchasePrice)
SELECT 102, 1001, 1, Price FROM Item WHERE ItemID = 102;

-- Update the quantity in the Item_Stored_In_Shelf table
UPDATE Item_Stored_In_Shelf SET Quantity = Quantity - 1 
WHERE ItemID = 101 AND WarehouseID = 1 AND ShelfNr = 1;

UPDATE Item_Stored_In_Shelf SET Quantity = Quantity - 1 
WHERE ItemID = 102 AND WarehouseID = 2 AND ShelfNr = 1;

-- Update the available quantity in the Item table
UPDATE Item SET Available_Quantity = Available_Quantity - 1 
WHERE ItemID = 101 AND Available_Quantity >= 1;

UPDATE Item SET Available_Quantity = Available_Quantity - 1 
WHERE ItemID = 102 AND Available_Quantity >= 1;
