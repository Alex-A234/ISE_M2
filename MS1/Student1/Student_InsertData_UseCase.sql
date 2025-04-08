
-- Customer 1001 (Huber Anna) buys the Sissi DVD Box (ItemID 101)
INSERT INTO Customer_Buys_Item (ItemID, CustomerID) VALUES (101, 1001);

-- Customer 1001 also buys the Österreich Kochbuch (ItemID 102)
INSERT INTO Customer_Buys_Item (ItemID, CustomerID) VALUES (102, 1001);

-- Update inventory quantities
UPDATE Item_Stored_In_Shelf SET Quantity = Quantity - 1 
WHERE ItemID = 101 AND WarehouseID = 1 AND ShelfNr = 1;

UPDATE Item_Stored_In_Shelf SET Quantity = Quantity - 1 
WHERE ItemID = 102 AND WarehouseID = 2 AND ShelfNr = 1;

-- Update the main item quantities
UPDATE Item SET Available_Quantity = Available_Quantity - 1 WHERE ItemID = 101;
UPDATE Item SET Available_Quantity = Available_Quantity - 1 WHERE ItemID = 102;
