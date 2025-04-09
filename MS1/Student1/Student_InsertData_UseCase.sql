
-- Customer 1001 buys Sissi DVD Box (ItemID 101)
INSERT INTO Customer_Buys_Item (ItemID, CustomerID, Quantity, PurchasePrice)
SELECT 101, 1001, 1, Price FROM Item WHERE ItemID = 101;

-- Customer 1001 buys Österreich Kochbuch (ItemID 102)
INSERT INTO Customer_Buys_Item (ItemID, CustomerID, Quantity, PurchasePrice)
SELECT 102, 1001, 1, Price FROM Item WHERE ItemID = 102;

-- Update inventory quantities (warehouse shelves)
UPDATE Item_Stored_In_Shelf SET Quantity = Quantity - 1 
WHERE ItemID = 101 AND WarehouseID = 1 AND ShelfNr = 1;

UPDATE Item_Stored_In_Shelf SET Quantity = Quantity - 1 
WHERE ItemID = 102 AND WarehouseID = 2 AND ShelfNr = 1;

-- Update global item quantities
UPDATE Item SET Available_Quantity = Available_Quantity - 1 
WHERE ItemID = 101 AND Available_Quantity >= 1;

UPDATE Item SET Available_Quantity = Available_Quantity - 1 
WHERE ItemID = 102 AND Available_Quantity >= 1;
