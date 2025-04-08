-- case 1:
-- adding an existing item to a shelf where it has never before been stored at.
INSERT INTO Item_Stored_In_Shelf(ItemID, WarehouseID, ShelfNr, Quantity) VALUES (4, 2, 2, 22);
-- also have to update the available quantity of the item for consistency.
UPDATE Item SET Available_Quantity = Available_Quantity+22 WHERE ItemID = 4 AND WarehouseID = 2 AND ShelfNr = 2;

-- case 2:
-- adding an existing item to a shelf where it has been stored at before, meaning we can't create a new entry but have to update an existing entry.
UPDATE Item_Stored_In_Shelf SET Quantity = Quantity+22 WHERE ItemID = 4 AND WarehouseID = 2 AND ShelfNr = 2;
-- also have to update the available quantity of the item for consistency.
UPDATE Item SET Available_Quantity = Available_Quantity+22 WHERE ItemID = 4 AND WarehouseID = 2 AND ShelfNr = 2;
