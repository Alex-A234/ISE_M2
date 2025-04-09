-- Check purchases with new columns
SELECT 
    c.Name AS Customer, 
    i.Name AS Item, 
    i.Description,
    cbi.Quantity,
    cbi.PurchasePrice,
    cbi.PurchaseDate
FROM Customer_Buys_Item cbi
JOIN Customer c ON cbi.CustomerID = c.CustomerID
JOIN Item i ON cbi.ItemID = i.ItemID
WHERE cbi.CustomerID = 1001;

-- Verify inventory with purchase context
SELECT 
    i.ItemID, 
    i.Name, 
    i.Available_Quantity AS Total_Available,
    iss.Quantity AS Shelf_Quantity,
    iss.WarehouseID,
    iss.ShelfNr
FROM Item i
JOIN Item_Stored_In_Shelf iss ON i.ItemID = iss.ItemID
WHERE i.ItemID IN (101, 102);